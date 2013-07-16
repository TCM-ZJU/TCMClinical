VERSION 5.00
Object = "{92096210-97DF-11CF-9F27-02608C4BF3B5}#1.0#0"; "oradc.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form FrmQUERYD 
   Caption         =   "查询结果"
   ClientHeight    =   5325
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7905
   LinkTopic       =   "Form1"
   ScaleHeight     =   5325
   ScaleWidth      =   7905
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   5640
      TabIndex        =   0
      Top             =   3360
      Width           =   1215
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid 
      Bindings        =   "FrmQUERYD.frx":0000
      Height          =   3255
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   5741
      _Version        =   393216
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin ORADCLibCtl.ORADC objOO4O 
      Height          =   375
      Left            =   120
      Top             =   3360
      Visible         =   0   'False
      Width           =   4695
      _Version        =   65536
      _ExtentX        =   8281
      _ExtentY        =   661
      _StockProps     =   207
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DatabaseName    =   ""
      Connect         =   ""
      RecordSource    =   ""
   End
End
Attribute VB_Name = "FrmQUERYD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public blnSelected As Boolean
Public intSelectRow As Integer
Public intID As Double
Private Sub cmdQuit_Click()
   blnSelected = False
   Unload Me
End Sub
 
Private Sub Form_Load()
   blnSelected = False
End Sub

 
Private Sub MSFlexGrid_DblClick()
   If Me.MSFlexGrid.Rows > 1 Then
      blnSelected = True
      Me.MSFlexGrid.Col = 1
      intID = Me.MSFlexGrid.Text
      Me.Hide
   End If
End Sub
