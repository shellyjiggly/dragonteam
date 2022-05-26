VERSION 5.00
Begin VB.Form frmEdit 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Edit File Data"
   ClientHeight    =   3075
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5220
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3075
   ScaleWidth      =   5220
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Alphabet Order"
      Height          =   735
      Left            =   120
      TabIndex        =   6
      Top             =   2040
      Visible         =   0   'False
      Width           =   3495
      Begin VB.OptionButton optAlphaOrder 
         Caption         =   "abc, ABC"
         Height          =   375
         Index           =   1
         Left            =   1800
         TabIndex        =   8
         Top             =   240
         Width           =   1455
      End
      Begin VB.OptionButton optAlphaOrder 
         Caption         =   "ABC, abc"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   7
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.TextBox txtAddHex 
      Height          =   285
      Left            =   2640
      TabIndex        =   2
      Top             =   1635
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Label lblSearchMode 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Click here to change to Relative Search"
      Height          =   855
      Left            =   3720
      TabIndex        =   5
      Top             =   1920
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblHexOutput 
      Caption         =   "[AABBBBBBBBBBB]"
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   5055
   End
   Begin VB.Label lblAddHex 
      Caption         =   "Type your hex character in here:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.Label lblInfo 
      AutoSize        =   -1  'True
      Caption         =   "Type your text in here.  Press ESC or Enter to save and return to the main hexeditor."
      Height          =   390
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   4470
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblOutput 
      Caption         =   "[Wahahahahahaha]"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   5055
   End
End
Attribute VB_Name = "frmEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'this form started on 10 Sep.
    'I am about halfway done with the code in the actual edit sub in the original file--not including the SUBs that really do the work; I've only
'done 1 of those(PrintHex).
    '12 Sep: I have coded all but 1 sub: suggest. I think this is the Big One that we're all dreading...
    '14 Sep: Oh wait, I missed hexequiv; I know it was too good to be true when I saw how short suggest was(it's nearly done, BTW)
    '15 Sep: I'm in the process of debugging this form--it's going well(kind of) so far the only bug I've found so far in my 2 min. testing has
'been the fact that the last key you pressed which is then converted into hex stays in the entry box--I'll have to figure a way to get around that.
'Yess! It works great (to the exception of the last key appearing bug which is merely annoying) also I haven't tested the suggest or the
'enter hex directly mode. Later: They work perfectly as far as I can tell; no bugs encounted in normal use let's say. I can't believe this is so EASY!
    '19 Sep: I am altering this form so it does double duty for both edit and finddd; there will be two form startup and two form close functions,
'one for each mode of use.
    '20 Sep: Yes! The search appears to work perfectly although I haven't tested the } key that turns 16 bit on...whatever *that* is.
    '7 Oct: Fixed a couple of bugs(off by 1 errors) and added another label to display hex on its own. I'm clearing the text box all the time now
'Also I'm fixing the 'backspace' bug where you would enter a non-valid key and then back space it and it would delete the last valid
'char(s) entered. I'm not fixing that...I'm fixing the crash you got if an invalid key was the *only* key currently entered.
'Of note is the fact that I think that bug might have been in the original thingy...the code is *still* buggy...suggest does *not* work right
'with stuff like 'ra' but no 'r' in the table. This makes it a pain to hack a Japanese game to Japanese using romaji because you can't type in
'anything except that has all the characters in there but the last one: the example I'm thinking of:
'       5F=Heart
'     You can't type Heart in directly and have it be recognized *unless* you also have the following in the table:
'       6F=H    70=He   71=Hea  72=Hear
'   this is a bug which I am not sure I am up to fixing...but I sure have a good description of it!
'MUCH later: I have a pretty good idea of how to fix this bug...it'll have to wait until after the relative
'search is in, though.
Dim text(1 To 500) As String
Dim hextxt(1 To 500) As String
Dim buffer As String
Dim max As Long
Dim curr As Long    'this might not need to be global but I'm not betting on it...(in _KeyPress)
Dim newhex As String    'another possible non-global(in same)
Dim mode As Boolean 'true = edit mode, false = search mode
'these are finddd vars
Dim strFind As String
Dim bit16 As Boolean
'these are relative search vars
Dim bRelSearch As Boolean   'are we relative searching?
Dim bAlphaOrder As Boolean  'is A or a first?
Dim RelData(1 To 30) As Integer    'the arrays that hold the actual typed data.
Dim TextTyped(1 To 30) As String
Dim curNumBuff As Variant   'the number buffer for the number that is being typed.


