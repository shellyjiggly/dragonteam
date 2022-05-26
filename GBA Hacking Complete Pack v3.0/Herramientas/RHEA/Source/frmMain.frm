VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   Caption         =   "RHEA - ROM Header Editor Advance"
   ClientHeight    =   5610
   ClientLeft      =   60
   ClientTop       =   750
   ClientWidth     =   8280
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "frmMain.frx":000C
   ScaleHeight     =   374
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   552
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame3 
      Height          =   495
      Left            =   120
      TabIndex        =   20
      Top             =   5040
      Width           =   8055
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright © 2007 HackMew"
         Enabled         =   0   'False
         Height          =   195
         Left            =   3090
         TabIndex        =   21
         Tag             =   "1017"
         Top             =   195
         Width           =   2055
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "ROM Header Information"
      Height          =   3255
      Left            =   154
      TabIndex        =   10
      Tag             =   "1000"
      Top             =   1680
      Width           =   4935
      Begin VB.TextBox txtComplement 
         ForeColor       =   &H00808080&
         Height          =   285
         Left            =   1920
         Locked          =   -1  'True
         MaxLength       =   2
         TabIndex        =   8
         Top             =   2640
         Width           =   375
      End
      Begin VB.TextBox txtROMVersion 
         Height          =   285
         Left            =   1920
         MaxLength       =   2
         TabIndex        =   7
         Top             =   2280
         Width           =   375
      End
      Begin VB.TextBox txtDeviceType 
         Height          =   285
         Left            =   1920
         MaxLength       =   2
         TabIndex        =   6
         Top             =   1920
         Width           =   375
      End
      Begin VB.TextBox txtGameUnitCode 
         Height          =   285
         Left            =   1920
         MaxLength       =   2
         TabIndex        =   5
         Top             =   1560
         Width           =   375
      End
      Begin VB.ComboBox cboMakerCode 
         Height          =   315
         ItemData        =   "frmMain.frx":3FD1
         Left            =   1920
         List            =   "frmMain.frx":43CE
         TabIndex        =   4
         Top             =   1200
         Width           =   2775
      End
      Begin VB.TextBox txtGameCode 
         Height          =   285
         Left            =   1920
         MaxLength       =   4
         TabIndex        =   3
         Top             =   840
         Width           =   735
      End
      Begin VB.TextBox txtGameTitle 
         Height          =   285
         Left            =   1920
         MaxLength       =   12
         TabIndex        =   2
         Top             =   480
         Width           =   1695
      End
      Begin VB.PictureBox picGfx2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   400
         Left            =   2860
         ScaleHeight     =   27
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   81
         TabIndex        =   19
         Top             =   2040
         Width           =   1215
         Begin VB.CommandButton cmdSave 
            Caption         =   "Save"
            Enabled         =   0   'False
            Height          =   375
            Left            =   0
            TabIndex        =   22
            Tag             =   "1008"
            Top             =   0
            Width           =   1215
         End
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Complement"
         Height          =   195
         Left            =   160
         TabIndex        =   17
         Tag             =   "1007"
         Top             =   2640
         Width           =   870
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "ROM Version"
         Height          =   195
         Left            =   160
         TabIndex        =   16
         Tag             =   "1006"
         Top             =   2280
         Width           =   945
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Device Type"
         Height          =   195
         Left            =   160
         TabIndex        =   15
         Tag             =   "1005"
         Top             =   1920
         Width           =   915
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Main Unit Code"
         Height          =   195
         Left            =   160
         TabIndex        =   14
         Tag             =   "1004"
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Maker Code"
         Height          =   195
         Left            =   160
         TabIndex        =   13
         Tag             =   "1003"
         Top             =   1200
         Width           =   870
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Game Code"
         Height          =   195
         Left            =   160
         TabIndex        =   12
         Tag             =   "1002"
         Top             =   840
         Width           =   840
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Game Title"
         Height          =   195
         Left            =   160
         TabIndex        =   11
         Tag             =   "1001"
         Top             =   480
         Width           =   765
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "ROM Selection"
      Height          =   3255
      Left            =   5231
      TabIndex        =   9
      Tag             =   "1009"
      Top             =   1680
      Width           =   2895
      Begin VB.PictureBox picGfx1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   375
         Left            =   240
         ScaleHeight     =   25
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   161
         TabIndex        =   18
         Top             =   300
         Width           =   2415
         Begin VB.CommandButton cmdBrowse 
            Caption         =   "Browse ROM folder..."
            Height          =   375
            Left            =   0
            TabIndex        =   0
            Tag             =   "1010"
            Top             =   0
            Width           =   2415
         End
      End
      Begin VB.FileListBox File1 
         Height          =   2235
         Left            =   240
         Pattern         =   "*.gba;*.agb;*.bin"
         TabIndex        =   1
         Top             =   840
         Width           =   2415
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      HelpContextID   =   100
      Begin VB.Menu mnuBrowse 
         Caption         =   "Browse ROM folder..."
         HelpContextID   =   101
         Shortcut        =   ^B
      End
      Begin VB.Menu mnuSave 
         Caption         =   "Save"
         Enabled         =   0   'False
         HelpContextID   =   102
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
         HelpContextID   =   103
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      HelpContextID   =   104
      Begin VB.Menu mnuReadme 
         Caption         =   "Readme"
         HelpContextID   =   105
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuAbut 
         Caption         =   "About"
         HelpContextID   =   106
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const MakerList = "01,02,03,04,05,06,07,08,09,0A,0B,0C,0D,0E,0F,0G,0H,0J,0L,0N,0P,12,13,15,16,17,18,19,1A,1C,1D,1E,1F,1G,1J,1P,1Q,20,21,22,23,25,26,27,28,29,2A,2C,2E,2F,2G,2H,2J,2K,2L,2M,2N,2Q,30,31,32,34,35,36,37,38,39,3B,3C,3D,3E,3F,40,41,42,44,46,47,49,4B,4C,4D,4F,4G,4J,4K,4Q,4S,4U,4X,4Y,4Z,50,51,52,53,54,55,56,58,5A,5B,5C,5D,5F,5G,5H,5K,5L,5M,5N,5P,5Q,5S,5T,5W,5X,5Z,60,61,62,64,67,69,6B,8P,6E,6F,6G,6H,6J,6L,6M,6Q,6S,6U,6V,6W,6X,6Y,6Z,70,71,72,73,75,78,79,7A,7C,7D,7F,7G,7H,7J,7K,7L,7M,7N,7Q,7S,7T,7U,7V,7W,80,81,82,83,84,86,87,88,8B,8C,8E,8F,8G,8J,8N,8P,90,91,92,93,95,96,97,99,9A,9B,9C,9F,9G,9H,9J,9L,9N,9P,9Q,A0,A1,A4,A5,A6,A7,A9,AA,AC,AD,AF,AG,AH,AJ,AK,AL,AP,AQ,B0,B1,B2,B4,B6,B7,B9,BA,BB,BC,C5,BD,BF,BG,BH,BJ,BL,BN,BP,BQ,C0,C3,C4,C5,C6,C8,CA,CB,CD,CE,CF,CJ,CK,CM,EB,CN,CP,D0,D1,D2,D3,D4,D6,D7,D9,DA,DB,DD,DE,DF,DG,DH,DN,E0,E2,E3,E4,E5,E7,E8,E9,EA,EB,EC,EE,EG,EH,EL,EM,EN,F0,F1,F2,F3,F4,F9,FB,FE,FK,FL,FM,FQ,FS,FT,G1,G4,G5,G6,G7,G8,G9,GB,GD,GE,GF,H2,H3,HI"
Const vbComma = ","
Dim FileNum As Integer, sResult As String, FileList As Boolean, TextData As String

