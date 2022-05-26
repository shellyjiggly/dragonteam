VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmThingy32 
   Caption         =   "Thingy32"
   ClientHeight    =   4710
   ClientLeft      =   135
   ClientTop       =   2070
   ClientWidth     =   9375
   BeginProperty Font 
      Name            =   "Courier"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Thingy32.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   4710
   ScaleWidth      =   9375
   Begin VB.VScrollBar vsbYPos 
      Height          =   4215
      Left            =   4275
      Max             =   15
      TabIndex        =   13
      Top             =   480
      Width           =   225
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4080
      Top             =   3000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.TextBox txtTable 
      Height          =   4215
      Left            =   4560
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   0
      Text            =   "Thingy32.frx":0442
      Top             =   480
      Width           =   4815
   End
   Begin VB.Label lblOptions 
      AutoSize        =   -1  'True
      Caption         =   "O = Options"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   4200
      TabIndex        =   14
      ToolTipText     =   "Click for Options menu"
      Top             =   0
      Width           =   840
   End
   Begin VB.Label lblMoreWidth 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "More Width = >"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   3120
      TabIndex        =   12
      Top             =   4485
      Width           =   1095
   End
   Begin VB.Label lblLessWidth 
      AutoSize        =   -1  'True
      Caption         =   "< = Less Width"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   0
      TabIndex        =   11
      Top             =   4485
      Width           =   1065
   End
   Begin VB.Shape TheWorldIsSquare 
      BorderColor     =   &H000000FF&
      Height          =   255
      Left            =   0
      Top             =   480
      Width           =   280
   End
   Begin VB.Label lblSearch 
      AutoSize        =   -1  'True
      Caption         =   "S = Search"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   4200
      TabIndex        =   10
      ToolTipText     =   "Click the labels to execute the respective function"
      Top             =   240
      Width           =   795
   End
   Begin VB.Label lblDump 
      AutoSize        =   -1  'True
      Caption         =   "D = Dump"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   7080
      TabIndex        =   9
      ToolTipText     =   "Click the labels to execute the respective function"
      Top             =   240
      Width           =   720
   End
   Begin VB.Label lblInsert 
      AutoSize        =   -1  'True
      Caption         =   "I = Insert"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   8520
      TabIndex        =   8
      ToolTipText     =   "Click the labels to execute the respective function"
      Top             =   240
      Width           =   615
   End
   Begin VB.Label lblResearch 
      AutoSize        =   -1  'True
      Caption         =   "R = ReSearch"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5760
      TabIndex        =   7
      ToolTipText     =   "Click the labels to execute the respective function"
      Top             =   240
      Width           =   1020
   End
   Begin VB.Label lblHex 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "BBAAAAAA"
      Height          =   3975
      Left            =   0
      TabIndex        =   6
      Top             =   480
      Width           =   4215
   End
   Begin VB.Label lblEdit 
      AutoSize        =   -1  'True
      Caption         =   "Space = Select to Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   6840
      TabIndex        =   5
      ToolTipText     =   "Click the labels to execute the respective function"
      Top             =   0
      Width           =   1590
   End
   Begin VB.Label lblStatus 
      AutoSize        =   -1  'True
      Caption         =   "Ready"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   465
   End
   Begin VB.Label lblJump 
      AutoSize        =   -1  'True
      Caption         =   "J = Jump"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5760
      TabIndex        =   3
      ToolTipText     =   "Click the labels to execute the respective function"
      Top             =   0
      Width           =   630
   End
   Begin VB.Label lblPosition 
      Caption         =   "20 (32)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   720
      TabIndex        =   2
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Position:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   0
      TabIndex        =   1
      Top             =   240
      Width           =   600
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "Options Menu"
      Visible         =   0   'False
      Begin VB.Menu mnuOpenFile 
         Caption         =   "Open &New File..."
      End
      Begin VB.Menu mnuOpenTable 
         Caption         =   "&Open New Table..."
      End
      Begin VB.Menu mnuReloadTable 
         Caption         =   "&Reload Current Table"
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHideHex 
         Caption         =   "&Hide Hex"
      End
      Begin VB.Menu mnuTableSwitch 
         Caption         =   "Switch &Table Files"
      End
      Begin VB.Menu mnuSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuBookmarks 
         Caption         =   "&Bookmarks"
         Begin VB.Menu mnuJumpManual 
            Caption         =   "&Jump manually..."
         End
         Begin VB.Menu mnuNewBookmark 
            Caption         =   "&Add Current Location as Bookmark..."
         End
         Begin VB.Menu mnuBMarksArray 
            Caption         =   "-"
            Index           =   0
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuDumpmarks 
         Caption         =   "&Dumpmarks"
         Begin VB.Menu mnuDumpManual 
            Caption         =   "&Dump Manually Using Current Location as Start"
         End
         Begin VB.Menu mnuNewDumpmark 
            Caption         =   "&Add Current Location as Dumpmark..."
         End
         Begin VB.Menu mnuDMarksArray 
            Caption         =   "-"
            Index           =   0
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuInsertmarks 
         Caption         =   "&Insertmarks"
         Begin VB.Menu mnuInsertManual 
            Caption         =   "&Insert Manually Using Current Location as Start"
         End
         Begin VB.Menu mnuNewInsertMark 
            Caption         =   "&Add Current Location as Insertmark..."
         End
         Begin VB.Menu mnuIMarksArray 
            Caption         =   "-"
            Index           =   0
            Visible         =   0   'False
         End
      End
   End
End
Attribute VB_Name = "frmThingy32"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'ker-temp:c:\documents\visual basic\thingy32\thingy32 strings.txt
'before I really get cooking, here's some info:
'Nathan Sanders
'PO Box 1081 Point Lookout, MO 65726
'617-341-6511x5367B   sandersn@hotmail.com
'this is the Win32 version of Thingy that Necrosaro purportedly doesn't mind someone building.
'Most of the code is taken straight from his except of course it's brought into the present without
'ugly BASICA coding conventions :) sorry Necrosaro but your code is UGLY.
'Updates:
'1999 and 2000 are archived in 'Archived thingy32 Tombstone.txt' included in thingy32 .zip file.
'2001:
'   29 Mar: Just got an offer to translate thingy32 into Nederlands and Deutsch. So I'm going to send off the globals.txt and I just realized I should revamp
'the filetypes list, especially Gameboy x(.gb, .gbc, .gba) files.
Option Explicit
'Ok, here are all of Thingy's global variables. True fact:there are so many variables, this won't run in QBasic!(under Win95)
'later:I found out that it does in fact run in Quick Basic.
Dim strData As String
Dim linkamt(1 To 20) As Integer
Dim link(1 To 20) As Integer

Dim bit16 As Integer
Dim x As Long
Dim y As Long
Dim tabl As Integer
Dim tabl2 As Integer
Dim has As Long 'these all support up to two gigabyte files--the other variables may not however.
'big note: I think was is the top of the viewport and has is the actual current line but why do we need
'x,y then? well, I think those values are both relative to the beginning of the file, and x,y are relative to the beginning
'of the viewport
Dim was As Long
Dim lof1 As Long

'these were already declared global
'I find that I recognize most of these by sub now...
Dim header As Integer

'Dim menucol(1 To 10) As Integer 'I don't think these are any use since we have a different interface now
'Dim menuline(1 To 10) As Integer
'Dim menutext(1 To 10) As String


Dim tbl As String

Dim pointbegin As Long
Dim skipnon As Integer
Dim linkmax As Integer
Dim dakfront As Integer
Dim dodaku As Boolean
Dim dak As Integer
Dim hand As Integer
Dim b As Long
Dim bb As Long
Dim hexie(1 To 15) As String
Dim ts As String
Dim ts2 As String
'Dim gotit As Integer
'Dim no As Integer  'no is actually a boolean that is returned with hexequiv and maybe some other functions(but I doubt it)
Dim yg As Integer
Dim x2 As Integer
Dim y2 As Integer
Dim max As Integer
Dim lmax As Integer
Dim tmax As Integer
Dim imax As Integer
Dim max2 As Integer

Dim final As Long

Dim jap(1 To 300) As String
Dim japhex(1 To 300) As String

'Dim text(1 To 500) As String   'these were moved to frmEdit
'Dim hextxt(1 To 500) As String 'uh-oh, naming conflict not present in QB because it's so stupid


Dim bktext(1 To 30) As String
Dim bkmark(1 To 30) As Long

Dim instext(1 To 30) As String
Dim insmark(1 To 30, 1 To 2) As Long
Dim insname(1 To 30) As String

Dim dmarkst(1 To 30) As Long
Dim dmarkend(1 To 30) As Long
Dim dtext(1 To 30) As String

'Dim newlhex As String  'this moved to Global.bas--maybe the others are soon to follow?
'Dim newlhexdbl As String
Dim endhex As String
Dim endhexdbl As String
Dim jnewlhex As String
Dim jendhex As String
Dim jnewlhexdbl As String
Dim jendhexdbl As String

Dim newlhex2 As String
Dim newlhexdbl2 As String
Dim endhex2 As String
Dim endhexdbl2 As String
Dim jnewlhex2 As String
Dim jendhex2 As String
Dim jnewlhexdbl2 As String
Dim jendhexdbl2 As String
Dim comend As Integer
Dim comend2 As Integer
Dim comenddbl As Integer    'these two vars enable double-byte end strings(optional)
Dim comenddbl2 As Integer   'as indicated in the table file by '/'
Dim comnewl As Integer
Dim comnewl2 As Integer
Dim comnewldbl As Integer   'these are optional vars that enable double-byte
Dim comnewldbl2 As Integer  'new lines(in table file, '*AA')
Dim japend As Integer
Dim japnewl As Integer
Dim japend2 As Integer
Dim japnewl2 As Integer
Dim japnewldbl As Integer
Dim japnewldbl2 As Integer
Dim japenddbl As Integer
Dim japenddbl2 As Integer

Dim character As Integer  'well, this is another naming conflict that I'll have to fix.

Dim strDataFile As String   'maybe these don't have to be global--I hope not.
Dim intDataFileno As Integer
Dim strTableFile As String
Dim strTableFile2 As String
Enum KeyDir
    None = -1   'for when no adjustment is necessary to accomodate the text box's key handling.
    Lftkey = 0
    Upkey = 1
    Rghtkey = 2
    Downkey = 3
End Enum
'lookup table for position of cursor
Dim PosTable() As Integer
'bool to determine whether to hide the hex display label
Dim bShowHex As Boolean
'bool that tells if we've a selection on txtTable
Dim bSelection As Boolean
Dim selX As Integer 'and this is the data x,y position of the endselection
Dim selY As Integer
'sizing vars
Dim intLinesY As Integer
Dim intCharsX As Integer
Dim lngScrollInc As Long 'this keeps track of how much we're supposed to scroll per vsbypos.smallchange(set in Form_load, used in
Dim bCode As Boolean    'determine whether to update scrollbar or not.(true if manipulated in code, false if by user)

Private Sub DisplayData()
'this paints the data and incidentally reads from the file--this does most of the work
Dim strTemp As String
Dim strText As String
Dim strHexOutput As String
Dim strTableOutput As String
Dim h As Integer, I As Integer  'loop counters
Dim inhex As String
Dim inhex2 As String
Dim inhex3 As String
Dim char As String
Dim char2 As String
Dim char3 As String
Dim th As Long, th2 As Long
Dim r As Integer
Dim intTableCharNo As Integer   'these two variables help figure out at what character the insertion point should be; this one is the raw
'holder for the length of the chars
Dim intSelStart As Integer  'and this one is the holder for the actual position, once/if we find it(we might not since we're only displaying 1 line)
    intSelStart = -1    'set the flag so we'll know if the cursor is even supposed to be on this line.
    'get a key
    'nw make sure we don't go past EOF or BOF
    If was < 1 Then was = 1
    If has < 1 Then has = 1
    If has > lof1 Then has = lof1
    If was > lof1 Then was = lof1
    
    strText = Space$(intCharsX * intLinesY + 1) 'this fills the screen string with extra space just in case we're at the end of the file.
    Mid$(strText, 1) = Mid$(strData, has, intLinesY * intCharsX + 1) 'now get our data from the current screen position
    'the Mid$ in front ensures that the extra space remains, so thingy doesn't crash when trying to look at the end of the file
    'Get #intDataFileno, has, strText ... old method(by direct file access)
    
    strHexOutput = ""
For h = 1 To intLinesY  'loop from top to bottom
'NOTE: cannot duplicate colors yet; need Rich Text Box for that and I don't want to fiddle with them....yet
   'first, for each line, draw the Hex codes
If bShowHex Then
  strHexOutput = strHexOutput & "["
  For I = 1 To intCharsX  'now loop from left to right composing the hex output
    inhex$ = Mid$(strText, I + intCharsX * (h - 1), 1)  'determine the offset and read the hex val
    char$ = Hex$(Asc(inhex$))   'now convert it to nice ascii
    If Len(char$) = 1 Then char$ = "0" + char$  'make sure we have a nice 0F
    
    strHexOutput = strHexOutput & char$ 'add to output string
  Next I
  strHexOutput = strHexOutput & "]"
End If
       'now, for each line of the table output
  For I = 1 To intCharsX
       'first, get the hex(and the extra 2nd hex just in case)
       'then get the nice ascii version of them
    inhex$ = Mid$(strText, I + intCharsX * (h - 1), 1)
    inhex2$ = Mid$(strText, I + intCharsX * (h - 1) + 1, 1)
    inhex3$ = Mid$(strText, I + intCharsX * (h - 1) + 2, 1)
    char$ = Hex$(Asc(inhex$))
    char2$ = Hex$(Asc(inhex2$))
    If h < intLinesY Or I < intCharsX Then 'when we're printing the bottom right corner char+3 is past the end of the string.
    'I don't understand why this bug only happens with *triple* and not double.
        char3$ = Hex$(Asc(inhex3$))
    End If
    If Len(char$) = 1 Then char$ = "0" + char$  'again make sure they look pr
    If Len(char2$) = 1 Then char2$ = "0" + char2$
    If Len(char3$) = 1 Then char3$ = "0" + char3$
       Do
