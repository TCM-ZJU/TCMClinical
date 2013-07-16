VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "登录"
   ClientHeight    =   2370
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1400.274
   ScaleMode       =   0  'User
   ScaleWidth      =   3521.047
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox txtPassword 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1320
      PasswordChar    =   "*"
      TabIndex        =   7
      Text            =   "basic"
      Top             =   480
      Width           =   2295
   End
   Begin VB.TextBox txtDataBaseAlias 
      Height          =   375
      Left            =   1320
      TabIndex        =   6
      Text            =   "sun3500"
      Top             =   840
      Width           =   2295
   End
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1320
      TabIndex        =   1
      Text            =   "tcm_basic"
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   390
      Left            =   495
      TabIndex        =   3
      Top             =   1680
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "取消"
      Height          =   390
      Left            =   2100
      TabIndex        =   4
      Top             =   1680
      Width           =   1140
   End
   Begin VB.Label lblLabels 
      Caption         =   "数据库:"
      Height          =   270
      Index           =   2
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "用户名称:"
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "密码:"
      Height          =   270
      Index           =   1
      Left            =   105
      TabIndex        =   2
      Top             =   540
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOK_Click()
   'check for correct password
On Error GoTo again
   c_strConnect = txtUserName.Text & "/" & txtPassword.Text
   c_strDatabase = txtDataBaseAlias.Text

   Set OraSession = CreateObject("OracleInProcServer.XOraSession")
   Set OraDatabase = OraSession.OpenDatabase(c_strDatabase, c_strConnect, ORADB_ORAMODE)
   
   FrmMain.Show 'vbModal
   Unload Me
   Exit Sub
again:
   MsgBox "用户名或者密码错误!", , "用户验证"
   txtPassword.SetFocus
   SendKeys "{Home}+{End}"
End Sub