Public Function GetTableChars() As String
    'this func returns the caption of the label(use it to get the pretty version of the string the user typed in for use with other forms)
    GetTableChars = lblOutput.Caption
End Function

Public Sub edit(begn As Long, ennd As Long)
'this sub just loads everything up; it is called by frmThingy when the user presses spacebar to select something
'I have adopted the horribly misspelled names because I want to cut&paste the code from the original in thingy.bas

Erase text  'just in case this form has already been loaded clear these arrays out
Erase hextxt
mode = True 'this means we're in edit mode
bRelSearch = False  'obviously can't relsearch in edit mode.
Me.Caption = TitleEdit
If begn > ennd Then max = begn - ennd + 1
If begn < ennd Then max = ennd - begn + 1
If begn = ennd Then max = 1   'they're on
curr = 1
hextxt(curr) = ""
lblSearchMode.Visible = False 'only display relevant controls.
Frame1.Visible = False
PrintHex    'show our initial display
'now the program goes into msg loop mode so here this sub ends!
End Sub
Public Sub finddd()
    'called by frmThingy when the user wants to find something.
    mode = False 'this means we're in finddd mode
    bRelSearch = False 'relsearch defaults to off.
    Me.Caption = TitleSearch
    Erase hextxt
    Erase text
    max = 30
    curr = 1
    hextxt(curr) = ""
    'now the rel search vars
    Erase RelData
    Erase TextTyped
    lblSearchMode.Visible = True
    lblSearchMode.Caption = ChangeRelSearch
    Frame1.Visible = False
    bRelSearch = False
    'now draw the first display
    PrintHex
End Sub
Private Sub PrintHex()  'this sub refreshes the Input text box and the output label
Dim strOutput As String
Dim strHexOutput As String
Dim I As Integer, o As Integer, k As Integer    'counters
Dim cntrr As Integer
    If bRelSearch = True Then
        PrintData
        Exit Sub
    End If
'lblHexOutput first
strHexOutput = strHexOutput & "[" 'visual clues for end&begin
I = 1
Do While I < max
   If hextxt(I) <> "" Then
     k% = I
     For o = 1 To Len(hextxt(I)) / 2
        strHexOutput = strHexOutput & Mid$(hextxt(k), o * 2 - 1, 2)
        I = I + 1
        If I < max Then strHexOutput = strHexOutput & ""  'do NOT ask me why we do this
     Next o
   ElseIf hextxt(I) = "" Then   'couldn't this just be an else?
      strHexOutput = strHexOutput & "  "
      I = I + 1
      If I < max Then strHexOutput = strHexOutput & ""
   End If
Loop
strHexOutput = strHexOutput & "]"

strOutput = strOutput & "["
cntrr = 0
'lblOutput
For I = 1 To max - 1
'    If Len(text(i)) = 1 Then Color 4   'oops no coloring right now
'    If Len(text(i)) = 2 Then Color 12
'    If Len(text(i)) = 3 Then Color 7
'    If Len(text(i)) > 3 Then Color 14
    
    
    If Len(text(I)) <> 1 Then
      cntrr = cntrr + (Len(text(I)))
    Else: cntrr = cntrr + 1
    End If
    
    If text(I) = Chr$(13) Then strOutput = strOutput & Str$(cntrr - 1): cntrr = 0
    If text(I) <> "" Then strOutput = strOutput & text(I)
Next I
strOutput = strOutput & buffer
strOutput = strOutput & "]"
'Color 15

lblHexOutput.Caption = strHexOutput
lblOutput.Caption = strOutput

End Sub