Dim do2 As Boolean
Dim do3 As Boolean
         th = Asc(inhex$) + 1   'for some reason there is an off by 1 error here we have to correct for.
         th2 = Asc(inhex2$) + 1
         do2 = False    'a flag whether or not we need to loop twice to fig the second hex val
         For r% = 1 To dblmax 'loop for as many dblhex we have
           If dblhex(r%) = char$ + char2$ Then  'dblhex is a list of all the
            'two series hex codes; if it matches,
            do2 = True  'we have to loop again(that's the do2)
            Exit For
           End If
         Next r%
          If do2 = True Then  'it's a double hex code(i.e. 3F32=Watr
            I = I + 1 'inc two characters to skip the one we'll cover here
            If x = I Or x = I - 1 Then  'check to see if the cursor is on this double.
              If y = h Then
                intSelStart = intTableCharNo
              End If
            End If
            PosTable(I - 1, h) = intTableCharNo 'save the position of the cursor for these two hex
            If I < intCharsX + 1 Then PosTable(I, h) = intTableCharNo
            
            strTableOutput = strTableOutput & dbl(r%)
            intTableCharNo = intTableCharNo + Len(dbl(r%))
            Exit Do
          End If
         do3 = False
         For r = 1 To trplmax   'same story except with triple hex instead.
            If trplhex(r) = char$ + char2$ + char3$ Then
                do3 = True
                Exit For
            End If
         Next r
        If do3 = True Then
            I = I + 2
            If x = I Or x = I - 1 Or x = I - 2 Then
                If y = h Then
                    intSelStart = intTableCharNo
                End If
            End If
            PosTable(I - 2, h) = intTableCharNo 'save the cursor position for these three hex
            If I < intCharsX + 2 Then
                PosTable(I - 1, h) = intTableCharNo
                If I < intCharsX + 1 Then PosTable(I, h) = intTableCharNo
            End If
            strTableOutput = strTableOutput & trpl(r)
            intTableCharNo = intTableCharNo + Len(trpl(r))
            Exit Do
        End If
        
          If th = comnewl Or th = comnewl2 Then 'if this is a newline
            If comnewldbl > 0 Then  'if there's a second byte on the newline
                If th2 = comnewldbl Then
                    I = I + 1 'be sure to skip the second byte
                    If x = I Or x = I - 1 Then
                        If y = h Then
                            intSelStart = intTableCharNo
                        End If
                    End If
                    PosTable(I - 1, h) = intTableCharNo 'save cursor position for these two hex
                    If I < intCharsX + 1 Then PosTable(I, h) = intTableCharNo
                    
                    strTableOutput = strTableOutput & combo(th)
                    intTableCharNo = intTableCharNo + Len(combo(th))
                    strTableOutput = strTableOutput & combo(th2)    'byte.
                    intTableCharNo = intTableCharNo + Len(combo(th2))
                Else
                    If x = I And y = h Then
                        intSelStart = intTableCharNo
                    End If
                    
                    PosTable(I, h) = intTableCharNo 'save the cursor position for this hex
                    
                    strTableOutput = strTableOutput & combo(th)
                    intTableCharNo = intTableCharNo + Len(combo(th))
                End If
            ElseIf comnewldbl2 > 0 Then
                If th2 = comnewldbl2 Then   'if it's a double newline, then we have to print/add cursor position for the second
                    I = I + 1   'skip 2a byte
                    If x = I Or x = I - 1 Then
                        If y = h Then
                            intSelStart = intTableCharNo
                        End If
                    End If
                    PosTable(I - 1, h) = intTableCharNo 'save cursor position for these two hex
                    If I < intCharsX + 1 Then PosTable(I, h) = intTableCharNo

                    strTableOutput = strTableOutput & combo(th) 'byte as well as the first.
                    intTableCharNo = intTableCharNo + Len(combo(th))
                    strTableOutput = strTableOutput & combo(th2)
                    intTableCharNo = intTableCharNo + Len(combo(th2))
                 Else
                    If x = I And y = h Then
                        intSelStart = intTableCharNo
                    End If
                    
                    PosTable(I, h) = intTableCharNo 'save the cursor position for this hex
                    
                    strTableOutput = strTableOutput & combo(th)
                    intTableCharNo = intTableCharNo + Len(combo(th))
               End If
            Else    'no double byte, just regular old code
                If x = I And y = h Then
                    intSelStart = intTableCharNo
                End If
                
                PosTable(I, h) = intTableCharNo 'save the cursor position for this hex
                
                strTableOutput = strTableOutput & combo(th)
                intTableCharNo = intTableCharNo + Len(combo(th))
            End If
            Exit Do
          ElseIf th = comend Or th = comend2 Then  'or a endline
            If comenddbl > 0 Then
                If th2 = comenddbl Then
                    I = I + 1 'be sure to skip the second byte
                    If x = I Or x = I - 1 Then
                        If y = h Then
                            intSelStart = intTableCharNo
                        End If
                    End If
                    PosTable(I - 1, h) = intTableCharNo 'save cursor position for these two hex
                    If I < intCharsX + 1 Then PosTable(I, h) = intTableCharNo
                    
                    strTableOutput = strTableOutput & combo(th)
                    intTableCharNo = intTableCharNo + Len(combo(th))
                    strTableOutput = strTableOutput & combo(th2)    'byte.
                    intTableCharNo = intTableCharNo + Len(combo(th2))
                Else
                    If x = I And y = h Then
                        intSelStart = intTableCharNo
                    End If
                    
                    PosTable(I, h) = intTableCharNo 'save the cursor position for this hex
                    
                    strTableOutput = strTableOutput & combo(th)
                    intTableCharNo = intTableCharNo + Len(combo(th))
                 End If
            ElseIf comenddbl2 > 0 Then
                If th2 = comenddbl2 Then   'if it's a double endine, then we have to print/add cursor position for the second
                    I = I + 1   'skip 2a byte
                    If x = I Or x = I - 1 Then
                        If y = h Then
                            intSelStart = intTableCharNo
                        End If
                    End If
                    PosTable(I - 1, h) = intTableCharNo 'save cursor position for these two hex
                    If I < intCharsX + 1 Then PosTable(I, h) = intTableCharNo
                    
                    strTableOutput = strTableOutput & combo(th) 'byte as well as the first.
                    intTableCharNo = intTableCharNo + Len(combo(th))
                    strTableOutput = strTableOutput & combo(th2)
                    intTableCharNo = intTableCharNo + Len(combo(th2))
                Else
                    If x = I And y = h Then
                        intSelStart = intTableCharNo
                    End If
                    
                    PosTable(I, h) = intTableCharNo 'save the cursor position for this hex
                    
                    strTableOutput = strTableOutput & combo(th)
                    intTableCharNo = intTableCharNo + Len(combo(th))
                 End If
            Else    'no double byte, just regular old code
                If x = I And y = h Then
                    intSelStart = intTableCharNo
                End If
                PosTable(I, h) = intTableCharNo
                
                strTableOutput = strTableOutput & combo(th)
                intTableCharNo = intTableCharNo + Len(combo(th))
            End If
            Exit Do
          ElseIf comhex(th) <> "" Then 'combo/comhex are table values
          'in arrays--1 to 256
            If x = I And y = h Then
                intSelStart = intTableCharNo
            End If
            PosTable(I, h) = intTableCharNo
            
            strTableOutput = strTableOutput & combo(th)
            intTableCharNo = intTableCharNo + Len(combo(th))
            Exit Do
          End If

        If x = I And y = h Then
            intSelStart = intTableCharNo
        End If
            PosTable(I, h) = intTableCharNo
            strTableOutput = strTableOutput & "#"
            intTableCharNo = intTableCharNo + 1
            Exit Do
       Loop

    Next I

    strHexOutput = strHexOutput + vbCrLf
    strTableOutput = strTableOutput + vbCrLf
    has = has + intCharsX
    intTableCharNo = intTableCharNo + 2 'account for the vbCrLf just appended to strTableOutput
Next h
'cut off the last vbCrLf and then display the data.
strHexOutput = Left$(strHexOutput, Len(strHexOutput) - 2)
strTableOutput = Left$(strTableOutput, Len(strTableOutput) - 2)
If bShowHex Then lblHex.Caption = strHexOutput
txtTable.text = strTableOutput
'set cursor as figured in the loop above.
txtTable.SelStart = intSelStart

'now update the scroll bar
bCode = True
vsbYPos.Value = was \ lngScrollInc
'and update the printed cursor+move hex cursor.
DisplayCursor

End Sub

Private Sub ReadTableFile(intFileno As Integer)
'this used to be Sub 565. It reads and parses the table file(s)
'pass it the file number of the table file to parse(so you can use it for any table file)
Dim tpos As Long
Dim dak1 As String
Dim hand1 As String
Dim byte1 As String
Dim byte2 As String
Dim r As Long
Dim h As Long   'a counter to tell which dbl we're on(up to 3000)
Dim t As Long   'a counter to tell which trpl we're on(up to 3000)
Dim I As Long
Dim enter As Long
Dim addrr As String
Dim fx As Long
Dim fx2 As Long
Dim fx3 As Long
Dim g As Integer
Dim f As Integer
Dim daByte As String
Dim fb As Integer
Dim j As Integer
Dim do3 As Integer  'this is a flag that indicates the byte length(single, double, triple)
newlhex = "  "  'you can't tell it with Roman font, but those are excatly two spaces each
newlhexdbl = "  "
endhex = "  "
endhexdbl = "  "
newlhex2 = "  "
newlhexdbl2 = "  "
endhex2 = "  "
endhexdbl2 = "  "
tpos = 1
dak1$ = "  "
hand1$ = "  "
byte1$ = "       "
byte2$ = " "
r = 1
h = 1   'init the dbl counters
t = 1   'trpl counters
I = 1
'clear vars just in case this is not the first table file
mnuBMarksArray(0).Visible = False
For I = 1 To lmax Step 1
    bktext(I) = ""
    bkmark(I) = 0
    Unload mnuBMarksArray(I)
Next I
mnuDMarksArray(0).Visible = False
For I = 1 To tmax Step 1
    dtext(I) = ""
    dmarkst(I) = 0
    dmarkend(I) = 0
    Unload mnuDMarksArray(I)
Next I
mnuIMarksArray(0).Visible = False
For I = 1 To imax Step 1
    instext(I) = ""
    insname(I) = ""
    insmark(I, 1) = 0
    insmark(I, 2) = 0
    Unload mnuIMarksArray(I)
Next I
I = 1
lmax = 0
tmax = 0
imax = 0
'and others here as I continue debugging...

Do Until tpos > LOF(intFileno)  'for each character in the table file.
enter = 0

Get #intFileno, tpos, byte1$    'get the character

'and start dissecting the line.
If Left$(byte1$, 1) = "$" Then  'linked value. See readme because they're strange.
    Get #intFileno, tpos + 1, byte1$
    link(r) = hexx(byte1$)
    Get #intFileno, tpos + 4, byte1$
    linkamt(r) = Val(Left$(byte1$, 1))
    tpos = tpos + 7
    r = r + 1
    GoTo et
End If

If Left$(byte1$, 1) = "(" Then  'it's a bookmark
    addrr$ = ""
    fx = fx + 1
    tpos = tpos + 1
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = ")" Or tpos = LOF(intFileno) Then Exit Do
        addrr$ = addrr$ + byte2$
        tpos = tpos + 1
    Loop
    If UCase$(Right$(addrr$, 1)) = "H" Then
      bkmark(fx) = hexx(Left$(addrr$, Len(addrr$) - 1))
    Else
      bkmark(fx) = Val(addrr$)
    End If
    tpos = tpos + 1
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = Chr$(13) Or tpos = LOF(intFileno) Then Exit Do
        bktext(fx) = bktext(fx) + byte2$
        tpos = tpos + 1
    Loop
    lmax = lmax + 1
    'add to Bookmarks menu array
    mnuBMarksArray(0).Visible = True    'we have at least one, so make visible
    Load mnuBMarksArray(lmax)   'init new menu
    mnuBMarksArray(lmax).Caption = "&" & lmax & ". " & bktext(lmax) & ":   " & Hex$(bkmark(lmax)) & " (" & bkmark(lmax) & ")"
    mnuBMarksArray(lmax).Visible = True
    'end menu add
    tpos = tpos + 2
    GoTo et
End If

If Left$(byte1$, 1) = "[" Then  'dumpmark
    addrr$ = ""
    fx2 = fx2 + 1
    tpos = tpos + 1
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = "-" Or tpos = LOF(intFileno) Then Exit Do
        addrr$ = addrr$ + byte2$
        tpos = tpos + 1
    Loop
    If UCase$(Right$(addrr$, 1)) = "H" Then
      dmarkst(fx2) = hexx(Left$(addrr$, Len(addrr$) - 1))
    Else
      dmarkst(fx2) = Val(addrr$)
    End If
    tpos = tpos + 1
    addrr$ = ""
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = "]" Or tpos = LOF(intFileno) Then Exit Do
        addrr$ = addrr$ + byte2$
        tpos = tpos + 1
    Loop
    If UCase$(Right$(addrr$, 1)) = "H" Then
      dmarkend(fx2) = hexx(Left$(addrr$, Len(addrr$) - 1))
    Else
      dmarkend(fx2) = Val(addrr$)
    End If
    tpos = tpos + 1
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = Chr$(13) Or tpos = LOF(intFileno) Then Exit Do
        dtext(fx2) = dtext(fx2) + byte2$
        tpos = tpos + 1
    Loop
    tmax = tmax + 1
    'add to Dumpmarks menu array
    mnuDMarksArray(0).Visible = True    'we have at least one, so make visible
    Load mnuDMarksArray(tmax)   'init new menu
    mnuDMarksArray(tmax).Caption = "&" & tmax & ". " & dtext(tmax) & ":   " & Hex$(dmarkst(tmax)) & "-" & Hex$(dmarkend(tmax)) & " (" & dmarkst(tmax) & "-" & dmarkend(tmax) & ")"
    mnuDMarksArray(tmax).Visible = True
    'end menu add
    
    tpos = tpos + 2
    GoTo et
End If

If Left$(byte1$, 1) = "{" Then  'insertmark
'new format:
'{80600h+81600h-FF4dump.txt}Dialogue Block 1
    addrr$ = ""
    fx3 = fx3 + 1
    tpos = tpos + 1
    Do  'start address
        Get #intFileno, tpos, byte2$
        If byte2$ = "+" Or tpos = LOF(intFileno) Then Exit Do
        addrr$ = addrr$ + byte2$
        tpos = tpos + 1
    Loop
    If UCase$(Right$(addrr$, 1)) = "H" Then
      insmark(fx3, 1) = hexx(Left$(addrr$, Len(addrr$) - 1))
    Else
      insmark(fx3, 1) = Val(addrr$)
    End If
    tpos = tpos + 1
    addrr$ = ""
    Do  'end address
        Get #intFileno, tpos, byte2$
        If byte2$ = "-" Or tpos = LOF(intFileno) Then Exit Do
        addrr$ = addrr$ + byte2$
        tpos = tpos + 1
    Loop
    If addrr$ = "" Then 'no end address--legacy thingy format.
        insmark(fx3, 2) = -1
    Else    'new type
        If UCase$(Right$(addrr$, 1)) = "H" Then
          insmark(fx3, 2) = hexx(Left$(addrr$, Len(addrr$) - 1))
        Else
          insmark(fx3, 2) = Val(addrr$)
        End If
    End If
    tpos = tpos + 1
    addrr$ = ""
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = "}" Or tpos = LOF(intFileno) Then Exit Do
        addrr$ = addrr$ + byte2$
        tpos = tpos + 1
    Loop
    insname(fx3) = addrr$
    tpos = tpos + 1
    Do
        Get #intFileno, tpos, byte2$
        If byte2$ = Chr$(13) Or tpos = LOF(intFileno) Then Exit Do
        instext(fx3) = instext(fx3) + byte2$
        tpos = tpos + 1
    Loop
    imax = imax + 1
    'add to Insertmarks menu array
    mnuIMarksArray(0).Visible = True    'show the root(a separator)
    Load mnuIMarksArray(imax)   'init new
    If insmark(imax, 2) = -1 Then
        mnuIMarksArray(imax).Caption = "&" & imax & ". " & instext(imax) & ":   " & Hex$(insmark(imax, 1)) & " (" & insmark(imax, 1) & ")" & ": " & instext(imax)
    Else
        mnuIMarksArray(imax).Caption = "&" & imax & ". " & instext(imax) & ":   " & Hex$(insmark(imax, 1)) & "-" & Hex$(insmark(imax, 2)) & " (" & insmark(imax, 1) & "-" & insmark(imax, 2) & ")" & ": " & instext(imax)
    End If
    mnuIMarksArray(imax).Visible = True
    'end menu add
    tpos = tpos + 2
    GoTo et
End If

If Left$(byte1$, 1) = ">" Then  'it's the signal to put dakuten in back.
    dakfront = 1
    tpos = tpos + 3
    GoTo et
End If

If Left$(byte1$, 1) = "#" Then  'clean dump symbol
    skipnon = 1
    tpos = tpos + 3
    GoTo et
End If


If Left$(byte1$, 1) = Chr$(13) Then 'newline--nothing on this line!
    tpos = tpos + 2
    GoTo et
End If


If Left$(byte1$, 1) = "!" Then  'Dakuten value (<Jap char>'') (e.g. Ka" == Ga)
    Get #intFileno, tpos + 1, dak1$
    dak = hexx(dak1$)
    tpos = tpos + 5
    dodaku = True   'a flag that is true if either " or º is used.
    GoTo et
End If
If Left$(byte1$, 1) = "@" Then 'Handakuten (<Jap char>º) (e.g. Haº == Pa)
    Get #intFileno, tpos + 1, hand1$
    hand = hexx(hand1$)
    tpos = tpos + 5
    dodaku = True
    GoTo et
End If

'I'm explicitly commenting this since I'm having to enhance its functionality
If Left$(byte1$, 1) = "*" Then   'newline value ie. <CR>
    'Anway, this section gets up to two differen
    If comnewl = 0 Then 'if its the first Newl to be def'd.
        Get #intFileno, tpos + 1, newlhex   'get two spaces worth AFTER the '*'
        g = hexx(newlhex)   'convert from hex string to dec int.
        combo(g + 1) = "*"  'set the
        comhex(g + 1) = newlhex
        comnewl = g + 1
        'now check to see if it's a double.
        Get #intFileno, tpos + 3, newlhexdbl
        If newlhexdbl = vbCrLf Then   'make sure it's NOT a new line. If it is
            comnewldbl = -1 'make sure we disable the double-byte so it won't flag by mistake
        Else    'same code as for the first byte.
            g = hexx(newlhexdbl)
            combo(g + 1) = "*"
            comhex(g + 1) = newlhexdbl
            comnewldbl = g + 1
            commax = commax + 1 'we have to tell that we added a table value
            tpos = tpos + 2 'and that we had a double(which is two more bytes)
        End If
    Else    'this is the second one--if you put in four, two and three get kicked out!
        Get #intFileno, tpos + 1, newlhex2
        g = hexx(newlhex2)
        combo(g + 1) = "*"
        comhex(g + 1) = newlhex2
        comnewl2 = g + 1
        'now check to see if it's a double.
        Get #intFileno, tpos + 3, newlhexdbl2
        If newlhexdbl2 = vbCrLf Then   'make sure it's NOT a new line. If it is
            comnewldbl2 = -1 'make sure we disable the double-byte so it won't flag by mistake
        Else    'same code as for the first byte.
            g = hexx(newlhexdbl2)
            combo(g + 1) = "*"
            comhex(g + 1) = newlhexdbl2
            comnewldbl2 = g + 1
            commax = commax + 1 'we have to tell that we added a table value
            tpos = tpos + 2 'and that we had a double(which is two more bytes)
        End If
    End If
    tpos = tpos + 5 'skip past the '*XX' (Note for doubles: the extra 'XX' has already been skipped above)
    commax = commax + 1 'note the fact that we've added a table value (i.e. '*')
    GoTo et
End If

If Left$(byte1$, 1) = "/" Then   'end string val i.e. </0>
    If comend = 0 Then 'if its the first end to be def'd.
        Get #intFileno, tpos + 1, endhex   'get two spaces worth AFTER the '*'
        g = hexx(endhex)   'convert from hex string to dec int.
        combo(g + 1) = "/"  'set the
        comhex(g + 1) = endhex
        comend = g + 1
        'now check to see if it's a double.
        Get #intFileno, tpos + 3, endhexdbl
        If endhexdbl = vbCrLf Then   'make sure it's NOT a new line. If it is
            comenddbl = -1 'make sure we disable the double-byte so it won't flag by mistake
        Else    'same code as for the first byte.
            g = hexx(endhexdbl)
            combo(g + 1) = "/"
            comhex(g + 1) = endhexdbl
            comenddbl = g + 1
            commax = commax + 1 'we have to tell that we added a table value
            tpos = tpos + 2 'and that we had a double(which is two more bytes)
        End If
    Else    'this is the second one--if you put in four, two and three get kicked out!
        Get #intFileno, tpos + 1, endhex2
        g = hexx(endhex2)
        combo(g + 1) = "/"
        comhex(g + 1) = endhex2
        comend2 = g + 1
        'now check to see if it's a double.
        Get #intFileno, tpos + 3, endhexdbl2
        If endhexdbl2 = vbCrLf Then   'make sure it's NOT a new line. If it is
            comenddbl2 = -1 'make sure we disable the double-byte so it won't flag by mistake
        Else    'same code as for the first byte.
            g = hexx(endhexdbl2)
            combo(g + 1) = "/"
            comhex(g + 1) = endhexdbl2
            comenddbl2 = g + 1
            commax = commax + 1 'we have to tell that we added a table value
            tpos = tpos + 2 'and that we had a double(which is two more bytes)
        End If
    End If
    tpos = tpos + 5 'skip past the '*XX' (Note for doubles: the extra 'XX' has already been skipped above)
    commax = commax + 1 'note the fact that we've added a table value (i.e. '*')
    GoTo et
End If

If Left$(byte1$, 1) = "&" Then   'pointer calculations
   daByte$ = ""
   tpos = tpos + 1
   Do
      Get #intFileno, tpos, byte2$
      If byte2$ = "-" Or tpos = LOF(intFileno) Then Exit Do   'loop
      daByte$ = daByte$ + byte2$    'of the table file,
      tpos = tpos + 1
   Loop
   If UCase$(Right$(daByte$, 1)) = "H" Then
     pointbegin = hexx(Left$(daByte$, Len(daByte$) - 1)) + 1
   Else
     pointbegin = Val(daByte$) + 1
   End If
   tpos = tpos + 1
   daByte$ = ""
   Do
      Get #intFileno, tpos, byte2$
      If byte2$ = Chr$(13) Or tpos = LOF(intFileno) Then Exit Do
      daByte$ = daByte$ + byte2$
      tpos = tpos + 1
   Loop
   If UCase$(Right$(daByte$, 1)) = "H" Then
     header = hexx(Left$(daByte$, Len(daByte$) - 1))
   Else
     header = Val(daByte$)
   End If

   GoTo et
End If

If Mid$(byte1$, 3, 1) = "=" Then 'if it's a normal then
    fb = hexx(Left$(byte1$, 2))
    j = fb
    comhex(j + 1) = Left$(byte1$, 2)
    tpos = tpos + 3   'inc our pos
ElseIf Mid$(byte1$, 5, 1) = "=" Then   'else if it's a double then
    dblhex(h) = Left$(byte1$, 4)
    tpos = tpos + 5   'inc our pos
    do3 = 1
ElseIf Mid$(byte1$, 7, 1) = "=" Then    'else if it's a triple then
    If InStr(byte1$, vbCrLf) = 0 Then   'check for false alarms--a line with nothing on it and a double/single on the next line.
        trplhex(t) = Left$(byte1$, 6)   'get the value(in string format)
        tpos = tpos + 7 'skip past the 'AABBCC='
        do3 = 2 'and flag that we had a triple
    End If
End If

daByte$ = ""
character = 1
Do 'for this line, get the text present on the line AFTER the '='
   Get #intFileno, tpos, byte2$
   If byte2$ = Chr$(13) Or tpos = LOF(intFileno) Then Exit Do 'if we've reached
   'the end of line or the end of file then quit
   daByte$ = daByte$ + byte2$   'add the char
   tpos = tpos + 1                         'inc the pos
   character = character + 1    'umm: ?
Loop

If character > maxmix Then maxmix = character

If do3 = 0 Then
   combo(j + 1) = daByte$
   tpos = tpos + 2  'next line
   commax = commax + 1  'add one to table val
ElseIf do3 = 1 Then
   dbl(h) = daByte$
   tpos = tpos + 2  'goto next line
   dblmax = dblmax + 1  'add total of dbls
   h = h + 1    'inc to next one for next time
   do3 = 0  'reset double flag
ElseIf do3 = 2 Then
    trpl(t) = daByte$
    tpos = tpos + 2
    trplmax = trplmax + 1
    t = t + 1   'inc to next one for next time
    do3 = 0 'reset length flag
End If
et:
I = I + 1
Loop
Close #intFileno
commax = 275
linkmax = 20

End Sub

Private Sub Swap(var1 As Variant, var2 As Variant)
Dim varTemp As Variant
    varTemp = var1
    var1 = var2
    var2 = varTemp
End Sub

Private Sub SwapVars()
'this sub swaps all 'jap' vars with the 'com' vars; I think this stands for Japanese and Combo.
'in the original it was Sub 566
'since *everything* is global there are no parameters and nothing returned...
Dim I As Integer
For I = 1 To 300
   Swap combo(I), jap(I)
   Swap comhex(I), japhex(I)
Next I

Swap comend, japend
Swap comend2, japend2
Swap comenddbl, japenddbl
Swap comenddbl2, japenddbl2
Swap comnewl, japnewl
Swap comnewl2, japnewl2
Swap comnewldbl, japnewldbl
Swap comnewldbl2, japnewldbl2
Swap newlhex, jnewlhex
Swap newlhex2, jnewlhex2
Swap newlhexdbl, jnewlhexdbl
Swap newlhexdbl2, jnewlhexdbl2
Swap endhex, jendhex
Swap endhex2, jendhex2
Swap endhexdbl, jendhexdbl
Swap endhexdbl2, jendhexdbl2

End Sub

Private Sub Form_Load()

    'var init from thingy original
    bit16 = 0
    x = 8    'x,y are your position in the file
    y = 10
    tabl = 1    'I think these are just ref numbers or something
    tabl2 = 2
    
    'load files
    LoadFiles   'load all files(and parse the table files)
    intDataFileno = FreeFile   'get a free filenumber and open the file.
    Open strDataFile For Binary As #intDataFileno
    Me.Caption = "Loading " & strDataFile & ". Please wait"
    'load whole file into memory
    strData = Space(LOF(intDataFileno)) 'whoooo!
    Get #intDataFileno, , strData
    'that should be it!
    'misc info
    Me.Caption = strDataFile & " - " & "Thing32" 'infoomashon
    lblStatus.ToolTipText = UsingTableMsg & tabl  'more info
    SetLanguage 'this assigns the correct captions to all the visual elements of thingy32
    
    'scrollbar format
    lof1 = LOF(intDataFileno)
    vsbYPos.Min = 0 'duh
    vsbYPos.LargeChange = 20
    intLinesY = 20   'the number of lines per screen. For sizing.
    intCharsX = 16
    ReDim PosTable(1 To intCharsX, 1 To intLinesY) As Integer  'the cursor position lookup table.
    
    'yes you cannot edit anything bigger than c. 160 MB. Sorry. Use Hexecute :) maybe it'll work
    If lof1 > CLng(32767) * intCharsX * intLinesY Then  'it's 10 MB+!!
        lngScrollInc = 256 * intLinesY
        vsbYPos.max = lof1 \ lngScrollInc
    ElseIf lof1 > CLng(32767) * intCharsX Then   'it's too long for our scroll bar, so we'll scroll by one screen at a time(this is for plus .5 Megabyte files)
        lngScrollInc = intCharsX * intLinesY
        vsbYPos.max = lof1 \ lngScrollInc
    Else    'it's a small file--less than 0.5 MB
        lngScrollInc = intCharsX
        vsbYPos.max = lof1 \ lngScrollInc 'now format the scroll bar(pretty easy)
    End If
    
    'more init vars--these mine or have to be after LoadFiles
    bShowHex = True 'the flag of whether or not to the hex display label.
    was = 1
    has = was 'these control the top line and cursor line number
    'I would have called them ScreenPos and LinePos if *I* had programmed this originally...but then I learned the MICROSOFT™® way too.
    
    'premier display of data
    DisplayData
    'now we're done with form load--in QB we entered a msg loop. In VB we enter 'receiving messages' mode and act on events fired.

End Sub

Private Sub Form_Resize()
Dim FONT_HEIGHT As Integer
Dim intNewLinesY As Integer
    'allocate each control the proper amount of space.
    If Me.WindowState <> vbMinimized Then
        If (Me.ScaleWidth - 15 - txtTable.Left) > 10 Then
            txtTable.Width = Me.ScaleWidth - 15 - txtTable.Left
        End If
        lblMoreWidth.Top = Me.ScaleHeight - lblMoreWidth.Height
        lblLessWidth.Top = Me.ScaleHeight - lblLessWidth.Height
        'txtTable.Left = CONTROL_SPACE + vsbYPos.Left + vsbYPos.Width
        'now size them all to vertical max
Dim intControlHeight As Integer
        intControlHeight = Me.ScaleHeight - lblHex.Top - 5
        If intControlHeight > 10 Then   'make sure you can't squish the controls too far(it crashes when height < 0)
            lblHex.Height = intControlHeight - lblMoreWidth.Height - 20
            vsbYPos.Height = intControlHeight
            vsbYPos.LargeChange = intLinesY
            txtTable.Height = intControlHeight
        End If
        'calc the number of lines to display
        FONT_HEIGHT = Me.TextHeight("o")
        intNewLinesY = Int((intControlHeight - FONT_HEIGHT * (5 / 4)) / FONT_HEIGHT)
        'make sure
        '1. it's changed
        '2. the cursor won't be cut off(program crashes if it is)
        If intNewLinesY <> intLinesY And y < intNewLinesY Then
            intLinesY = intNewLinesY
            ReDim PosTable(1 To intCharsX, 1 To intLinesY) 'resize the length table to the correct size
            has = was   'set the curline to top
            was = has   'set top to curline...but I'm not sure why this charade is required
            DisplayData 'we have to refresh
        End If
        txtTable.SetFocus   'this is the only thing you should have keyboard interface with anyway so why not?
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close intDataFileno
    End 'this is just in case do we need this?
End Sub

Private Sub Label1_Click()  'that is, the "Position:" label...un-named since this was the first label on form
    has = was   'set the curline to top
    has = has - (intCharsX * intLinesY)   'move curline up one screen
    was = has   'set top to curline
    has = was   'same comments here
    has = has + (intCharsX * intLinesY)
    was = has
    DisplayData
End Sub
Private Sub lblDump_Click()
    txtTable_KeyPress Asc(DumpKey)
End Sub

Private Sub lblEdit_Click()
    txtTable_KeyPress Asc(EditSelKey)  'I hope that this translates to Chr$(32)... later: it doesn't, I'm having to
End Sub

Private Sub lblInsert_Click()
    txtTable_KeyPress Asc(InsertKey)
End Sub

Private Sub lblJump_Click()
'why the crazy labels instead of command buttons? well, I don't like command buttons in a DOS-style
'environment because they grab the focus(and hence the keys pressed) and generally interrupt things.
'Labels are much more low-key. Witness their use in QBasic!(on the status bar)
    txtTable_KeyPress Asc(JumpKey)   'start jump sequence, Captain! (boing, boing, boing) BOOM
End Sub

Private Sub lblLessWidth_Click()
    txtTable_KeyPress Asc(LessWidthKey)
End Sub

Private Sub lblMoreWidth_Click()
    txtTable_KeyPress Asc(MoreWidthKey)
End Sub

Private Sub lblOptions_Click()
    txtTable_KeyPress Asc(OptionsKey)
End Sub

Private Sub lblResearch_Click()
    txtTable_KeyPress Asc(ReSearchKey)
End Sub

Private Sub lblSearch_Click()
    txtTable_KeyPress Asc(SearchKey)
End Sub

Private Sub lblStatus_Click()
Dim strInfo As String
'see globals.bas for the string constants contents
'see thingywin32.vbp for App. contents(right click thingywin32.vbp in Project Explorer and choose properties; choose compile tab)
    strInfo = InfoTitle & vbCrLf & vbCrLf
    strInfo = strInfo & InfoName & App.ProductName & vbCrLf
    strInfo = strInfo & InfoVersion & App.Major & "." & App.Minor & App.Revision & vbCrLf & vbCrLf
    strInfo = strInfo & InfoComments & App.Comments & vbCrLf & vbCrLf
    strInfo = strInfo & InfoCopyright & App.LegalCopyright & vbCrLf
    strInfo = strInfo & InfoTrademarks & App.LegalTrademarks & vbCrLf
    MsgBox strInfo, vbInformation
End Sub

Private Sub mnuBMarksArray_Click(Index As Integer)
Dim lngAddress As Long
        lngAddress = bkmark(Index)
        was = (lngAddress \ intCharsX) * intCharsX + 1  'snap to the nearest beginning of the line
        x = (lngAddress Mod intCharsX) + 1 'move cursor to actual data position.
        y = 1
        has = was
        DisplayData

End Sub

Private Sub mnuDMarksArray_Click(Index As Integer)
Dim begn As Long
Dim ennd As Long
'duhh pretty easy.
    begn = dmarkst(Index)
    ennd = dmarkend(Index)
    td begn, ennd
    has = was
    x = 1: y = 1
    DisplayData
End Sub

Private Sub mnuDumpManual_Click()
    Dump True
    'pass true for QuickSelect™ mode(don't know where else we might end up using this)
