Attribute VB_Name = "Globals"
Option Explicit
'(started 13 Sept 1999)
'update from Jan2K, have added a number of vars to aid me in the new features:triple hex and double byte line/section breaks.
'globals:the variables that have to be visible to ALL forms...yes I hate having to do this but you have
'to have something like this I suppose
'23 Jan 2000
    'I have added many string constants that cover all text in thingy32. After I debug these, I will change these to Spanish and release a
'Spanish version.
'29 Mar 2001
    'added some more file types for game boy(color and advance)
Public trplmax As Integer   'the triple-bytes. I don't know what people will use them for; it's a request.
Public trpl(1 To 3000) As String
Public trplhex(1 To 3000) As String

Public dblmax As Integer   'the kanji holders
Public dbl(1 To 3000) As String
Public dblhex(1 To 3000) As String

Public commax As Integer
Public combo(1 To 300) As String   'beats me(I think singles)
Public comhex(1 To 300) As String

Public maxmix As Integer
Public newlhex As String    'the newline signal
Public newlhexdbl As String    'the auxiliary double-byte for newlines.

'String Constants section:
'these are the Constants that determine what language you are using. Translate them into xxx language and thingy32 should
'be in that language. I didn't want to use a .rc file(they're not native to VB) so this is the alternative.
        'These strings used in frmThingy32:
    'shortcut keys
Public Const JumpKey = "J"
Public Const TableSwitchKey = "T"
Public Const EditSelKey = " "
Public Const SearchKey = "S"
Public Const ReSearchKey = "R"
Public Const DumpKey = "D"
Public Const InsertKey = "I"
Public Const HideHexKey = "H"
Public Const OptionsKey = "O"
Public Const MoreWidthKey = "."
Public Const LessWidthKey = ","
    'shortcut labels(all are visual elements)
Public Const JumpLabel = "J = Jump"
Public Const OptionsLabel = "O = Options"
Public Const EditSelLabel = "Space = Select to Edit"
Public Const SearchLabel = "S = Search"
Public Const ReSearchLabel = "R = ReSearch"
Public Const DumpLabel = "D = Dump"
Public Const InsertLabel = "I = Insert"
Public Const PositionLabel = "Position: "
Public Const MoreWidthLabel = "More Width = >"
Public Const LessWidthLabel = "< = Less Width"
    'menus
Public Const OpenNewFile = "Open &New File..."
Public Const OpenNewTable = "&Open New Table..."
Public Const ReloadTable = "&Reload Current Table"
Public Const HideHex = "&Hide Hex"
Public Const TableSwitch = "Switch &Table Files"
Public Const JumpManual = "&Jump manually..."
Public Const DumpManual = "&Dump manually Using Current Location as Start"
Public Const InsertManual = "&Insert manually Using Current Location as Start"
Public Const AddNewBookMark = "&Add Current Location as Bookmark..."
Public Const AddNewDumpMark = "&Add Current Location as Dumpmark..."
Public Const AddNewInsertMark = "&Add Current Location as Insertmark..."
    'misc messages
Public Const LabelTooltip = "Click the labels to execute the respective function"   'visual element
Public Const OptionsTooltip = "Click for Options menu"
Public Const ReadyMsg = "Ready"
Public Const UsingTableMsg = "Now using Table #"
Public Const SelectingMsg = "Selecting"
Public Const CurrentSearch = "Current Search: "
Public Const SelDumpEnd = "Press " & DumpKey & " at end of dump"
Public Const SelInsertEnd = "Press " & InsertKey & " at end of dump"
        'misc--load
    Public Const ErrorLoadingDataFromCommand = "Non-existent data file or path in shortcut! You will have to load the file normally." & vbCrLf & "Note: You will have to load the table file(s) manually as well, even if it has a correct path."
    Public Const ErrorLoadingDataTitle = "Error Loading Data"
    Public Const ErrorLoadingTableFromCommand = "Non-existent table file or path in shortcut! You will have to load the file normally."
    Public Const ErrorLoadingTableTitle = "Error Loading Table"
    Public Const ErrorLoadingTable2Title = "Error Loading Table #2"
    'app info
Public Const InfoTitle = "thingy32 Application Information:"
Public Const InfoName = "Official name: "
Public Const InfoVersion = "Version: "
Public Const InfoComments = "Comments for this build: "
Public Const InfoCopyright = "Copyright Information: "
Public Const InfoTrademarks = "Trademark Information: "
    'program start sequence(in LoadFiles mainly)
Public Const OpenDataFile = "Open Data File"
Public Const DataFileTypes = "All Files(*.*)|*.*|Snes Files(*.smc,*.swc,*.sfc,*.fig, and others)|*.smc;*.swc;*.sfc;*.fig;*.058;*.078;*.1;*.2;*.3|Nes Files(*.nes)|*.nes|Genesis/Megadrive/32x Files(*.smd, *.bin,*.32x)|*.smd;*.bin;*.32x|Master System Files(*.sms)|*.sms|Game Gear Files(*.gg)|*.gg|Game Boy Files(*.gb,*.gbc;*.gba)|*.gb;*.gbc;*.gba|Text Files(*.txt)|*.txt"
Public Const OpenTableFile1 = "Open Table File #1"
Public Const TableFileTypes = "All Files(*.*)|*.*|Table Files(*.tbl)|*.tbl"
Public Const OpenTableFile2 = "Open Table File #2(optional)"
Public Const CancelData = "You pressed cancel. Do you want to quit?"
Public Const CancelTable = "You haven't loaded a table file. If you want to quit, press Abort. To return and load a table file, press Retry. To load the data file using standard ANSI encoding, press Ignore."
    'various extra things in code
Public Const GetBookmark = "Description?" & vbCrLf & vbCrLf & "(Edit the table file directly to remove bookmarks; they are enclosed in parentheses.)"
Public Const GetBookmarkTitle = "Give Bookmark description"
Public Const GetDumpmark = "Description?" & vbCrLf & vbCrLf & "(Edit the table file directly to remove dumpmarks; they are enclosed in brackets.)"
Public Const GetDumpmarkTitle = "Give Dumpmark description"
Public Const GetInsertmark = "Description?" & vbCrLf & vbCrLf & "(Edit the table file directly to remove insertmarks; they are enclosed in braces.)"
Public Const GetInsertmarkTitle = "Give Insertmark description"
Public Const UseLegacyInsertMarkYesNo = "Are you sure you want to create a legacy-format thingy bookmark? They do not specify an end position in the data file and insert the whole insertion file. Therefore if the insertion file is too long, it might overwrite data in the data file unintentionally."
Public Const InsertionMethod = "Insertion Method"
Public Const GetEndLocation = "Please specify an end location:"
Public Const GetEndLocationtitle = "End Location"
Public Const GetOutputFile = "Output file?"
Public Const OutputFileType = "All Files(*.*)|*.*|Text Files(*.txt)|*.txt|Data Files(*.dat)|*.dat|Dump Files(*.dump)|*.dump|Sonic the Hedgehog Files(*.sonic)|*.sonic"
Public Const DumpStart = "Start: "
Public Const DumpEnd = "  End: "
        'these next strings are used in frmEdit:
    'instructions
Public Const TypeTextHere = "Type your text in here: Press ESC or Enter to save and return to the main hexeditor."
Public Const TypeHexHere = "Type your hex character in here:"
Public Const ChangeRelSearch = "Change to Relative Search"
Public Const ChangeTblSearch = "Change to Table Search"
Public Const AlphaOrder = "Alphabet Order"
    'messages
Public Const AskYes = "Ask:Y"
Public Const AskNo = "Ask:N"
Public Const Bit16Yes = "16bit:Y"
Public Const Bit16No = "16bit:N"
Public Const DoneMsg = "Done!"
Public Const SuggestMsg1 = "I suggest using the "  'first and second half
Public Const SuggestMsg2 = " tile...put it in?"
Public Const SuggestTitle = "Suggestion"
    '2 different titles for the form
Public Const TitleEdit = "Edit File Data"
Public Const TitleSearch = "Enter Search String(warning search is slow)"
        'these next string are used in frmJump:
    '3 diff titles for the form
Public Const TitleJump = "Choose Jump Location"
Public Const TitleDump = "Choose Dump Method"
Public Const TitleInsert = "Choose Insertion Method"
    'visual elements
Public Const OK = "OK"
Public Const Cancel = "Cancel"
Public Const AddCurrent = "&Add current location as new bookmark"
Public Const ManualJump = "&Manual Address"
Public Const ManualDumpOrInsert = "Locate End &Manually"
Public Const BookmarkLabel = "&Bookmarks"
Public Const DumpmarkLabel = "&Dumpmarks"
Public Const InsertmarkLabel = "&Insertmarks"
    'messages
Public Const ManualMsg = "Enter Manual Address in Decimal or Hex; Hex must be prefixed with &H" & vbCrLf & vbCrLf & "(i.e. &H100A)"
Public Const ManualTitle = "Manual Address"
    'Relative search messages:
Public Const NeedMoreThanTwoValues = "You need at least two values to relative search!"

Public Function RelSearch(RelData() As Integer, entry As Integer, startPos As Long, intFileno As Integer) As Long
'this returns a 0 based address if it finds the search data(contained in the array RelData) or -1 if it doesn't
'entry is number of data, startPos is address at which to start searching and intFileno is file to search.
Dim skipFlag(1 To 40) As Boolean '10 bigger than the RelData array, just in case
Dim searchLength As Integer
Dim bytesRead As Long
Dim relCount As Integer
Dim buffer As String
Dim buffer1 As Integer, buffer2 As Integer
Dim tempbuffer As String
Dim pos As Long
Dim offset As Long
Dim I As Integer
Dim c As Long
    RelSearch = -1  'init to false just in case we don't find anything
    For I = 1 To entry Step 1
        If RelData(I) = 32767 Then
            skipFlag(I) = True
        End If
    Next I
'first format a skipFlag array that contains a list of the wildcards
    Do While (skipFlag(entry) = True And entry > 1)
        ' No sense having wildcards at the end
        entry = entry - 1
    Loop
    If entry < 2 Then
        MsgBox NeedMoreThanTwoValues, vbInformation
        RelSearch = -1
        Exit Function
    End If
    
  searchLength = entry
  relCount = entry - 1
  buffer = String$(30000, " ")
    
    ' make relative search table
Dim rel() As Integer
Dim first() As Integer
Dim second() As Integer
ReDim rel(0 To 1) As Integer
ReDim first(0 To 1) As Integer
ReDim second(0 To 1) As Integer

  pos = 1
    For c = 0 To relCount - 1 Step 1
        first(c) = pos - 1
        Do While (skipFlag(pos + 1) = True)
          pos = pos + 1
          relCount = relCount - 1
        Loop
        second(c) = pos
        rel(c) = RelData(second(c) + 1) - RelData(first(c) + 1)
        If RelData(second(c) + 1) < RelData(first(c) + 1) Then rel(c) = rel(c) + 256
        pos = pos + 1
        ReDim Preserve rel(0 To c + 2) As Integer
        ReDim Preserve first(0 To c + 2) As Integer
        ReDim Preserve second(0 To c + 2) As Integer
    Next c

'put out the info on the relsearch table just created.
Dim msg As String
  msg = msg & "Search:" & vbCrLf
  For c = 0 To relCount - 1 Step 1
    msg = msg & "     Byte " & first(c) + 1 & " to byte " & second(c) + 1 & " :" & rel(c) & vbCrLf
Next c
msg = msg & vbCrLf
MsgBox msg, vbInformation
msg = ""
Get #intFileno, startPos, buffer   'read 30K
bytesRead = 30000   'we always read 30Kbytes because VB lets you read past the EOF somehow

If (LOF(intFileno) < searchLength) Then   'and make sure it's long enough...(but no VB equivalent)
    MsgBox "File not long enough!", vbCritical
    Exit Function
End If
  pos = 0
  Do
'somewhat working, still a little suspicious as to whether it's getting the last comparison of the two bytes.
    Do While ((pos + searchLength - 1) < bytesRead)

        For c = 0 To relCount - 1 Step 1
          buffer1 = Asc(Mid$(buffer, (pos + first(c) + 1), 1))
          buffer2 = Asc(Mid$(buffer, (pos + second(c) + 1), 1))
          If (buffer2 < buffer1) Then buffer2 = buffer2 + 256
          If (buffer2 - buffer1 <> rel(c)) Then Exit For ' no match
        Next
        If (c = relCount) Then
          RelSearch = startPos + offset + pos 'only get the first match. maybe we'll change this later if people want me to.
          Exit Function
        End If
        pos = pos + 1
    Loop

    For c = 0 To searchLength - 2 Step 1
      Mid(buffer, c + 1, 1) = Mid$(buffer, (bytesRead + 1 - searchLength + c), 1)
    Next c

    tempbuffer = Space$(30000 - searchLength)
    bytesRead = 30000 - searchLength
    Get #intFileno, , tempbuffer
    buffer = Left(buffer, searchLength) & tempbuffer    'this sims the pointer operation that was in the C version.
    pos = 0
    offset = offset + 30000 - searchLength
Loop Until EOF(intFileno)
'Jair's terms of use:
'TERMS OF USE
'-------------------
'This program is distributed with its source code. You may use, distribute, and modify it freely.
'Only two restrictions: These terms of use must stay the same, and you must always include the source code with the program.
End Function