Private Sub Form_Load()
    'this is the SetLanguage code, like from the main form
    lblInfo.Caption = TypeTextHere
    'this one's invisible until you hit the code to manually enter hex... ` or @
    lblAddHex.Caption = TypeHexHere
    'visible in search mode
    lblSearchMode.Caption = ChangeRelSearch
    'visible in *relative* search mode
    Frame1.Caption = AlphaOrder
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'turn their mouse-click into pressing the 'Esc' key. I told you thingy32 wasn't mouse oriented!
    If UnloadMode = vbFormControlMenu Then
        Cancel = 1  'do not let them *unload*, we really just *hide*. Otherwise it messes up everything. I told you thingy32 wasn't mouse oriented!
        Form_KeyDown vbKeyEscape, 0
    End If
End Sub

Private Sub lblSearchMode_Click()
    'flip mode
    bRelSearch = Not bRelSearch
    'show(or hide) controls
    Frame1.Visible = bRelSearch
    If bRelSearch = True Then
        lblSearchMode.Caption = ChangeTblSearch
    Else
        lblSearchMode.Caption = ChangeRelSearch
    End If
    'clear relsearch data
    Erase RelData
    Erase TextTyped
    curNumBuff = ""
    lblOutput.Caption = ""
    lblHexOutput.Caption = ""
    'and clear table search data
    Erase hextxt
    Erase text
    max = 30
    curr = 1
    hextxt(curr) = ""
    PrintHex    'print the little [] so we're not lost. -_^
End Sub

Private Sub optAlphaOrder_GotFocus(Index As Integer)
    'if we just finished adding a hex, don't ERASE!
    If txtAddHex.text <> "" Then
        txtAddHex.text = ""
        Exit Sub
    End If
    'flip Alphabet order
    'false = Ucase starts at 0; true = Lcase starts at 0
    If Index = 0 Then bAlphaOrder = False Else bAlphaOrder = True
    'clear data
    Erase RelData
    Erase TextTyped
    curr = 1
    curNumBuff = ""
    lblOutput.Caption = ""
    lblHexOutput.Caption = ""
    PrintData   'show the little [] so we're not totally lost

End Sub


Private Sub optAlphaOrder_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Form_KeyDown KeyCode, Shift
End Sub

Private Sub optAlphaOrder_KeyPress(Index As Integer, KeyAscii As Integer)
    Form_KeyPress KeyAscii
End Sub

Private Sub txtAddHex_KeyPress(KeyAscii As Integer)
'here we get two 1 char strings(checking to make sure they are hex digits)
'and then add them to the string that we're building
Static buf As String
    If (KeyAscii > 64 And KeyAscii < 70) Or (KeyAscii > 96 And KeyAscii < 103) Or (KeyAscii > 47 And KeyAscii < 58) Then
    'then process it if it's a hex digit(now included Lcase support)
        If buf$ <> "" Then  'if buf still equals "" then we're still looking for second digit; if it's filled then
        'we're ready to roll
            KeyAscii = Asc(UCase$(Chr$(KeyAscii))) 'we have to ucase the digit if it's lcase...
            If bRelSearch = True Then
                RelData(curr) = frmThingy32.hexx(buf$ + Chr$(KeyAscii))
                TextTyped(curr) = UCase$(buf$) + Chr$(KeyAscii)
                curNumBuff = ""
            Else
                hextxt(curr) = UCase$(buf$) + Chr$(KeyAscii)
                text(curr) = "#"  'heh, don't worry trying to fig if there is a table val for this.
            End If
          curr = curr + 1
          buf = ""  'reset buff
          PrintHex
'          txtInput.SetFocus
          txtAddHex.Visible = False
          lblAddHex.Visible = False

        Else
            buf$ = Chr$(KeyAscii) 'back up key pressed and get another
        End If
        
    'Else   'here we could beep or otherwise insult the user for not entering a hex digit--but I'm nice so there are
    'no bad consequences for trying to mess me up :)
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyEscape Or KeyCode = vbKeyReturn Then
        'we're done
        Me.Hide 'man that was easy.(the writepos func does most of the work)
    ElseIf KeyCode = vbKeyF4 Then
        If mode = False Then lblSearchMode_Click
    End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    
    If optAlphaOrder(0).Enabled = False Then
        optAlphaOrder(0).Enabled = True
        optAlphaOrder(1).Enabled = True
    End If
If bRelSearch = True Then
   HandleRelativeKeys KeyAscii
Else
    HandleTableKeys KeyAscii
End If


End Sub

Public Sub WritePos(intFileno As Integer, begn As Long) 'write the new data(called from frmThingy
Dim fin As String
Dim I As Integer
    For I = 1 To max
        If Len(hextxt(I)) = 2 Then fin$ = fin$ + Chr$(frmThingy32.hexx(hextxt(I)))
        If Len(hextxt(I)) = 4 Then fin$ = fin$ + Chr$(frmThingy32.hexx(Left$(hextxt(I), 2)))
        'if I ever add triple byte support here(which I missed I see) I'll need to extend the double if above.
    Next I
    Put #intFileno, begn, fin$
    'TODO: also add a line to update the in-memory file.
End Sub
Public Function ReturnSearch(ByRef b16bit As Boolean) As String
Dim fin As String   'the final search string
Dim I As Integer
    If bRelSearch = True Then
        ReturnSearch = "RelSearch"
    Else
        For I = 1 To max
            If Len(hextxt(I)) = 2 Then fin$ = fin$ + Chr$(frmThingy32.hexx(hextxt(I)))
            If Len(hextxt(I)) = 4 Then fin$ = fin$ + Chr$(frmThingy32.hexx(Left$(hextxt(I), 2))) + Chr$(frmThingy32.hexx(Right$(hextxt(I), 2)))
            'if I ever add triple byte support here(which I missed I see) I'll need to extend the double if above.
        Next I
        b16bit = bit16
        ReturnSearch = fin$
    End If
End Function
Public Function ReturnRelData(ByRef RelDataArray() As Integer) As Integer
Dim I As Integer
    For I = 1 To curr Step 1
        RelDataArray(I) = RelData(I)
    Next I
    ReturnRelData = curr  'make sure they know how many vals we entered.
End Function
Private Function suggest(letter As String, curr As Long, lenletter As Integer, yg As Boolean) As Boolean
'suggests a table character that equivocates to the ASCII chars typed.
'this sub is actually the original name--surprising isn't it?
Dim intResult As Integer 'msgbox answer holder
Dim I As Integer
'TODO remove thekey ASAP.
If yg = True Then
    intResult = MsgBox(SuggestMsg1 & Chr$(34) & letter & Chr$(34) & SuggestMsg2, vbYesNo + vbQuestion, SuggestTitle)
    'BTW, those 34s are just "
    If intResult = vbNo Then
      suggest = False
      Exit Function
    ElseIf intResult = vbYes Then
      suggest = True
      For I = 1 To (Len(letter$)) - 1
        curr = curr - 1
        hextxt(curr) = ""
        text(curr) = ""
      Next I
        hextxt(curr) = newhex$
      'Print newhex$: Print curr: SLEEP 'changes here--where is it printing the text? and WHY?
      MsgBox newhex$ & vbCrLf & vbCrLf & curr   'this is a poor substitute for the original as I don't understand the original--you could
      'figure that out, though, couldn't you?
      text(curr) = letter$
      curr = curr + Len(newhex$) / 2
      Exit Function
    End If
ElseIf yg = False Then  'we're auto-suggesting
  suggest = True
  For I = 1 To lenletter
    curr = curr - 1
    hextxt(curr) = ""
    text(curr) = ""
  Next I
    hextxt(curr) = newhex$
  text(curr) = letter$
  curr = curr + Len(newhex$) / 2
  Exit Function
End If

End Function
Private Function hexequiv(thekey As String, curr As Long) As Boolean
'returns a boolean that tells...umm...actually I'm not sure what it tells....
Dim I As Integer
Dim gyt As Boolean
    gyt = False
    For I = 1 To 300
        If thekey = combo(I) Then
            hextxt(curr) = comhex(I)
            gyt = True
        End If
    Next I

If Len(thekey$) > 1 And gyt = False Then
    If Asc(Mid$(thekey$, 2, 1)) = 58 Then
         hextxt(curr) = "00": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 59 Then hextxt(curr) = "01": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 60 Then hextxt(curr) = "02": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 61 Then hextxt(curr) = "03": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 62 Then hextxt(curr) = "04": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 63 Then hextxt(curr) = "05": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 64 Then hextxt(curr) = "06": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 65 Then hextxt(curr) = "07": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 66 Then hextxt(curr) = "08": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 67 Then hextxt(curr) = "09": gyt = True
     ElseIf Asc(Mid$(thekey$, 2, 1)) = 68 Then hextxt(curr) = "00": gyt = True
    End If
End If
If thekey$ = Chr$(13) And gyt = False Then
    hextxt(curr) = newlhex
    If Len(newlhexdbl) >= 0 Then 'whoa! it's a double byte newline. Have to add that in too!(not sure if this code is illegal or not;
        hextxt(curr + 1) = newlhexdbl   'we might not be allowed to increment curr in here...oh well, use at your own risk)
        curr = curr + 1
    End If
    gyt = True
End If
If gyt = False Then
    hexequiv = False
    Exit Function
End If
 text(curr) = thekey$
If gyt = True Then
    hexequiv = True
End If
End Function
Private Sub HandleRelativeKeys(KeyAscii As Integer)
Dim offset As Integer
    Select Case KeyAscii
    Case 65 To 90    'UCase
        If curNumBuff <> "" Then
            Form_KeyPress 32    'commit number before we process this letter.
        End If
        If curr > max Then Exit Sub
        offset = IIf(bAlphaOrder, 26, 0)
        RelData(curr) = KeyAscii - 64 + offset
        TextTyped(curr) = Chr$(KeyAscii)
        curr = curr + 1
        curNumBuff = ""
    Case 97 To 122   'LCase
        If curNumBuff <> "" Then
            Form_KeyPress 32    'commit number before we process this letter.
        End If
        If curr > max Then Exit Sub
        offset = IIf(bAlphaOrder, 0, 26)
        RelData(curr) = KeyAscii - 96 + offset
        TextTyped(curr) = Chr$(KeyAscii)
        curr = curr + 1
        curNumBuff = ""
    Case vbKey0 To vbKey9, Asc("-")  'numerical keys
        curNumBuff = curNumBuff & Chr$(KeyAscii)    'cat the number just typed
    Case vbKeyBack
        If curNumBuff <> "" Then    'if there is a pending number...
            curNumBuff = Left$(curNumBuff, Len(curNumBuff) - 1) 'trunc curNumBuff by one
        Else
            If curr > 1 Then curr = curr - 1
        End If
    Case vbKeySpace
        If curNumBuff <> "" Then
            If curNumBuff < 32767 Then
            'make sure we have a number, and that it's not an overflow.
                If curr > max Then Exit Sub
                RelData(curr) = curNumBuff
                TextTyped(curr) = curNumBuff
                curr = curr + 1
                curNumBuff = ""
            End If
        End If
    Case Asc("*")
        If curNumBuff <> "" Then
            Form_KeyPress 32    'commit number before we process this letter.
        End If
        If curr > 1 Then   'don't let them type wildcards at the beginning of a search
            If curr > max Then Exit Sub
            RelData(curr) = 32767
            TextTyped(curr) = "*"
            curr = curr + 1
            curNumBuff = ""
        End If
    Case Asc("`"), Asc("@")
        'manual hex input.
        If curr < max Then
            'make the lbl/txt AddHex combo appear--poof!
            lblAddHex.Visible = True
            txtAddHex.Visible = True
            txtAddHex.text = ""
            txtAddHex.SetFocus
            'now let txtAddHex's KeyPress code handle adding the hex code wa ha ha lazy me
            Exit Sub
        End If
    End Select
    PrintData
