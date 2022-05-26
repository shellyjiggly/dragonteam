VERSION 5.00
Begin VB.Form frmJump 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Choose jump location"
   ClientHeight    =   4020
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3255
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4020
   ScaleWidth      =   3255
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   495
      Left            =   2160
      TabIndex        =   1
      Top             =   480
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   255
      Left            =   2160
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add current location as new bookmark"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   1815
   End
   Begin VB.CommandButton cmdManual 
      Caption         =   "&Manual Address "
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1815
   End
   Begin VB.ListBox lstBookmarks 
      Height          =   2595
      Left            =   120
      TabIndex        =   5
      Top             =   1320
      Width           =   3015
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "&Bookmarks:"
      Height          =   195
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   840
   End
End
Attribute VB_Name = "frmJump"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'This form: Well I started this form on 06 Sep and it's mostly working(see below)

    ' 06 Sep: note the load bookmarks doesn't seem to be working right--there don't seem to be enough of them
'later--yeah I checked them and there are only three--don't know what wrong; I'll check it out after
'I fix
'Later: I fixed this. It was due to the fact that hexx only handled up to integer after I ported it--changed it to longs now.
    '22 Sep: Changed form so it's multiple use: Jump, Dump, and Insert(coming soon). Not too different though
    '23 Jan @)))!!! Much, much later: this has long been accomplished...
Enum UseMode
    Jump = 1
    Dump = 2
    'Bump = 14  'haha
    Insert = 3
End Enum
Dim lngAddress As Long
Dim lngEndAddress As Long
Dim lngBkMark(1 To 30) As Long
Dim mode As UseMode

Public Function ReturnAddress() As Long 'return the address given to frmThingy32.
'a positive number means jump to that number
'-1 means cancel
'-2 means add bookmark at this address(frmThingy32 has the code that actually *does* that)
'the parameters are the same as loadbookmarks, but this time we have the option to add a bookmark by changing them(that's why they're explicitly ByRef)
    ReturnAddress = lngAddress
End Function
Public Function ReturnDumpMark() As Integer
'this outdated: I need to retrun -2 for manual selection or the index for dumpmark secltion --no more work tonight: I'm fighting allergies so
'I'm going to go play FF4 and try again tomoorow.(you can tell I'm tired because I'm misspelling stuff)
'lngaddress = either the index of the dumpmark or -1 = Cancel or -2 = Point manually to end address
    ReturnDumpMark = lngAddress 'note the code is EXACTLY the same as ReturnAdress but the intent is different and
    'the cod might change
    'so I've got two separate functions.
End Function
Public Function ReturnInsertMark() As Integer
'same comments as ReturnDumpMark(same code almost, just changed the names)
    ReturnInsertMark = lngAddress
End Function
Public Sub LoadBookmarks(cBMarks As Integer, strBMark() As String, lngBMark() As Long)  'load all the bookmarks read from the table file(s)
'note that there are max 30 of them and that this is called as soon as form is Loaded, not Shown.
'you have to pass lmax, bktext, and bkmark to this function for necessary information(as they are named now)
Dim I As Integer
    
    With lstBookmarks
    .Clear
    For I = 1 To cBMarks
        .AddItem strBMark(I)  'add the text
        lngBkMark(I) = lngBMark(I)
    Next I
    If cBMarks > 0 Then .ListIndex = 0  'set the index to the first item(but don't necessarily set the focus to it)
    End With
    'now all we have to do is sit back and see what happens...
    Me.Caption = TitleJump '(title bar different for dump and insert)
    mode = Jump
    cmdAdd.Visible = True   'can only add bookmarks automatically with jump mode
    cmdManual.Caption = ManualJump
    Label1 = BookmarkLabel
End Sub
Public Sub LoadDumpMarks(cDMarks As Integer, strDMark() As String)
Dim I As Integer
    mode = Dump
    cmdAdd.Visible = False 'can't auto-add dumpmarks
    cmdManual.Caption = ManualDumpOrInsert
    Me.Caption = TitleDump
    Label1 = DumpmarkLabel
    With lstBookmarks
    .Clear
    For I = 1 To cDMarks
        .AddItem strDMark(I)  'add the text
        'but not the from-to data since in this mode, frmThingy32 handles that part.
    Next I
    If cDMarks > 0 Then .ListIndex = 0
    End With
End Sub
Public Sub LoadInsertMarks(cIMarks As Integer, strIMark() As String)
Dim I As Integer
    mode = Insert
    cmdAdd.Visible = False 'can't auto-add insertmarks
    cmdManual.Caption = ManualDumpOrInsert
    Me.Caption = TitleInsert
    Label1 = InsertmarkLabel
    With lstBookmarks
    .Clear
    For I = 1 To cIMarks
        .AddItem strIMark(I)  'add the text
        'but not the from-to data since in this mode, frmThingy32 handles that part.
    Next I
    If cIMarks > 0 Then .ListIndex = 0
    End With

End Sub
Private Sub cmdAdd_Click()
    If mode = Jump Then
        lngAddress = -2
        frmJump.Hide
    End If
End Sub

Private Sub cmdCancel_Click()
    lngAddress = -1  'hope that this works; you might try entering 0 to get to the top
    frmJump.Hide
End Sub

Private Sub cmdManual_Click()
Dim varManual As Variant
    If mode = Jump Then
        varManual = InputBox(ManualMsg, ManualTitle)
        If varManual <> "" And IsNumeric(varManual) Then    'the hex conversion *should* work(from my personal testing of isnumeric with variants)
            lngAddress = varManual + 1 'don't you just LOVE variants? :)
            frmJump.Hide
        'else possibility here if we want to alert the user we didn't like their bad input.
        End If
    ElseIf mode = Dump Then
        lngAddress = -2 'signal that they're going to point to the end address manually
        frmJump.Hide
    ElseIf mode = Insert Then
        lngAddress = -2 'signal that they're going to point to the end address manually
        frmJump.Hide
    End If
End Sub

Private Sub cmdOK_Click()
    If lstBookmarks.ListCount < 1 Then Exit Sub 'you can't quit without selecting SOMETHING or entering a manual address

    If mode = Jump Then
        lngAddress = lngBkMark(lstBookmarks.ListIndex + 1)
    ElseIf mode = Dump Then
        lngAddress = lstBookmarks.ListIndex + 1 'just return listindex +1(offset by 1 because listindex starts at 0)
    ElseIf mode = Insert Then
        lngAddress = lstBookmarks.ListIndex + 1
    End If
    frmJump.Hide    'disappear
End Sub

Private Sub Form_Load()
    'this the SetLanguage equiv of the main form(but most is call individual and set in LoadBook/Dump/Insertmarks)
    cmdAdd.Caption = AddCurrent
    cmdOK.Caption = OK
    cmdCancel.Caption = Cancel
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If UnloadMode = vbFormControlMenu Then
        cmdCancel_Click
    End If
End Sub

Private Sub lstBookmarks_DblClick()
    cmdOK_Click 'oops I should have had this line in here long ago.
End Sub