End Sub
'-chht- Some people say the universe is a Star Ocean. -chht-
'SUBLIMINAL MESSAGE
Private Sub mnuHideHex_Click()
    txtTable_KeyPress Asc(HideHexKey)
End Sub

Private Sub mnuIMarksArray_Click(Index As Integer)
Dim begn As Long
Dim ennd As Long
Dim opfno As Integer
    opfno = FreeFile    'open file to insert from
    Open insname(Index) For Binary As #opfno

    begn = insmark(Index, 1)
    If insmark(Index, 2) = -1 Then 'legacy format
        ennd = LOF(opfno) - 1
    Else
        ennd = insmark(Index, 2) - begn + 1
        If LOF(opfno) < ennd Then ennd = LOF(opfno)
    End If
    tInsert 1, ennd, begn, opfno
    has = was
    x = 1: y = 1
    DisplayData

End Sub

Private Sub mnuInsertManual_Click()
    Insert True
End Sub

Private Sub mnuJumpManual_Click()
Dim varManual As Variant
Dim lngAddress As Long
    varManual = InputBox(ManualMsg, ManualTitle)
    If varManual <> "" And IsNumeric(varManual) Then    'the hex conversion *should* work(from my personal testing of isnumeric with variants)
        lngAddress = varManual 'don't you just LOVE variants? :)
        was = (lngAddress \ intCharsX) * intCharsX + 1  'snap to the nearest beginning of the line
        x = (lngAddress Mod intCharsX) + 1 'move cursor to actual data position.
        y = 1
        has = was
        DisplayData
    End If