End Sub
Private Sub HandleTableKeys(KeyAscii As Integer)
'OK!! Finally I have finished converting this sub: it had LOTS of GoTos but I have managed to remove all but two of those:16 and 165
'In addition there is one called Continue but that is more of a basic keyword extension hack :) since it's in C but not any version of Basic
Static yg As Boolean
Dim oki As Boolean
Dim u As Integer, y As Integer, o As Integer, p As Integer, I As Integer
Dim dblstuff As String
Dim find As String
Dim no As Boolean
    no = False  'init sequence

'this huge if sequence tests to see if they are pressing a control key(e.g. 16bit on/off; auto-suggest, etc)
    If KeyAscii = 0 + 29 Then 'hmm I don't think I need to add 0 to 29 anymore...oh well since I don't know what I'm doing...
       Print "ffffffff" 'here we used to wait for the user to press a key. Why??
       'BIG HINT don't press this and nothing bad will happen.
    ElseIf KeyAscii = Asc("`") Or KeyAscii = Asc("@") Then   'enter raw hex(the @ is for Spanish keyboards which get messed up by the ` )
        If curr < max Then
            'make the lbl/txt AddHex combo appear--poof!
            lblAddHex.Visible = True
            txtAddHex.Visible = True
            txtAddHex.text = ""
            txtAddHex.SetFocus
            'now let txtAddHex's KeyPress code handle adding the hex code wa ha ha lazy me
            Exit Sub
        End If
    ElseIf KeyAscii = Asc("~") Then     'toggle suggestions on/off
       If yg = False Then
        MsgBox AskYes, vbInformation
        yg = True
        Exit Sub 'goto 12
       End If
       If yg = True Then
            MsgBox AskNo, vbInformation
            yg = False
            Exit Sub 'goto 12
        End If
    ElseIf KeyAscii = Asc("{") And mode = False Then    'if we're in search mode, switch to 16bit vals
       If bit16 = False Then
            MsgBox Bit16Yes, vbInformation
            bit16 = True
            Exit Sub
       ElseIf bit16 = True Then
            MsgBox Bit16No, vbInformation
            bit16 = False
            Exit Sub
        End If
    ElseIf KeyAscii = vbKeyBack Then 'backspace <-
        If buffer <> "" Then    'clear buffer keys instead of already accepted keys
            buffer = Left$(buffer, Len(buffer) - 1)
            PrintHex
            Exit Sub
        End If
        If curr = 1 Then    'maybe this needs to be <= 1?
            PrintHex
            Exit Sub
        End If
        oki = False 'maybe determine how long the last character was that we now have to delete
        Do While oki = False
           curr = curr - 1
           If hextxt(curr) <> "" Then oki = True
        Loop
        hextxt(curr) = "": text(curr) = ""
        PrintHex
        Exit Sub
    End If
    
    'this code executes if it is NOT one of the keycodes that executes a function
