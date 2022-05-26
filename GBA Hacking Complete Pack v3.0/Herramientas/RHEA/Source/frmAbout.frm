VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "About"
   ClientHeight    =   4095
   ClientLeft      =   6570
   ClientTop       =   2565
   ClientWidth     =   6540
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   6540
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Tag             =   "2"
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Height          =   345
      Left            =   112
      TabIndex        =   7
      Top             =   3600
      Width           =   6330
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      Index           =   3
      X1              =   120
      X2              =   6360
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Version"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2520
      TabIndex        =   0
      Tag             =   "2000"
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label lblVersion 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "<Version>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   2985
      TabIndex        =   1
      Tag             =   "0"
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   750
      Left            =   -480
      Picture         =   "frmAbout.frx":000C
      Top             =   0
      Width           =   7500
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   2
      X1              =   0
      X2              =   10320
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   0
      X1              =   0
      X2              =   10320
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright © 2007 HackMew"
      Enabled         =   0   'False
      Height          =   195
      Left            =   2220
      TabIndex        =   6
      Tag             =   "1017"
      Top             =   3030
      Width           =   2055
   End
   Begin VB.Label lblDescription 
      BackStyle       =   0  'Transparent
      Caption         =   "<Description>"
      ForeColor       =   &H00000000&
      Height          =   570
      Left            =   1800
      TabIndex        =   3
      Tag             =   "2002"
      Top             =   1605
      Width           =   4560
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Description:"
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Tag             =   "2001"
      Top             =   1605
      Width           =   840
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Compatible ROMs:"
      Height          =   195
      Left            =   120
      TabIndex        =   4
      Tag             =   "2003"
      Top             =   2160
      Width           =   1320
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "All existing ROMs."
      Height          =   195
      Left            =   1800
      TabIndex        =   5
      Tag             =   "2004"
      Top             =   2160
      Width           =   1275
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      Index           =   1
      X1              =   135
      X2              =   6360
      Y1              =   2880
      Y2              =   2880
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdOK_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    LoadResStrings Me
    lblVersion.Caption = App.Major & "." & App.Minor & "." & App.Revision
End Sub
