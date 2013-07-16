VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmClear 
   Caption         =   "粗表数据清理"
   ClientHeight    =   3630
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8070
   LinkTopic       =   "Form1"
   ScaleHeight     =   3630
   ScaleWidth      =   8070
   StartUpPosition =   3  '窗口缺省
   Begin VB.Frame Attention 
      Caption         =   "注意!"
      Height          =   975
      Left            =   240
      TabIndex        =   5
      Top             =   120
      Width           =   7575
      Begin VB.Label Label1 
         Caption         =   "在进行粗表的数据清洗之前,先备份相关的粗表,以免意外引起数据的丢失~!!"
         Height          =   495
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Width           =   7095
      End
   End
   Begin VB.CommandButton CmdZz 
      Caption         =   "病证症粗表症状信息结尾多余括号删除(表:C_BZZ)"
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   1560
      Width           =   2175
   End
   Begin MSComctlLib.ProgressBar pbImport 
      Height          =   345
      Left            =   2400
      TabIndex        =   1
      Top             =   2040
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   609
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Label Label5 
      Caption         =   "成功清洗"
      Height          =   180
      Left            =   4200
      TabIndex        =   4
      Top             =   1680
      Width           =   720
   End
   Begin VB.Label Label6 
      Caption         =   "条"
      Height          =   180
      Left            =   5520
      TabIndex        =   3
      Top             =   1680
      Width           =   180
   End
   Begin VB.Label lblSuccess 
      Alignment       =   2  'Center
      Caption         =   "0"
      Height          =   180
      Left            =   4920
      TabIndex        =   2
      Top             =   1680
      Width           =   465
   End
End
Attribute VB_Name = "FrmClear"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strSource As String
Dim strSQL As String
Dim recSource As OraDynaset

Private Sub CmdZz_Click()

   Dim strZZXX As String
   strSource = "BZZ"
   strSQL = "select * from C_" & strSource '& " where ID<2000"
   Set recSource = OraDatabase.CreateDynaset(strSQL, 0)
   
   lblSuccess.Caption = 0
   pbImport.Value = 0
   
   If recSource.RecordCount > 0 Then
      pbImport.Max = recSource.RecordCount
      
   Else
      pbImport.Max = 1
      
   End If
   
   
   recSource.MoveFirst
   
   While Not recSource.EOF
      If Not IsNull(recSource.Fields("ZZMC")) Then
         strZZXX = recSource.Fields("ZZMC").Value
         c = Right(strZZXX, 1)
         If c = ")" Then
            strZZXX = Left(strZZXX, Len(strZZXX) - 1)
            recSource.Edit
               recSource.Fields("ZZMC").Value = strZZXX
            recSource.Update
         End If
      End If
      
      lblSuccess.Caption = lblSuccess.Caption + 1
      
ProcessNext:
      pbImport.Value = pbImport.Value + 1
      recSource.MoveNext
   Wend

End Sub


    
