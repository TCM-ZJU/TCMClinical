VERSION 5.00
Begin VB.Form FrmManage 
   Caption         =   "�ֱ����"
   ClientHeight    =   4065
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4950
   LinkTopic       =   "Form1"
   ScaleHeight     =   4065
   ScaleWidth      =   4950
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1680
      TabIndex        =   8
      Top             =   3240
      Width           =   1575
   End
   Begin VB.CommandButton cmdXYLF 
      Caption         =   "��ҩ�Ʒ�"
      Height          =   375
      Left            =   2640
      TabIndex        =   7
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton cmdZTLF 
      Caption         =   "�����Ʒ�"
      Height          =   375
      Left            =   2640
      TabIndex        =   6
      Top             =   360
      Width           =   1455
   End
   Begin VB.CommandButton cmdQTLF 
      Caption         =   "�����Ʒ�"
      Height          =   375
      Left            =   2640
      TabIndex        =   5
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton cmdSYJC 
      Caption         =   "ʵ����"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton cmdBZZ 
      Caption         =   "��֤֢"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton cmdYFLF 
      Caption         =   "ҩ���Ʒ�"
      Height          =   375
      Left            =   2640
      TabIndex        =   2
      Top             =   1080
      Width           =   1455
   End
   Begin VB.CommandButton cmdLCZL 
      Caption         =   "�ٴ�����"
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   1080
      Width           =   1455
   End
   Begin VB.CommandButton cmdLCYJ 
      Caption         =   "�ٴ��о�"
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "FrmManage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdLCYJ_Click()
   flag = 0
   FrmLCYJ.Show vbModal

End Sub

Private Sub cmdLCZL_Click()
   flag = 0
   FrmLCZL.Show vbModal

End Sub

Private Sub cmdSYJC_Click()
   flag = 0
   FrmSYJC.Show vbModal

End Sub
Private Sub cmdBZZ_Click()
   flag = 0
   FrmBZZ.Show vbModal

End Sub

Private Sub cmdZTLF_Click()
   flag = 0
   FrmZTLF.Show vbModal

End Sub

Private Sub cmdYFLF_Click()
   flag = 0
   FrmYFLF.Show vbModal

End Sub
Private Sub cmdXYLF_Click()
   flag = 0
   FrmXYLF.Show vbModal

End Sub
Private Sub cmdQTLF_Click()
   flag = 0
   FrmQTLF.Show vbModal

End Sub
Private Sub cmdQuit_Click()
   flag = 0
   Unload Me

End Sub