End Sub

Private Sub mnuNewBookmark_Click()
Dim desc2 As String
Dim desc3 As String
Dim intTableFileno As Integer

        desc2$ = InputBox(GetBookmark, GetBookmarkTitle)
        If desc2 = "" Then Exit Sub 'maybe they pressed cancel? then exit sub so as not to bother them further
        
        desc3$ = Chr$(13) + Chr$(10) + "(" + Hex$(was + (intCharsX * (y - 1)) + (x - 1) - 1) + "h)" + desc2$     'now compose the actual text of the bkmark
        
        intTableFileno = FreeFile
        Open strTableFile For Append As #intTableFileno
        Print #intTableFileno, desc3$
        Close #intTableFileno
        
        lmax = lmax + 1 'etc. etc. etc.
        bkmark(lmax) = (was + (intCharsX * (y - 1)) + (x - 1) - 1)
        bktext(lmax) = desc2$
        'add menu option for this bmark
        mnuBMarksArray(0).Visible = True    'we have at least one, so make visible
        Load mnuBMarksArray(lmax)   'init new menu
        mnuBMarksArray(lmax).Caption = "&" & lmax & ". " & bktext(lmax) & ":   " & Hex$(bkmark(lmax)) & " (" & bkmark(lmax) & ")"
        mnuBMarksArray(lmax).Visible = True
End Sub

Private Sub mnuNewDumpmark_Click()
    'same as NewBookmark(see above) except need to solicit ending address as well.
Dim desc2 As String
Dim desc4 As Variant
Dim desc3 As String
Dim intTableFileno As Integer

        desc2$ = InputBox(GetDumpmark, GetDumpmarkTitle)
        If desc2 = "" Then Exit Sub 'maybe they pressed cancel? then exit sub so as not to bother them further
        desc4 = InputBox(GetEndLocation, GetEndLocationtitle)
        If desc4 = "" Or (Not IsNumeric(desc4)) Then Exit Sub   'pressed cancel or bad input
        
        desc3$ = Chr$(13) + Chr$(10) + "[" + Hex$(was + (intCharsX * (y - 1)) + (x - 1) - 1) + "h-" & Hex$(desc4) & "h]" + desc2$     'now compose the actual text of the bkmark

        intTableFileno = FreeFile
        Open strTableFile For Append As #intTableFileno
        Print #intTableFileno, desc3$
        Close #intTableFileno
        
        tmax = tmax + 1 'etc. etc. etc.
        dmarkst(tmax) = (was + (intCharsX * (y - 1)) + (x - 1) - 1)
        If desc4 < dmarkst(tmax) Then
            dmarkst(tmax) = desc4
            dmarkend(tmax) = (was + (intCharsX * (y - 1)) + (x - 1) - 1)
        Else
            dmarkend(tmax) = desc4
        End If
        dtext(tmax) = desc2$
        'add menu option for this bmark
    mnuDMarksArray(0).Visible = True    'we have at least one, so make visible
    Load mnuDMarksArray(tmax)   'init new menu
    mnuDMarksArray(tmax).Caption = "&" & tmax & ". " & dtext(tmax) & ":   " & Hex$(dmarkst(tmax)) & "-" & Hex$(dmarkend(tmax)) & " (" & dmarkst(tmax) & "-" & dmarkend(tmax) & ")"
    mnuDMarksArray(tmax).Visible = True
    
End Sub

Private Sub mnuNewInsertMark_Click()
On Error GoTo OpenInsertError
        'same as NewDumpmark(see above) except need to solicit filename as well.
