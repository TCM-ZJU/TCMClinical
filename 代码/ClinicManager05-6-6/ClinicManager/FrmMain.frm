VERSION 5.00
Begin VB.Form FrmMain 
   Caption         =   "ѡ��"
   ClientHeight    =   5100
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5250
   LinkTopic       =   "Form1"
   ScaleHeight     =   5100
   ScaleWidth      =   5250
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdClear 
      Caption         =   "�ֱ�������ϴ"
      Height          =   495
      Left            =   1440
      TabIndex        =   5
      Top             =   1920
      Width           =   1935
   End
   Begin VB.CommandButton cmdManagex 
      Caption         =   "ϸ�����"
      Height          =   495
      Left            =   1440
      TabIndex        =   4
      Top             =   360
      Width           =   1935
   End
   Begin VB.CommandButton cmdpeaple 
      Caption         =   "¼����Ա����"
      Height          =   495
      Left            =   1440
      TabIndex        =   3
      Top             =   3240
      Width           =   1935
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "�˳�"
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Top             =   3840
      Width           =   1935
   End
   Begin VB.CommandButton cmdEnter 
      Caption         =   "���ݵ���"
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Top             =   2640
      Width           =   1935
   End
   Begin VB.CommandButton cmdManage 
      Caption         =   "�ֱ����"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   1935
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClear_Click()
   FrmClear.Show vbModal
End Sub

Private Sub cmdManage_Click()

   FrmManage.Show vbModal

End Sub

Private Sub cmdEnter_Click()

   FrmEnter.Show vbModal

End Sub

Private Sub cmdPeaple_Click()

   FrmPeaple.Show vbModal

End Sub
Private Sub cmdQuit_Click()

   Unload Me

End Sub
Private Sub cmdManagex_Click()

   FrmLXXZ.Show vbModal

End Sub
