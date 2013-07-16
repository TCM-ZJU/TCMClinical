VERSION 5.00
Begin VB.Form FrmManageX 
   Caption         =   "细表管理"
   ClientHeight    =   3990
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5985
   LinkTopic       =   "Form1"
   ScaleHeight     =   3990
   ScaleWidth      =   5985
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton CmdExit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   3120
      Width           =   1575
   End
   Begin VB.CommandButton cmdDZZX 
      Caption         =   "对照组"
      Height          =   375
      Left            =   2040
      TabIndex        =   4
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton cmdLCYJX 
      Caption         =   "临床研究主表"
      Height          =   375
      Left            =   2040
      TabIndex        =   3
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CommandButton cmdLCZLX 
      Caption         =   "临床诊疗"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton cmdSYJCX 
      Caption         =   "实验检查"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton cmdQuit 
      Caption         =   "退出"
      Height          =   375
      Left            =   5880
      TabIndex        =   0
      Top             =   6120
      Width           =   1695
   End
   Begin VB.Line Line3 
      X1              =   3360
      X2              =   3840
      Y1              =   1680
      Y2              =   2280
   End
   Begin VB.Line Line2 
      X1              =   2160
      X2              =   1680
      Y1              =   1680
      Y2              =   2280
   End
   Begin VB.Line Line1 
      X1              =   2760
      X2              =   2760
      Y1              =   840
      Y2              =   1320
   End
End
Attribute VB_Name = "FrmManageX"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdLCYJX_Click()
  
   FrmLCYJX.Show vbModal

End Sub

Private Sub cmdLCZLX_Click()
   LCYJIDtemp = -1
   FrmLCZLX.Show vbModal

End Sub

Private Sub cmdSYJCX_Click()
   LCYJIDtemp = -1
   FrmSYJCX.Show vbModal

End Sub
Private Sub cmdDZZX_Click()
   LCYJIDtemp = -1
   FrmDZZX.Show vbModal

End Sub

Private Sub cmdExit_Click()
  Unload Me

End Sub