Dim desc2 As String
Dim desc4 As Variant
Dim desc3 As String
Dim intTableFileno As Integer
Dim opf As String
        desc2$ = InputBox(GetInsertmarkTitle, GetInsertmarkTitle)
        If desc2 = "" Then Exit Sub 'maybe they pressed cancel? then exit sub so as not to bother them further
        desc4 = InputBox(GetEndLocation, GetEndLocationtitle)
        If desc4 = "" Or (Not IsNumeric(desc4)) Then
            If vbYes = MsgBox(UseLegacyInsertMarkYesNo, vbYesNo + vbQuestion, InsertionMethod) Then
                desc4 = -1
            Else
                Exit Sub
            End If
        End If
        'solicit output file.
        CommonDialog1.DialogTitle = GetOutputFile
        CommonDialog1.Filter = OutputFileType
        CommonDialog1.ShowOpen
        opf = CommonDialog1.filename
        If desc4 = -1 Then
            desc3$ = Chr$(13) + Chr$(10) + "{" + Hex$(was + (intCharsX * (y - 1)) + (x - 1) - 1) + "h-" & opf & "}" + desc2$     'now compose the actual text of the bkmark
        Else
            desc3$ = Chr$(13) + Chr$(10) + "{" + Hex$(was + (intCharsX * (y - 1)) + (x - 1) - 1) + "h+" & Hex$(desc4) & "h-" & opf & "}" + desc2$     'now compose the actual text of the bkmark
        End If
        intTableFileno = FreeFile
        Open strTableFile For Append As #intTableFileno
        Print #intTableFileno, desc3$
        Close #intTableFileno
        
        imax = imax + 1 'etc. etc. etc.
        insmark(imax, 1) = (was + (intCharsX * (y - 1)) + (x - 1) - 1)
        insmark(imax, 2) = desc4
        instext(imax) = desc2$
        insname(imax) = opf
        mnuIMarksArray(0).Visible = True    'show the root(a separator)
        Load mnuIMarksArray(imax)   'init new
        If insmark(imax, 2) = -1 Then
            mnuIMarksArray(imax).Caption = "&" & imax & ". " & instext(imax) & ":   " & Hex$(insmark(imax, 1)) & " (" & insmark(imax, 1) & ")" & ": " & instext(imax)
        Else
            mnuIMarksArray(imax).Caption = "&" & imax & ". " & instext(imax) & ":   " & Hex$(insmark(imax, 1)) & "-" & Hex$(insmark(imax, 2)) & " (" & insmark(imax, 1) & "-" & insmark(imax, 2) & ")" & ": " & instext(imax)
        End If
        mnuIMarksArray(imax).Visible = True
OpenInsertError:
End Sub

Private Sub mnuOpenFile_Click()
'this is mostly a slimmed down copy of Form_Load
'the only added thing is the Commondlg code from LoadFiles
On Error GoTo ExitOpenFileSub
    
    'var init from thingy original
    bit16 = 0
    x = 8    'x,y are your position in the file
    y = 10
    'get filename
    CommonDialog1.DialogTitle = OpenDataFile
    CommonDialog1.Filter = DataFileTypes
    CommonDialog1.FilterIndex = 2   'Snes files wahaha
    CommonDialog1.ShowOpen
    strDataFile = CommonDialog1.filename

    intDataFileno = FreeFile   'get a free filenumber and open the file.
    Open strDataFile For Binary As #intDataFileno
    
    'misc info
    Me.Caption = strDataFile & " - " & "Thingy32"   'infoomashon
    
    lof1 = LOF(intDataFileno)
    'yes you cannot edit anything bigger than c. 160 MB. Sorry. Use Hexecute :) maybe it'll work
    If lof1 > CLng(32767) * intCharsX * intLinesY Then  'it's 10 MB+!!
        lngScrollInc = 256 * intLinesY
        vsbYPos.max = lof1 \ lngScrollInc
    ElseIf lof1 > CLng(32767) * intCharsX Then   'it's too long for our scroll bar, so we'll scroll by one screen at a time(this is for plus .5 Megabyte files)
        lngScrollInc = intCharsX * intLinesY
        vsbYPos.max = lof1 \ lngScrollInc
    Else    'it's a small file--less than 0.5 MB
        lngScrollInc = intCharsX
        vsbYPos.max = lof1 \ lngScrollInc 'now format the scroll bar(pretty easy)
    End If
    
    'more init vars--these mine or have to be after LoadFiles
    was = 1
    has = was 'these control the top line and cursor line number
    'I would have called them ScreenPos and LinePos if *I* had programmed this originally...but then I learned the MICROSOFT™® way too.
    
    'primer display of data
    DisplayData

ExitOpenFileSub:
End Sub

Private Sub mnuOpenTable_Click()
'open a new table for use; replaces current one. Only difference twixt this and mnuReloadTable is that
'this has to obtain a new file name..
On Error GoTo ExitSub
Dim intTableFileno As Integer
    'get filename
    CommonDialog1.DialogTitle = OpenTableFile1
    CommonDialog1.FilterIndex = 2   'table files
    CommonDialog1.Filter = TableFileTypes
    CommonDialog1.ShowOpen
    strTableFile = CommonDialog1.filename  'this makes sure they didn't press Cancel
    'get a free filenumber and open the file.
    intTableFileno = FreeFile
    Open strTableFile For Binary As #intTableFileno
    're-parse table file--(and close it, this function does that, BTW)
    ReadTableFile intTableFileno
    has = was   'these two lines of code make sure we don't scroll down a screen for every DisplayData call
    was = has   '(???? not sure why they're required)
    DisplayData
ExitSub:
End Sub

Private Sub mnuReloadTable_Click()
'this func just re-opens and re-reads the table file currently in use. Pretty simple...hope this helps with table file
'development(which is why I added it; it's a pain to open/close thingy all the time to show the changes you've made to the
'table file
Dim intTableFileno As Integer
    intTableFileno = FreeFile   'get a free filenumber and open the file.
    Open strTableFile For Binary As #intTableFileno
    ReadTableFile intTableFileno    're-parse table file--(and close it, this function does that, BTW)
    has = was   'these two lines of code make sure we don't scroll down a screen for every DisplayData call
    was = has   '(???? not sure why they're required)
    DisplayData
End Sub

Private Sub mnuTableSwitch_Click()
    txtTable_KeyPress Asc(TableSwitchKey)   'that was easy!
End Sub


Private Sub txtTable_Click()
Dim intCursorPos As Integer
Dim intSelEnd As Integer
Dim I As Integer
    bSelection = False
    intCursorPos = txtTable.SelStart
    
    For I = 1 To intLinesY Step 1
        If PosTable(1, I) > intCursorPos Then
            Exit For
        End If
    Next I
    y = I - 1
    For I = 1 To intCharsX Step 1
        If PosTable(I, y) > intCursorPos Then
            Exit For
        End If
    Next I
    x = I - 1
    If txtTable.SelLength > 0 Then
        bSelection = True
        intSelEnd = intCursorPos + txtTable.SelLength
        'find end pos of selection
        For I = 1 To intLinesY Step 1
            If PosTable(1, I) > intSelEnd Then
                Exit For
            End If
        Next I
        selY = I - 1
        For I = 1 To intCharsX Step 1
            If PosTable(I, selY) > intSelEnd Then
                Exit For
            End If
        Next I
        selX = I - 1
    End If
    DisplayLine y, None 'this just updates the cursor pos display

    'old but still funny
'    Beep
'    Me.lblStatus.Caption = "Hands off that mouse! thingy32 is a keyboard program, fool!"
End Sub

Private Sub txtTable_KeyDown(KeyCode As Integer, Shift As Integer)
'here we will handle the up/down/left/right/pgup/pgdown keys and we'll handle the commands from _KeyPress(it gives convenient Ascii handling)
'also, due to a peculiarity in the way thingy handles left/right line wrapping, the actual code for the up/down keys are in separate subs called
'up & down. their code is like left/right only simpler.
Select Case KeyCode
    Case vbKeyHome
        x = 1
        has = was + (intCharsX * (y - 1))
        DisplayLine y, None 'don't move the cursor
    Case vbKeyEnd
        x = intCharsX
        has = was + (intCharsX * (y - 1))
        DisplayLine y, None 'don't move the cursor
    Case vbKeyPageUp
        has = was   'set the curline to top
        has = has - (intCharsX * intLinesY)   'move curline up one screen
        was = has   'set top to curline
        DisplayData 'refresh
    Case vbKeyPageDown
        has = was   'same comments here
        has = has + (intCharsX * intLinesY)
        was = has
        DisplayData
    Case vbKeyUp
        up KeyDir.Upkey 'just scroll up one
    Case vbKeyDown
        down KeyDir.Downkey    'just scroll down one
    Case vbKeyLeft
        If x > 1 Then 'if we're not at the beginning of a line
            x = x - 1   'move x left 1 tablechar
            has = was + (intCharsX * (y - 1))  'curline = curtop plus y why not just use y here??
            DisplayLine y, Lftkey  'refresh line y or why not has here?? oh yeah...RELATIVE value not absolute value...grr
        Else
            If y > 1 Then
                x = intCharsX
                up KeyDir.Lftkey  'scroll up one
            Else 'scroll scren
                x = intCharsX  'cursor equals end of line
                was = was - intCharsX  'move top up one line
                has = was   'move curline up one line
                DisplayData 'refresh(this func puts the curline at the bottom)
            End If
        End If
    Case vbKeyRight
        If x < intCharsX Then
            x = x + 1
            has = was + (intCharsX * (y - 1))
            DisplayLine y, Rghtkey
        Else
            If y < intLinesY Then  'we're wrapping around one line but we haven't reached the bottom yet so
                x = 1
                down KeyDir.Rghtkey    'scroll down one
            Else    'here we're at the bottom so
                x = 1   'scroll down one line
                was = was + intCharsX
                has = was
                DisplayData
            End If
        End If
End Select
bSelection = False
End Sub

Private Sub txtTable_KeyPress(KeyAscii As Integer)
Dim I As Integer
Dim ennd As Long    'why isn't this static? because it doesn't need to be; it's used as soon as we fig it.
'for edit
Static begn As Long
Static select1 As Long
'for search
Static b As Long

If UCase$(Chr$(KeyAscii)) = OptionsKey Then
    Me.PopupMenu mnuOptions, , lblOptions.Left, lblOptions.Top + lblOptions.Height
End If

If UCase$(Chr$(KeyAscii)) = SearchKey Then
    b = 0   're-init position
    Search True, b    'this is the first time to search so we pass true
End If
If UCase$(Chr$(KeyAscii)) = ReSearchKey Then
  b = was + 1
    Search False, b    'we're searching again, so pass False to NewSearch
End If

If KeyAscii = Asc(EditSelKey) Then 'space--selecting data to edit
  If select1 = 1 Or bSelection = True Then
    If bSelection = True Then
        begn = was + (intCharsX * (y - 1)) + (x - 1)
        ennd = was + (intCharsX * (selY - 1)) + (selX - 1)
    Else
        ennd = was + (intCharsX * (y - 1)) + (x - 1)
    End If
    Load frmEdit
    frmEdit.edit begn, ennd 'set up the editing environment
    frmEdit.Show vbModal    'show the form so the user can edit the data
    frmEdit.WritePos intDataFileno, begn  'call sub here to write data to file
    select1 = 0 'reset static variables
    begn = 0
    has = was
    DisplayData
    lblStatus.Caption = DoneMsg
  Else  'we're *starting* to select,
    begn = was + (intCharsX * (y - 1)) + (x - 1)
    select1 = 1
    lblStatus.Caption = SelectingMsg 'give them some visual indication for crying out loud! (this was my
    'pet peeve for thingy)
    'note: my pet paranoia was the fear that the table side would exceed the length of the screen and mess up horribly.
  End If
End If
If KeyAscii = vbKeyEscape Then  'cancel all selection that we're doing
    select1 = 0 'reset static variables(for selecting)
    begn = 0
    bSelection = False
    txtTable.SelLength = 0
    lblStatus.Caption = ReadyMsg
End If

If UCase$(Chr$(KeyAscii)) = MoreWidthKey Then
    If intCharsX < 129 Then
        intCharsX = intCharsX + 1
        ResizeHexWidth
    End If
ElseIf UCase$(Chr$(KeyAscii)) = LessWidthKey Then
    If intCharsX > 2 Then
        intCharsX = intCharsX - 1
        ResizeHexWidth
    End If
End If

If UCase$(Chr$(KeyAscii)) = DumpKey Then
    Dump
End If

If UCase$(Chr$(KeyAscii)) = InsertKey Then
    Insert
End If


If UCase$(Chr$(KeyAscii)) = JumpKey Then
  Jump
  has = was
  DisplayData
End If

If UCase$(Chr$(KeyAscii)) = HideHexKey Then    'Hide hex label.
    bShowHex = Not bShowHex
    mnuHideHex.Checked = Not mnuHideHex.Checked
    If bShowHex = True Then
        lblHex.Visible = True
        TheWorldIsSquare.Visible = True
        vsbYPos.Left = lblHex.Width + lblHex.Left + 0.5 * Me.TextWidth("S") * 0.5
        txtTable.Left = vsbYPos.Left + vsbYPos.Width + Me.TextWidth("S") * 0.5
        has = was
        was = has
        DisplayData 'update hex window which hasn't updated for a while
    Else
        lblHex.Visible = False
        TheWorldIsSquare.Visible = False
        vsbYPos.Left = 0
        txtTable.Left = vsbYPos.Left + vsbYPos.Width + Me.TextWidth("S") * 0.5
    End If
    Form_Resize 'now resize to update the sizes.
End If

If UCase$(Chr$(KeyAscii)) = TableSwitchKey Then            'Tab--switch .tbl files  '<-- here is it is!! necro's one and ONLY informational comment. Feast your eyes on it!
'this doesn't work right; it's not switching the doubles. why? Later: this bug is present in thingy original so I will not attempt to fix it.
'the problem is not enough backup vars(none for the doubles)
    For I = 1 To 300
        Swap combo(I), jap(I)
        Swap comhex(I), japhex(I)
    Next I
    Swap comnewl, japnewl
    Swap comnewldbl, japnewldbl
    Swap comend, japend
    Swap comenddbl, japenddbl
    Swap jnewlhex, newlhex
    Swap jnewlhexdbl, newlhexdbl
    Swap endhex, jendhex
    Swap endhexdbl, jendhexdbl
    Swap tabl, tabl2
    has = was
    DisplayData
    lblStatus.Caption = UsingTableMsg & tabl
    lblStatus.ToolTipText = UsingTableMsg & tabl
End If
bSelection = False
End Sub

