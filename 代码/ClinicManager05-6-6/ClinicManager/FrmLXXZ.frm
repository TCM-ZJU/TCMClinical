VERSION 5.00
Begin VB.Form FrmLXXZ 
   Caption         =   "ϸ������ѡ��"
   ClientHeight    =   3585
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5520
   LinkTopic       =   "Form1"
   ScaleHeight     =   3585
   ScaleWidth      =   5520
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdHX 
      Caption         =   "����ר��"
      Height          =   495
      Left            =   1320
      TabIndex        =   2
      Top             =   2160
      Width           =   2415
   End
   Begin VB.CommandButton cmdSJ 
      Caption         =   "��ר��"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   1320
      Width           =   2415
   End
   Begin VB.CommandButton cmdJMZ 
      Caption         =   "������ר��"
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   480
      Width           =   2415
   End
End
Attribute VB_Name = "FrmLXXZ"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdJMZ_Click()
   
   prefixname = "JMZ_"
   suffixCondition = " where YJFL='������ר��' "
   FrmManageX.Show vbModal

End Sub

Private Sub cmdSJ_Click()
   
   prefixname = "JMZ_"
   suffixCondition = " where YJFL='��ר��' "
   FrmManageX.Show vbModal

End Sub

Private Sub cmdHX_Click()
   
   prefixname = "JMZ_"
   suffixCondition = " where YJFL='����ר��' "
   FrmManageX.Show vbModal

End Sub