Private Sub cboMakerCode_Click()
    Dim tmp() As String
    tmp = Split(MakerList, vbComma, -1, vbBinaryCompare)
    cboMakerCode.Tag = tmp(cboMakerCode.ListIndex)
End Sub

Private Sub BrowseTest()
If File1.ListCount <= 0 Then
    txtGameTitle = vbNullString
    txtGameCode = vbNullString
    cboMakerCode.Text = vbNullString
    txtGameUnitCode = vbNullString
    txtDeviceType = vbNullString
    txtROMVersion = vbNullString
    txtComplement = vbNullString
    cmdSave.Enabled = False
    mnuSave.Enabled = False
End If
End Sub

Private Sub cmdBrowse_Click()
Dim Char As Byte, Data As Byte, i As Integer
Dim tmp() As String

Call BrowseTest

If FileList = True Then GoTo continue
File1.Path = BrowseFolder(Me.hWnd, LoadResString(1011))
Call BrowseTest
sResult = vbNullString
Exit Sub

continue:

If LenB(sResult) > 0 Then

    FileNum = FreeFile
    Open sResult For Binary As #FileNum
   
        For Char = 1 To 12
            Get #FileNum, &HA0 + Char, Data: TextData = ChrW$(Data)
            txtGameTitle = txtGameTitle & TextData
        Next Char

        For Char = 1 To 4
            Get #FileNum, &HAC + Char, Data: TextData = ChrW$(Data)
            txtGameCode = txtGameCode & TextData
        Next Char
    
        TextData = vbNullString
    
        For Char = 1 To 2
            Get #FileNum, &HB0 + Char, Data: TextData = TextData & ChrW$(Data)
        Next Char
    
        Get #FileNum, &HB4, Data: txtGameUnitCode = Right$("0" & Hex$(Data), 2)
        Get #FileNum, &HB5, Data: txtDeviceType = Right$("0" & Hex$(Data), 2)
        Get #FileNum, &HBD, Data: txtROMVersion = Right$("0" & Hex$(Data), 2)
        Get #FileNum, &HBE, Data: txtComplement = Right$("0" & Hex$(Data), 2)
    
    Close #FileNum

    tmp = Split(MakerList, vbComma, -1, vbBinaryCompare)

    For i = 0 To 315
        If tmp(i) = TextData Then cboMakerCode.ListIndex = i: Exit For
    Next

    FileList = False