Private Sub vsbYPos_Change()
    'here we jump to the position on the scroll bar(this code is taken from Jump)
    If bCode = True Then    'if this sub was called from DisplayData(syncing the scrollbar with the datapos)
    'then don't move, or we get a stack overflow.
        bCode = False
        Exit Sub
    End If
    was = vsbYPos.Value * lngScrollInc + 1
    x = 1
    y = 1
    has = was
    DisplayData
    'warning, if you use the little scroll buttons, this sub is just as slow as scrolling normally.(unless the file is >.5 MB, then it scrolls
    'by big leaps and bounds.)
    lblStatus.Caption = ReadyMsg 'reset the Status label
End Sub

Private Sub vsbYPos_GotFocus()
    txtTable.SetFocus
End Sub

Private Sub LoadFiles() 'This loads the appropriate of files:data file, table file 1, and table file 2
'yes we've got to do this before we can let the user use anything(duh)
'this used to be called Table

On Error GoTo CancelError
Dim intStage As Integer 'this variable keeps track of how many files we've loaded
Dim intResult As Integer 'just a holder for results returned on message boxes, etc.
Dim intMaxMix As Integer    'not sure yet what htis does
Dim intTableFileno As Integer   'these are the file handles for the table files--only used at startup
Dim intTableFileno2 As Integer
Dim I As Integer    'inc counter
    'now get the filename from the user
    'first check to see if they passed us a filename in the command lineof the shortcut.
    intStage = ParseCommand(Command$())
    If intStage >= 2 Then
        GoTo Load   'if we've got at least one table file, just load them.
    End If
    If intStage = 0 Then
        CommonDialog1.DialogTitle = OpenDataFile
        CommonDialog1.Filter = DataFileTypes
        CommonDialog1.FilterIndex = 1   'All files..will implement All Supported..someday ^_^
        CommonDialog1.ShowOpen
        strDataFile = CommonDialog1.filename
        intStage = 1
    End If
    CommonDialog1.DialogTitle = OpenTableFile1
    CommonDialog1.FilterIndex = 2   'table files
    CommonDialog1.Filter = TableFileTypes
    CommonDialog1.filename = ""
    CommonDialog1.ShowOpen
    If intStage = 1 Then strTableFile = CommonDialog1.filename  'this makes sure they didn't press Cancel
    intStage = 2
    CommonDialog1.DialogTitle = OpenTableFile2
    CommonDialog1.filename = ""
    CommonDialog1.ShowOpen
    If intStage = 2 Then strTableFile2 = CommonDialog1.filename 'this makes sure they didn't press Cancel
    intStage = 3    'we're done getting the filenames
    
Load:
    intTableFileno = FreeFile   'get a free filenumber and open the file.
    Open strTableFile For Binary As #intTableFileno
    ReadTableFile intTableFileno    'parse table file number one--(and close it, this function does that, BTW)
    For I = 1 To 300 Step 1 'swap the variables to pair 2 just in case there's a second table file
        Swap jap(I), combo(I)
        Swap japhex(I), comhex(I)
    Next I
    Swap japend, comend
    Swap japend2, comend2
    Swap japenddbl, comenddbl
    Swap japenddbl2, comenddbl2
    Swap japnewl, comnewl
    Swap japnewl2, comnewl2
    Swap japnewldbl, comnewldbl
    Swap japnewldbl2, comnewldbl2
    Swap jnewlhex, newlhex
    Swap jnewlhex2, newlhex2
    Swap jnewlhexdbl, newlhexdbl
    Swap jnewlhexdbl2, newlhexdbl2
    Swap endhex, jendhex
    Swap endhex2, jendhex2
    Swap endhexdbl, jendhexdbl
    Swap endhexdbl2, jendhexdbl2
    
    If strTableFile2 = "" Then
        SwapVars
        mnuTableSwitch.Enabled = False
        Exit Sub   'if there is no second table swap the first tables value back into the main variables.
    End If
    
    If Dir$(strTableFile2) = "" Then
        MsgBox ErrorLoadingTableFromCommand, vbCritical, ErrorLoadingTable2Title
        CommonDialog1.DialogTitle = OpenTableFile2
        CommonDialog1.ShowOpen
        If intStage = 2 Then    'pressed OK
            strTableFile2 = CommonDialog1.filename
        Else    'pressed Cancel
            SwapVars
            mnuTableSwitch.Enabled = False
            Exit Sub
        End If
    End If
    intTableFileno2 = FreeFile   'get a free filenumber and open the file.
    Open strTableFile2 For Binary As #intTableFileno2
    ReadTableFile intTableFileno2    'parse table file number two(and close it--this function does that, BTW)
    Exit Sub
CancelError:    'right now the only error handled is CancelError
    'test
    Debug.Print Err.Number & Err.Description 'TEMP testing
    '/test
    If intStage = 0 Then    'we haven't loaded any files yet--do they want to quit?
        If vbYes = MsgBox(CancelData, vbYesNo, "Thingy32") Then
            End 'quit
        Else    'vbNo
            Resume  'try the file open again.
        End If
    ElseIf intStage = 1 Then     'they've loaded a data file, but no table file--do they want to quit, try again, or use Ascii(a table file which I will write later)
        intResult = MsgBox(CancelTable, vbAbortRetryIgnore + vbCritical, "Thingy32")
        If intResult = vbAbort Then
            End
        ElseIf intResult = vbIgnore Then
            strTableFile = App.Path & "\" & "Ansi.tbl"  'This is the default Ansi codes(that's the Windows equivalent of Ascii I think)
            'the extra \ shouldn't be there for root directories:don't store this program on any root directory
            intStage = 2 'flag to make sure we don't put the currently selected filename into the strTableFile var
            'Resume Next 'continue on
            GoTo Load    'changing behavior; now if you load ansi.tbl as default, it skips asking you for the second .tbl file
            'yes, I hate using goto but I can't avoid it easily.
        Else    'vbRetry
            Resume
        End If
    ElseIf intStage = 2 Then    'they've loaded a data and table file, but don't want a 2nd table file--no confirmation needed.
           strTableFile2 = ""
           intStage = 3
           Resume Next
    End If
End Sub


Public Function hexx(strText As String) As Long
'gets the hex of a string. pass the string, get a long back.
Dim I As Integer
Dim temp1 As String, temp2 As String
Dim final As Long
Dim gh As Integer
Dim tt(1 To 100) As Integer
I = 1
temp1 = ""
temp2 = ""
final = 0
gh = Len(strText)   'get the length of the text so we know how far to loop
Do While I < gh + 1
    temp1 = Mid$(strText, I, 1)
    
    If Asc(temp1) > 47 And Asc(temp1) < 58 Then   'if it's a number then just
     tt(I) = Val(temp1)    'dump out it's val
    ElseIf UCase$(temp1) = "A" Then 'otherwise, wehave to convert from hex to dec
      tt(I) = 10
    ElseIf UCase$(temp1) = "B" Then
      tt(I) = 11
    ElseIf UCase$(temp1) = "C" Then
      tt(I) = 12
    ElseIf UCase$(temp1) = "D" Then
      tt(I) = 13
    ElseIf UCase$(temp1) = "E" Then
      tt(I) = 14
    ElseIf UCase$(temp1) = "F" Then
      tt(I) = 15
    Else
      tt(I) = -1: gh = I - 1: Exit Do 'if it's not numberical or A-F then bail out
    End If   'and add what we HAVE got
    I = I + 1
Loop
I = 1
'k = 1
For I = 1 To gh
   If tt(I) = -1 Then Exit For
   final = final + tt(I) * (16 ^ (gh - I))

Next I
hexx = final

End Function
Private Sub up(kd As KeyDir)
        If y > 1 Then
            y = y - 1
            has = was + (intCharsX * (y - 1))
            DisplayLine y, kd
        Else
            was = was - intCharsX
            has = was
            DisplayData
        End If
End Sub
Private Sub down(kd As KeyDir)
        If y < intLinesY Then
            y = y + 1
            has = was + (intCharsX * (y - 1))
            DisplayLine y, kd
        Else
            was = was + intCharsX
            has = was
            DisplayData
        End If
End Sub
Private Sub DisplayLine(ByVal lngStartY As Long, Key As KeyDir)
'this used to be draw1. It displays just a single line of the raw hex/table output. However, now it just positions the cursor.
'lngStartY is the line to display, Key is the key that was pressed.


If was < 1 Then was = 1
If has < 1 Then has = 1

    has = has + intCharsX  'not sure why we need this line.

'The reason we need to know Key is because we have to offset our position by one to account for Windows' movement of the cursor
'as well as our own.
    Select Case Key
        Case KeyDir.Rghtkey
            txtTable.SelStart = PosTable(x, lngStartY) - 1
        Case KeyDir.Lftkey
            txtTable.SelStart = PosTable(x, lngStartY) + 1
        Case KeyDir.Upkey
            txtTable.SelStart = PosTable(1, lngStartY + 1) + (PosTable(x, lngStartY) - PosTable(1, lngStartY))
        Case KeyDir.Downkey
            txtTable.SelStart = PosTable(1, lngStartY - 1) + (PosTable(x, lngStartY) - PosTable(1, lngStartY))
        Case KeyDir.None
            'nanika shinai! 'This Japanese probably stinks.
    End Select
'display the cursor position in hex and dec
DisplayCursor

'Captain we have trouble BOOM in the warp drBOOM!! BOOM Help Help.I mean Mayday..BOOM
'Coming to your BOOM uh oh we have trouble in thBOOMrp drives CaptainBOOM.
'[Tales of Star Ocean title screen scrolls on]

End Sub
Private Sub Jump()
'this used to be 654. It Jumps to another part of the data file.
Dim I As Integer
Dim lngAddress As Long
Dim lngColumn As Long
Dim lngLine As Long
Dim desc2 As String
Dim desc3 As String
Dim intTableFileno As Integer
    'first let's load the jump form(so we can access its controls, etc.)
    Load frmJump
    'now call the function that readies the form for use
    frmJump.LoadBookmarks lmax, bktext, bkmark
    frmJump.Show vbModal    'show it modally so the crazed hacker cannot click back to main form and edit/scroll
    lngAddress = frmJump.ReturnAddress  'now get the address they entered, if any.
    If lngAddress = -1 Then 'cancel !!
        Exit Sub
    ElseIf lngAddress = -2 Then 'add new bookmark
        desc2$ = InputBox(GetBookmark, GetBookmarkTitle)
        If desc2 = "" Then Exit Sub 'maybe they pressed cancel? then exit sub so as not to bother them further
        
        desc3$ = Chr$(13) + Chr$(10) + "(" + Hex$(was + (intCharsX * (y - 1)) + (x - 1) - 1) + "h)" + desc2$     'now compose the actual text of the bkmark
        
        intTableFileno = FreeFile
        Open strTableFile For Append As #intTableFileno
        Print #intTableFileno, desc3$
        Close #intTableFileno
        
        lmax = lmax + 1 'etc. etc. etc.
        bkmark(lmax) = (was + (intCharsX * (y - 1)) + (x - 1) - 1)
        bktext(lmax) = desc2$

    Else    'we strongly hope that it's a real address; manually entered or bookmarked, we don't care
        was = (lngAddress \ intCharsX) * intCharsX + 1  'snap to the nearest beginning of the line
        x = (lngAddress Mod intCharsX) + 1 'move cursor to actual data position.
        y = 1
    End If
    
End Sub

Private Sub vsbYPos_Scroll()
    lblStatus.Caption = vsbYPos.Value * lngScrollInc    'this is instead of a cool-looking fake tooltip(which I never could get working)
End Sub

