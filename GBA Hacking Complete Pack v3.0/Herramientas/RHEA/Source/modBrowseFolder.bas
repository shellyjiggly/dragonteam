Attribute VB_Name = "modBrowseFolder"
Option Explicit

'Constantes
Private Const BIF_RETURNONLYFSDIRS = &H1        'Uniquement des ripertoire
'Private Const BIF_DONTGOBELOWDOMAIN = &H2       'Domaine globale intredit
'Private Const BIF_STATUSTEXT = &H4              'Zone de saisie autorisie
'Private Const BIF_RETURNFSANCESTORS = &H8
'Private Const BIF_EDITBOX = &H10                'Zone de saisie autorisie
'Private Const BIF_VALIDATE = &H20               'insist on valid result (or CANCEL)
'Private Const BIF_BROWSEFORCOMPUTER = &H1000    'Uniquement des PCs.
'Private Const BIF_BROWSEFORPRINTER = &H2000     'Uniquement des imprimantes
'Private Const BIF_BROWSEINCLUDEFILES = &H4000   'Browsing for Everything

Private Const MAX_PATH = 260

'Types
Private Type T_BROWSEINFO
   hwndOwner      As Long
   pIDLRoot       As Long
   pszDisplayName As Long
   lpszTitle      As Long
   ulFlags        As Long
   lpfnCallback   As Long
   lParam         As Long
   iImage         As Long
End Type

Private Declare Function SHBrowseForFolder Lib "shell32" (lpbi As T_BROWSEINFO) As Long
Private Declare Function SHGetPathFromIDList Lib "shell32" (ByVal pidList As Long, ByVal lpBuffer As String) As Long
Private Declare Function lstrcat Lib "kernel32" Alias "lstrcatA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long

Public Function BrowseFolder(ByVal hwndOwner As Long, ByRef Titre As String) As String

    Dim lpIDList As Long
    Dim sBuffer As String
    Dim BrowseInfo As T_BROWSEINFO

    'Initialise l'affichage
    BrowseFolder = vbNullString
    With BrowseInfo
        .hwndOwner = hwndOwner
        .lpszTitle = lstrcat(Titre, "")
        .ulFlags = BIF_RETURNONLYFSDIRS
    End With

    'Affiche la boite de dialogue
    lpIDList = SHBrowseForFolder(BrowseInfo)

    'Ricuphre le ripertoire silectionni
    If (lpIDList) Then
        sBuffer = Space$(MAX_PATH)
        SHGetPathFromIDList lpIDList, sBuffer
        sBuffer = Left$(sBuffer, InStr(sBuffer, vbNullChar) - 1)
        BrowseFolder = sBuffer
    End If
End Function


