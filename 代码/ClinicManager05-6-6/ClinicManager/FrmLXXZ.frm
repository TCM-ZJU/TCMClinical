VERSION 5.00
Begin VB.Form FrmLXXZ 
   Caption         =   "细表类型选择"
   ClientHeight    =   3585
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5520
   LinkTopic       =   "Form1"
   ScaleHeight     =   3585
   ScaleWidth      =   5520
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdHX 
      Caption         =   "呼吸专题"
      Height          =   495
      Left            =   1320
      TabIndex        =   2
      Top             =   2160
      Width           =   2415
   End
   Begin VB.CommandButton cmdSJ 
      Caption         =   "神经专题"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   1320
      Width           =   2415
   End
   Begin VB.CommandButton cmdJMZ 
      Caption         =   "急门诊专题"
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
   suffixCondition = " where YJFL='急门诊专题' "
   FrmManageX.Show vbModal

End Sub

Private Sub cmdSJ_Click()
   
   prefixname = "JMZ_"
   suffixCondition = " where YJFL='神经专题' "
   FrmManageX.Show vbModal

End Sub

Private Sub cmdHX_Click()
   
   prefixname = "JMZ_"
   suffixCondition = " where YJFL='呼吸专题' "
   FrmManageX.Show vbModal

End Sub