End If

End Sub

Private Sub cmdSave_Click()

Dim i As Integer, Data As Byte, tmp() As String
Const vbComma2 = vbComma & "0"

SetAttr sResult, vbNormal

Open sResult For Binary As #FileNum

    txtGameTitle.Text = Left$(txtGameTitle & Space$(12), 12)

    TextData = "0"

    For i = 1 To 12
        Data = AscW(Mid$(txtGameTitle.Text, i, 1))
        Put #FileNum, &HA0 + i, Data
        TextData = TextData & vbComma & Data
    Next

    txtGameCode.Text = Left$(txtGameCode & Space$(4), 4)
    
    For i = 1 To 4
        Data = AscW(Mid$(txtGameCode.Text, i, 1))
        Put #FileNum, &HAC + i, Data
        TextData = TextData & vbComma & Data
    Next
    
    For i = 1 To 2
        Data = AscW(Mid$(cboMakerCode.Tag, i, 1))
        Put #FileNum, &HB0 + i, Data
        TextData = TextData & vbComma & Data
    Next
    
    Data = Val("&H" & txtGameUnitCode.Text)
    Put #FileNum, &HB4, Data
        
    Data = Val("&H" & txtDeviceType.Text)
    Put #FileNum, &HB5, Data
    
    Data = Val("&H" & txtROMVersion.Text)
    Put #FileNum, &HBD, Data
           
    Dim chk As Integer
    
    TextData = TextData & vbComma & "150" & vbComma & Val("&H" & txtGameUnitCode.Text) & _
    vbComma & Val("&H" & txtDeviceType.Text) & vbComma2 & vbComma2 & vbComma2 & vbComma2 & _
    vbComma2 & vbComma2 & vbComma2 & vbComma & Val("&H" & txtROMVersion.Text)
    
    tmp = Split(TextData, vbComma, -1, vbBinaryCompare)
       
    For i = 1 To 29
        chk = chk - tmp(i)
    Next
    
    chk = (chk - 25) And 255
    
    txtComplement.Text = Hex$(chk)
      
    Data = Right$("0" & Val("&H" & txtComplement.Text), 2)
    Put #FileNum, &HBE, Data
    
Close #FileNum

End Sub

Private Sub File1_Click()
    sResult = File1.Path & "\" & File1.List(File1.ListIndex)
    FileList = True
    Call cmdBrowse_Click
End Sub

Private Sub File1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyUp Or KeyCode = vbKeyDown Then
        File1.ToolTipText = File1.List(File1.ListIndex)
    End If
End Sub

Private Sub File1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        File1.ToolTipText = File1.List(File1.ListIndex)
    End If
End Sub

Private Sub File1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    File1.ToolTipText = File1.List(File1.ListIndex)
End Sub

Private Sub Form_Load()
    SetIcon Me.hWnd, "AAA"
    LoadResStrings Me
    File1.Path = App.Path
End Sub

Private Sub mnuAbut_Click()
    frmAbout.Show vbModal, frmMain
End Sub

Private Sub mnuBrowse_Click()
    Call cmdBrowse_Click
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub mnuReadme_Click()
    Shell "notepad.exe " & App.Path & "\Readme.txt", vbNormalFocus
End Sub

Private Sub mnuSave_Click()
    Call cmdSave_Click
End Sub

Private Sub txtComplement_Change()
    cmdSave.Enabled = True
    mnuSave.Enabled = True
End Sub

Private Sub txtDeviceType_KeyPress(KeyCode As Integer)
If KeyCode <> vbKeyBack And KeyCode <> 22 And KeyCode <> 3 And KeyCode <> 24 Then
    If (KeyCode > 64 And KeyCode < vbKeyG) Then Exit Sub
    If (KeyCode > 96 And KeyCode < 103) Then KeyCode = KeyCode - 32: Exit Sub
    If (KeyCode > 47 And KeyCode < 58) Then Exit Sub
    KeyCode = 0
End If
End Sub

Private Sub txtGameCode_KeyPress(KeyCode As Integer)
If KeyCode <> vbKeyBack And KeyCode <> 22 And KeyCode <> 3 And KeyCode <> 24 Then
If KeyCode > 96 And KeyCode < 123 Then KeyCode = KeyCode - 32: Exit Sub
    If KeyCode < 32 Or KeyCode > 96 Then KeyCode = 0
End If
End Sub

Private Sub txtGameTitle_KeyPress(KeyCode As Integer)
    Call txtGameCode_KeyPress(KeyCode)
End Sub

Private Sub txtGameUnitCode_KeyPress(KeyCode As Integer)
    Call txtDeviceType_KeyPress(KeyCode)
End Sub

Private Sub txtROMVersion_KeyPress(KeyCode As Integer)
    Call txtDeviceType_KeyPress(KeyCode)
End Sub