If curr < 2 Then GoTo FirstKey
For u = 1 To dblmax 'for every double, test it against all previous keys.
    dblstuff$ = ""  'reinit
    For y = u To 1 Step -1
        If curr > y Then dblstuff$ = dblstuff$ + text(curr - (y))   'cat all the previous keys on.
'here instead of a number label I will insert an irate comment about how ridiculous the state of the original thingy source is!! It has relics
'of Very Old Code in it.
    Next y
    dblstuff$ = dblstuff$ & buffer & Chr$(KeyAscii)  'cat the buffer and then current key to the array
    
    For o = 1 To dblmax 'now match our constructed string against the doubles
        If dblstuff$ = dbl(o) Then
            buffer = ""
            newhex$ = dblhex(o)
            suggest dbl(o), curr, u, yg
            GoTo 165
        End If
    Next o
Next u


For o = maxmix To 1 Step -1
    If (curr - o < 1) Then GoTo Continue:
    find$ = ""
    For p = o To 1 Step -1
        find$ = find$ & text(curr - p)
    Next p
    For I = 1 To commax
        If find$ & buffer & Chr$(KeyAscii) = combo(I) Then
            buffer = "" 'clear buffer since we've got a match
            newhex$ = comhex(I)
            If suggest(combo(I), curr, o, yg) = True Then
                PrintHex
                Exit Sub
            End If
        End If
    Next I
Continue:   'a continue; c style hack that should exist in VB but doesn't(hence the use). It used to be 54
Next o
FirstKey:
If curr < max Then  'if there's still space
    no = hexequiv(buffer & Chr$(KeyAscii), curr) 'find out if it's on the list(True if is)
    If no = False Then
        buffer = buffer & Chr$(KeyAscii) 'save key in a buffer and see what happens...
    Else
        buffer = ""
    End If
End If
165
If curr < max Then
    If no = True Then
        curr = curr + 1
    End If
End If
PrintHex
End Sub

Private Sub PrintData()
Dim I As Integer
Dim strTyped As String
Dim strNum As String

    strNum = "["
    strTyped = "["
    For I = 1 To curr - 1 Step 1
        If RelData(I) = 32767 Then
            strNum = strNum & "* "
        Else    'normal
            strNum = strNum & RelData(I) & " "
        End If
        strTyped = strTyped & TextTyped(I) & " "
    Next I
    If curNumBuff <> "" Then    'paint the number being entered as well
        strTyped = strTyped & curNumBuff
    End If
    strNum = strNum & "]"
    strTyped = strTyped & "]"
    'now show the data!
    lblOutput.Caption = strTyped
    lblHexOutput.Caption = strNum
End Sub