Private Sub Search(bNewSearch As Boolean, ByRef b As Long)  'byref is default but I like to declare where I'm intentionally changing the value of a passed variable.
'this function used to be called Search; bNewSearch is passed to determine whether this is a new search and b is the current position
'that the search starts with
Static fin As String    'this is the hex to search for
Static bit16 As Boolean
Static findd As String
Static findd2 As String
Static findd22 As String
Dim goo As Integer
Dim t As Integer    'counters
Dim newstr As String    'a temp string holder
Dim bb As Long  'a temp offset of 'b'
'''''relsearch specific
Static RelData(1 To 30) As Integer  'or the relsearch ints to search for
Static curr As Integer
Dim newAddr As Long

If bNewSearch = True Then
    fin$ = ""
    b = was 'set the current search position
    
    'get the string to search for
    Load frmEdit
    frmEdit.finddd
    frmEdit.Show vbModal
    fin$ = frmEdit.ReturnSearch(bit16) 'a byref argument because you can't pass back more than one value.
    lblStatus.Caption = CurrentSearch & frmEdit.GetTableChars   'show the current search to the user
    
    findd$ = Space$(15000)    'init search strings(or re-init)
    findd2$ = Space$(Len(fin$))
    findd22$ = Space$(1)
    
End If
If fin$ = "" Then Exit Sub  'quit if there was no search(not foolproof if you used RelSearch)

If fin$ = "RelSearch" Then    'obviously relative search mode; we have to relsearch instead.
    'first get the int array from frmEdit(if we need to)
    If bNewSearch = True Then
        curr = frmEdit.ReturnRelData(RelData)
    End If
    If curr = 1 Then Exit Sub   'if no data, no search.
    'now search
    newAddr = RelSearch(RelData, curr - 1, b, intDataFileno)
    If newAddr > -1 Then
        was = (((newAddr - 1) \ intCharsX) * intCharsX) + 1 'snap to the nearest beginning of the line
        x = (newAddr - 1) Mod intCharsX + 1 'move cursor to actual data position.
        y = 1
    End If
Else    'it's normal table search
   
    Do Until b > LOF(intDataFileno) - 1
fgh:
    'LOCATE 2, 1: Print b    'provide visual indication of what position we're searching right now(none currently because Windows programs
    'are so stupendously fast. ha ha.
    Get #intDataFileno, b, findd$   'I think here we search in increments of c. 15K
    'TODO replace direct file refs with indirect(i.e. through strData)
    For goo = 1 To 15000
        newstr$ = Mid$(findd$, goo, 1)
        
        If newstr$ = Left$(fin$, 1) Then
         bb = b + goo - 1
         For t = 1 To Len(fin$)
            bb = bb + 1
            If bit16 = True Then bb = bb + 1
            Get #intDataFileno, bb, findd22$
            If t = Len(fin$) Then
                was = ((bb - Len(fin$) - 1) \ intCharsX) * intCharsX + 1
                x = ((bb - Len(fin$) - 1) Mod intCharsX) + 1
                y = 1
                has = was
                DisplayData
                Exit Sub    'hopefully someone else understands this better than I do
            End If
            If findd22$ = Mid$(fin$, 1 + t, 1) Then
            Else
              b = b + goo
              GoTo fgh  'this goto is still in here by necessity since I don't understand this well enough to change the structure
            End If
          Next t
        End If
    Next goo
    
    b = b + 15000   'make sure we remember that we looped up by that much.
    Loop
End If
b = 1   'reset(?)
has = was 'refresh
DisplayData

End Sub
Private Sub Dump(Optional QuickSelect As Boolean = False)
Static select21 As Boolean
Static begn As Long
Dim ennd As Long
Dim intIndex As Integer
'pseudocode:
'if it's the second time, get the end val and execute actual dump code
'else if it's the first time, ask whether they want to enter manual addresses or use dumpmark(this code right here)
'if they select a dumpmark execute actual dump code using dmark
'otherwise start selecting for the end value

  If select21 = True Or bSelection = True Then
    If bSelection = True Then
        begn = was + (intCharsX * (y - 1)) + (x - 1)
        ennd = was + (intCharsX * (selY - 1)) + (selX - 1)
    Else
        ennd = was + (intCharsX * (y - 1)) + (x - 1)
    End If
    select21 = False
    td begn, ennd
    has = was
    DisplayData
    lblStatus.Caption = ReadyMsg
  Else
    'first time
    If QuickSelect = False Then
        'see if they want to use a dumpmark or not
        Load frmJump
        frmJump.LoadDumpMarks tmax, dtext
        frmJump.Show vbModal
        intIndex = frmJump.ReturnDumpMark
    Else
        intIndex = -2 'just short-circuit straight to manual mode--it's QuickSelect™!!
    End If
    If intIndex > 0 Then  'it's a dumpmark selection
        begn = dmarkst(intIndex)
        ennd = dmarkend(intIndex)
        td begn, ennd
        has = was
        x = 1: y = 1
        DisplayData
    ElseIf intIndex = -2 Then   'manual pinpoint selection
        begn = was + (intCharsX * (y - 1)) + (x - 1)
        select21 = True
        has = was
        DisplayData
        lblStatus.Caption = SelDumpEnd
    'Else    'cancel=-1 so no action
    End If
End If

    
End Sub

Private Sub Insert(Optional QuickSelect As Boolean = False)
On Error GoTo CancelErr:
'comments same as Dump()
Static select3 As Boolean
Dim intIndex As Integer
Static begn As Long
Dim ennd As Long
Dim opf As String
Dim opfno As Integer
If select3 = True Or bSelection = True Then  'manual select endpoint selected
    CommonDialog1.DialogTitle = GetOutputFile
    CommonDialog1.Filter = OutputFileType
    CommonDialog1.ShowOpen
    opf = CommonDialog1.filename
    opfno = FreeFile
    Open opf$ For Binary As #opfno
    
    If bSelection = True Then
        begn = was + (intCharsX * (y - 1)) + (x - 1) - 1
        ennd = was + (intCharsX * (selY - 1)) + (selX - 1) - begn
    Else
        ennd = was + (intCharsX * (y - 1)) + (x - 1) - begn
    End If
    If LOF(opfno) < ennd Then ennd = LOF(opfno)
    
    select3 = False
    Call tInsert(1, ennd, begn, opfno)
    Close #opfno
    has = was
    DisplayData
    lblStatus.Caption = ReadyMsg
Else    'first time to press 'I'

    If QuickSelect = False Then 'load the dialog and find out what they want to do
        Load frmJump
        frmJump.LoadInsertMarks imax, instext
        frmJump.Show vbModal
        intIndex = frmJump.ReturnDumpMark
    Else    'we're in QuickSelect mode, so don't ask them what to do...we already know they just want to manual select
        intIndex = -2
    End If
    
    If intIndex > 0 Then 'if an insertmark
        opfno = FreeFile
        Open insname(intIndex) For Binary As #opfno
        begn = insmark(intIndex, 1)
        If insmark(intIndex, 2) = -1 Then 'legacy format
            ennd = LOF(opfno)
        Else    'new format
            ennd = insmark(intIndex, 2) - begn + 1
            If LOF(opfno) < ennd Then ennd = LOF(opfno)
        End If
        Call tInsert(1, ennd, begn, opfno)
        Close #opfno
        has = was
        DisplayData
        x = 1: y = 1
    ElseIf intIndex = -2 Then 'manual pinpoint selection
        begn = was + (intCharsX * (y - 1)) + (x - 1) - 1
        select3 = True
        has = was
        DisplayData
        lblStatus.Caption = SelInsertEnd
    End If
    Exit Sub
End If
CancelErr:  'just exit sub if they want to cancel
    'but reset vals first
    select3 = False
    lblStatus.Caption = ReadyMsg
End Sub

Private Sub td(begn As Long, ennd As Long)
'the dump function: begn = begin address; ennd = end
Dim doeh As Boolean, doehdbl As Boolean
Dim daku As Boolean, handa As Boolean
Dim linkflag As Integer
Dim eh As String, eh2 As String
Dim opf As String
Dim opfno As Integer
Dim o As Integer, r As Integer, he As Integer
Dim tpos As Long
Dim this As String, this2 As String, this3 As String
Dim hexamt As Integer
    On Error GoTo ErrorExitSub
eh$ = Chr$(hexx(endhex))
eh2$ = Chr$(hexx(endhexdbl))
doeh = False: doehdbl = False
If endhex <> "  " Then doeh = True  'there IS an endsection signal
If endhexdbl <> "  " And endhexdbl <> vbCrLf Then doehdbl = True    'there IS a *double* endsection

linkflag = 0
    CommonDialog1.DialogTitle = GetOutputFile
    CommonDialog1.Filter = OutputFileType
    CommonDialog1.ShowSave
    opf = CommonDialog1.filename
    opfno = FreeFile
    Open opf$ For Output As #opfno  'sequential mode(like printing)
'print a start/end notice for maintainable scripts.
Print #opfno, DumpStart & Hex$(begn) & " (" & Str$(begn) & " )" & DumpEnd & Hex$(ennd) & " (" & Str$(ennd) + " )" & vbCrLf & vbCrLf
Dim tu As String
Dim tu2 As String
Dim tu3 As String
Dim tu4 As String
Dim ta As Long
Dim I As Long
Dim end1 As Long
ts = ""
ta = begn
end1 = ennd
Do While ta < end1

tu4 = " "
tu3 = " "
tu2 = " "
tu = " "
tpos = ta

Get #intDataFileno, tpos, tu
Get #intDataFileno, tpos - 1, tu2
Get #intDataFileno, tpos + 1, tu3
Get #intDataFileno, tpos + 2, tu4
Do While (Asc(tu3) <> Asc(eh2$) Or doehdbl = False) And (Asc(tu) <> Asc(eh$) Or doeh = False) And tpos < end1 + 1
'This very confusing While says: go until End of dump or we hit the end section signal(if there is one). Furthermore, if the end section is
'double-byte, make sure that the second byte checks out as well. Ugh. But it had to be done.
tpos = tpos + 1


this$ = Hex$(Asc(tu))
this2$ = Hex$(Asc(tu3))
this3$ = Hex$(Asc(tu4))
If Len(this$) = 1 Then this$ = "0" + this$
If Len(this2$) = 1 Then this2$ = "0" + this2$
If Len(this3$) = 1 Then this3$ = "0" + this3$

For o = 1 To commax
    If comhex(o) = this$ Then
        ts = combo(o)
        GoTo endosub 'these goto left in because I am too demoralized to take them out :(
    End If
Next o
For o = 1 To dblmax
    If dblhex(o) = this$ + this2$ Then
        ts = dbl(o)
        tpos = tpos + 1
        GoTo endosub2
    End If
Next o
For o = 1 To trplmax
    If trplhex(o) = this$ + this2$ + this3$ Then
        ts = trpl(o)
        tpos = tpos + 2
        GoTo endosub3
    End If
Next o

this$ = Hex$(Asc(tu))
If Len(this$) = 1 Then this$ = "0" + this$
If skipnon = 0 Then ts = "<$" + this$ + ">"

endosub:
If this$ = newlhex Or this$ = newlhex2 Then
    If newlhexdbl <> vbCrLf And newlhexdbl <> "  " Then 'if there's a second byte, only let it match IF the second byte matches as well
        If this2$ = newlhexdbl Then
            tpos = tpos + 1 'inc past the second byte(otherwise it appears as a normal table entry as *. This makes for ugly dumps)
            ts = Chr$(13) + Chr$(10)
        End If
    ElseIf newlhexdbl2 <> vbCrLf And newlhexdbl2 <> "  " Then
        If this2$ = newlhexdbl2 Then
            tpos = tpos + 1 'inc past the second byte.
            ts = Chr$(13) + Chr$(10)
        End If
    Else    'no double byte atall--so who cares about the second byte?
        ts = Chr$(13) + Chr$(10)
    End If
End If
endosub2:
If daku = True Then 'check to see if we saw any /han/daku the previous loop
    ts2 = Mid$(ts, 2, 1)    'if yes, extract the second char from the string to be written
    Mid$(ts, 2) = Chr$(Asc(ts2) + 1)    'and inc its ASCII one?!?@?
    daku = False    'reset flags
    linkflag = 0
End If
If handa = True Then
    ts2 = Mid$(ts, 2, 1)
    Mid$(ts, 2) = Chr$(Asc(ts2) + 2)
    handa = False
    linkflag = 0
End If

endosub3:   'this is the goto for triple-bytes. I don't know if this code is correct.
'NO idea. this is just an alteration of the double-byte code.
If daku = True Then
    ts2 = Mid$(ts, 3, 1)
    Mid$(ts, 3) = Chr$(Asc(ts2) + 1)
    daku = False
    linkflag = 0
End If
If handa = True Then
    ts2 = Mid$(ts, 3, 1)
    Mid$(ts, 3) = Chr$(Asc(ts2) + 2)
    handa = False
    linkflag = 0
End If

For r% = 1 To linkmax
    If Asc(tu) = link(r%) And Asc(tu) <> 0 Then
    linkflag = 1
    hexamt = linkamt(r%)
        Exit For
    End If
Next r%
'check to see if there were /han/dakuten chars provided
If dodaku = True Then
    If Asc(tu) = dak Then daku = True: linkflag = -1    'if there's a match then xxx
    If Asc(tu3) = dak And dakfront = 1 Then 'also check on the end to see if they're storing them backwards
        ts2 = Mid$(ts, 2, 1) 'err...
        Mid$(ts, 2) = Chr$(Asc(ts2) + 1) 'err...2
        daku = False
        linkflag = 0
        tpos = tpos + 1
    End If
    If Asc(tu) = hand Then handa = True: linkflag = -1
    If Asc(tu3) = hand And dakfront = 1 Then
        ts2 = Mid$(ts, 2, 1)
        Mid$(ts, 2) = Chr$(Asc(ts2) + 2)
        handa = False
        linkflag = 0
        tpos = tpos + 1
    End If
End If


If linkflag = 1 Then    'unidentified; if we're doing dirty dumps, Print #it.
    this$ = Hex$(Asc(tu))
    If Len(this$) = 1 Then this$ = "0" + this$
    If skipnon = 0 Then Print #opfno, "<$" + this$ + ">";
End If

If linkflag = 0 Then Print #opfno, ts;  'identified; Print #it.

Get #intDataFileno, tpos, tu
Get #intDataFileno, tpos - 1, tu2
Get #intDataFileno, tpos + 1, tu3
Get #intDataFileno, tpos + 2, tu4

If linkflag = 1 Then    'this may supposed to be -1, not 1...or not, considering we loaded new data just now
    For he% = 1 To hexamt
        hexie(he%) = Hex$(Asc(tu))
        If Len(hexie(he%)) = 1 Then hexie(he%) = "0" + Hex$(Asc(tu))
        tpos = tpos + 1
        Get #intDataFileno, tpos, tu
        Get #intDataFileno, tpos - 1, tu2
    Next he%
    For he% = 1 To hexamt
        If skipnon = 0 Then Print #opfno, "<$" + hexie(he%) + ">";
    Next he%
    linkflag = 0
End If


ts = ""
Loop    'this used to be Wend and the above was just While, not Do While. But there should be no difference
If doehdbl = True Then  'if there is a second byte, we need to skip that byte so its table value doesn't show up
'in the dump.
    tpos = tpos + 1
End If
ta = tpos + 1

Print #opfno, "<END>"
Print #opfno, ""    'put an extra line in thar,k?
Loop

Close #opfno
begn = 0: ennd = 0
ErrorExitSub:
    
End Sub

Private Sub tInsert(begn As Long, ennd As Long, begn2 As Long, intInsFileno As Integer)
'old name: Insert, changed because I already had one called insert.
'begn is the point to start reading from the insert file; ennd is the point to stop reading; begn2 is the point to start insertion.

'(necrosaro) switched all occurences of intInsFileno with intDataFileno. You had them backwards before.
'variable list
Dim link As Integer
Dim o As Integer, r As Integer
Dim code As String
Dim tpos As Long
Dim pointfinal As String
Dim tab1 As Integer
Dim tua As String
Dim bina As Long    'maybe?
Dim noDTE As Boolean
Dim tu2 As String
'already in sub:
Dim tu As String
Dim ta As Long
Dim done1 As String
Dim tempx As String
Dim done2 As String
Dim I As Long
Dim end1 As Long
Dim ci As Long

code$ = " "
ta = begn
end1 = ennd
While ta < end1
    ts$ = " "
    tu = " "
    tpos = ta
    ci = begn2
    
    Get #intInsFileno, tpos, tu
    
    If pointbegin <> 0 Then
        If header = 0 Then done1 = Right$(Hex$(ci - begn2), 2)
        If header = 0 Then done2 = Hex$(Int((ci - begn2) / 256))
        If header > 0 Then done1 = Right$(Hex$(ci - header), 2)
        If header > 0 Then done2 = Left$(Right$(Hex$(ci - header), 4), 2)
        If Len(done1) = 1 Then done1 = "0" + done1
        If Len(done2) = 1 Then done2 = "0" + done2
        pointfinal$ = pointfinal$ + Chr$(hexx(done1)) + Chr$(hexx(done2))
    End If
        
    While tpos < end1 + 1
        link = 0
        tpos = tpos + 1
        tab1 = Asc(tu)
        For o% = 1 To 257
            If combo(o%) <> "" And Len(combo(o%)) = 1 Then
                If tab1 = 13 Then
                    ts$ = Chr$(hexx(newlhex))
                    tpos = tpos + 1
                    If comnewldbl > 0 Then '(necrosaro) This was previously causing an error, comparing a string (newlhexdbl) to an integer(0).
                        '(Zackman) Oops, compared the wrong variable...my standard is to compare the integers, not the strings.
                        ts2$ = Chr$(hexx(newlhexdbl))
                        '(necrosaro) tpos = tpos + 1 This needs to be commented out, i dunno why, it just does.
                    End If
                    Exit For
                End If
                If tab1 = Asc(combo(o%)) Then ts$ = Chr$(hexx(comhex(o%))): Exit For
            End If
        Next o%
        
        If Asc(tu) = 10 Then link = 1
        If Asc(tu) = 60 Then link = 2
        
        If link = 0 Then Put #intDataFileno, ci + 1, ts$: ci = ci + Len(ts$)
        
        Get #intInsFileno, tpos, tu
        
        If link = 2 Then
          If tu = "L" Then
            tua$ = "        "
            Get #intInsFileno, tpos, tua$
            tempx = Chr$(24)
            Put #intDataFileno, ci + 1, tempx: ci = ci + 1
            tempx = Chr$(hexx(Mid$(tua$, 6, 2)))
            Put #intDataFileno, ci + 1, tempx: ci = ci + 1
            tpos = tpos + 8
            Get #intInsFileno, tpos, tu
        
          ElseIf tu = "E" Then
            tempx = Chr$(comend - 1)
            Put #intDataFileno, ci + 1, tempx: ci = ci + 1
            tpos = tpos + 6
            Get #intInsFileno, tpos, tu
        
        If pointbegin <> 0 Then
            If header = 0 Then done1 = Right$(Hex$(ci - begn2), 2)
            If header = 0 Then done2 = Hex$(Int((ci - begn2) / 256))
            If header > 0 Then done1 = Right$(Hex$(ci - header), 2)
            If header > 0 Then done2 = Left$(Right$(Hex$(ci - header), 4), 2)
            If Len(done1) = 1 Then done1 = "0" + done1
            If Len(done2) = 1 Then done2 = "0" + done2
            If LOF(intInsFileno) > tpos + 7 Then pointfinal$ = pointfinal$ + Chr$(hexx(done1)) + Chr$(hexx(done2))
              '(necrosaro) This used to be LOF(4), probably just one you missed.
        End If
        
          ElseIf tu = "$" Then
            tpos = tpos + 1
            tua$ = "  "
            Get #intInsFileno, tpos, tua$
            tempx = Chr$(hexx(tua$))
            Put #intDataFileno, ci + 1, tempx: ci = ci + 1
            tpos = tpos + 3
            bina = bina + 1
            Get #intInsFileno, tpos, tu
        
          ElseIf tu = "D" Then
            If noDTE = False Then
              noDTE = True
            ElseIf noDTE = True Then noDTE = False
            End If
            tpos = tpos + 6
            Get #intInsFileno, tpos, tu
        
          End If
        End If
        
        
5766
        If noDTE = False Then
            tu2$ = " "
            Get #intInsFileno, tpos, ts$
            Get #intInsFileno, tpos + 1, tu2$
                        
            For r% = 1 To commax
                If ts$ + tu2$ = combo(r%) Then
                  tempx = Chr$(hexx(comhex(r%)))
                  Put #intDataFileno, ci + 1, tempx: ci = ci + 1
                  tpos = tpos + 2
                  Get #intInsFileno, tpos, tu
                  GoTo 5766 'ugh but I'm leaving it in here for want of understanding
                End If
            Next r%
        End If
        ts$ = " "
        tu2$ = " "
    Wend
    
    ta = tpos + 1
    ts$ = ""
Wend

'PUT #intInsFileno, begn2 + 1, opi$ 'shockingly, necrosaro's 3RD COMMENT!!(there was 1(count it) ONE informational one)
If pointbegin <> 0 Then Put #intDataFileno, pointbegin, pointfinal$

End Sub

Public Function ParseCommand(strCommand As String) As Integer
'parse the command string to see if the shortcut used to start thingy32 contains the name of the data file and the table file(s)
Dim pos2 As Integer, pos3 As Integer, pos4 As Integer
Dim intStage As Integer
    'init vars(all to 0)
    intStage = 0
    pos2 = 0
    pos3 = 0
'this sub parses the Command() string passed to us from the shortcut used to start thingy32.(I'm purloining Necro's code again for this one)
Do
   pos2 = pos2 + 1   'start pos2 at 1 for our first check, then inc
   If Len(strCommand) < pos2 Or Mid$(strCommand, pos2, 1) = "/" Then
   'loop until we're at the end OR we've a space
      strDataFile = Mid$(Command$, 1, pos2 - 1) 'anyway, filename is the first item
      Exit Do
   End If
Loop While strDataFile = ""

If strDataFile <> "" Then   'we found a file!
    strDataFile = Trim$(strDataFile)    'trim the spaces
    If Dir$(strDataFile) <> "" Then     'now we have to verify it.
        intStage = 1
    Else
        intStage = 0
        ParseCommand = intStage   'bad file, jump ship!
        MsgBox ErrorLoadingDataFromCommand, vbCritical, ErrorLoadingDataTitle
        Exit Function
    End If
Else
    intStage = 0
    ParseCommand = intStage   'no file, jump ship!
    Exit Function
End If

pos3 = pos2 'now set the end pos for the table file at the end of the
'filename
Do
   pos3 = pos3 + 1
   If Len(Command$) < pos3 Or Mid$(Command$, pos3, 1) = "/" Then
   'same routine, loop until EOLine or we hit a space
      strTableFile = Mid$(Command$, pos2 + 1, pos3 - pos2 - 1)
     Exit Do
   End If
Loop While strTableFile = ""

If strTableFile <> "" Then  'see data file code for instructions
    strTableFile = Trim$(strTableFile)
    If Dir$(strTableFile) <> "" Then
        intStage = 2
    Else
        ParseCommand = intStage 'bad file, jump ship with just the data file loaded.
        MsgBox ErrorLoadingTableFromCommand, vbCritical, ErrorLoadingTableTitle
        Exit Function
    End If
Else
    ParseCommand = intStage 'no table file, jump ship with just the data file loaded.
    Exit Function
End If
pos4 = pos3 'OK, OK no explanation this time
Do
   pos4 = pos4 + 1
   If Len(Command$) < pos4 Or Mid$(Command$, pos4, 1) = "/" Then
      strTableFile2 = Mid$(Command$, pos3 + 1, pos4 - pos3 - 1)
      Exit Do
   End If
Loop While strTableFile2 = ""

If strTableFile2 <> "" Then  'see data file code for instructions
    strTableFile2 = Trim$(strTableFile2)
    If Dir$(strTableFile2) <> "" Then
        intStage = 3
    Else
        ParseCommand = intStage 'bad file, jump ship
        Exit Function
    End If
Else
    ParseCommand = intStage 'no table file 2
    Exit Function
End If


ParseCommand = intStage
End Function

Private Sub SetLanguage()
'this is called from Form_Load and sets all the labels' captions to the current language(constants defined in global.bas)
    Label1.Caption = PositionLabel   'this is an awful name but I never thought I'd do an international version
    lblStatus.Caption = ReadyMsg
    With lblOptions
        .Caption = OptionsLabel
        .ToolTipText = OptionsTooltip
    End With
    mnuBookmarks.Caption = BookmarkLabel
    mnuDumpmarks.Caption = DumpmarkLabel
    mnuInsertmarks.Caption = InsertmarkLabel
    mnuJumpManual.Caption = JumpManual
    mnuDumpManual.Caption = DumpManual
    mnuInsertManual.Caption = InsertManual
    mnuNewBookmark.Caption = AddNewBookMark
    mnuNewDumpmark.Caption = AddNewDumpMark
    mnuNewInsertMark.Caption = AddNewInsertMark
    mnuHideHex.Caption = HideHex
    mnuTableSwitch.Caption = TableSwitch
    mnuOpenFile.Caption = OpenNewFile
    mnuOpenTable.Caption = OpenNewTable
    mnuReloadTable.Caption = ReloadTable
    With lblJump
        .Caption = JumpLabel
        .ToolTipText = LabelTooltip
    End With
    With lblEdit
        .Caption = EditSelLabel
        .ToolTipText = LabelTooltip
    End With
    With lblSearch
        .Caption = SearchLabel
        .ToolTipText = LabelTooltip
    End With
    With lblResearch
        .Caption = ReSearchLabel
        .ToolTipText = LabelTooltip
    End With
    With lblDump
        .Caption = DumpLabel
        .ToolTipText = LabelTooltip
    End With
    With lblInsert
        .Caption = InsertLabel
        .ToolTipText = LabelTooltip
    End With
    With lblMoreWidth
        .Caption = MoreWidthLabel
    End With
    With lblLessWidth
        .Caption = LessWidthLabel
    End With
End Sub

Private Sub DisplayCursor()
Dim FONT_WIDTH As Integer
Dim FONT_HEIGHT As Integer
'just displays the cursor position in hex and decimal
'and moves the WorldIsSquare cursor to the correct position over the hex pane.
    FONT_WIDTH = Me.TextWidth("o")
    FONT_HEIGHT = Me.TextHeight("o")
    lblPosition.Caption = Hex$(was + (intCharsX * (y - 1)) + (x - 1) - 1) & " (" & Str$(was + (intCharsX * (y - 1)) + (x - 1) - 1) + " )"
    If bShowHex = True Then
        TheWorldIsSquare.Move lblHex.Left + (FONT_WIDTH * 2 * (x - 1)) + FONT_WIDTH + 15, lblHex.Top + (FONT_HEIGHT * (y - 1))
    End If
End Sub

Private Sub ResizeHexWidth()
Dim FONT_WIDTH As Integer
    'resize visual elements
    FONT_WIDTH = Me.TextWidth("o")  'this allow compatibility with 'large font' systems ugh.
    With lblHex 'change the hex/scrollbar combo
        .Left = 0
        .Width = ((intCharsX * 2) + 3.125) * FONT_WIDTH
        If bShowHex = True Then
            vsbYPos.Left = .Width + .Left + 0.5 * FONT_WIDTH
        Else
            vsbYPos.Left = 0
        End If
        txtTable.Left = vsbYPos.Left + vsbYPos.Width + 0.5 * FONT_WIDTH
    End With
    If (Me.ScaleWidth - 15 - txtTable.Left) > 10 Then   'change the table display
        txtTable.Width = Me.ScaleWidth - 15 - txtTable.Left
    End If
    'move the morewidth label to align with right edge of lblHex
    lblMoreWidth.Left = lblHex.Left + lblHex.Width - lblMoreWidth.Width
    'end resize visual elements
    're-size the data
    '1.look up table
    ReDim PosTable(1 To intCharsX, 1 To intLinesY) As Integer  'the cursor position lookup table.
    '2.cursorpos
    If x > intCharsX Then x = intCharsX
    '3.scroll bar
    If lof1 > CLng(32767) * intCharsX * intLinesY Then  'it's 10 MB+!!
        lngScrollInc = 256 * intLinesY
        vsbYPos.max = lof1 \ lngScrollInc
    ElseIf lof1 > CLng(32767) * intCharsX Then   'it's too long for our scroll bar, so we'll scroll by one screen at a time(this is for plus .5 Megabyte files)
        lngScrollInc = intCharsX * intLinesY
        vsbYPos.max = lof1 \ lngScrollInc
    Else    'it's a small file--less than 0.5 MB
        lngScrollInc = intCharsX
        vsbYPos.max = lof1 \ lngScrollInc 'now format the scroll bar(pretty easy)
    End If
    '4.display to the user.
    has = was   'set the curline to top
    was = has   'set top to curline...but I'm not sure why this charade is required(later note: I still don't know, but if you don't do it,
    'every time you call DisplayData it also scrolls down one screen (??)
    DisplayData 'we have to refresh
    'end resize data
End Sub
