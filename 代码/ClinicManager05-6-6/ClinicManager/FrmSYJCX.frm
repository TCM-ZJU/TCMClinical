VERSION 5.00
Begin VB.Form FrmSYJCX 
   Caption         =   "实验检查"
   ClientHeight    =   6120
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7215
   LinkTopic       =   "Form1"
   ScaleHeight     =   6120
   ScaleWidth      =   7215
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdSQL 
      Caption         =   "..."
      Height          =   375
      Left            =   960
      TabIndex        =   24
      Top             =   3480
      Width           =   495
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   1920
      TabIndex        =   23
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Enabled         =   0   'False
      Height          =   375
      Left            =   960
      TabIndex        =   22
      Top             =   3000
      Width           =   975
   End
   Begin VB.TextBox txtCondition 
      Height          =   375
      Left            =   1440
      TabIndex        =   21
      Top             =   3480
      Width           =   4335
   End
   Begin VB.CommandButton cmdQuery 
      Caption         =   "查询"
      Default         =   -1  'True
      Height          =   375
      Left            =   0
      TabIndex        =   20
      Top             =   3480
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "确认"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4800
      TabIndex        =   19
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "删除"
      Height          =   375
      Left            =   0
      TabIndex        =   18
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "修改"
      Height          =   375
      Left            =   3840
      TabIndex        =   17
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdLast 
      Caption         =   "末条"
      Height          =   375
      Left            =   2880
      TabIndex        =   16
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "向后"
      Height          =   375
      Left            =   1920
      TabIndex        =   15
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdPrev 
      Caption         =   "向前"
      Height          =   375
      Left            =   960
      TabIndex        =   14
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdFirst 
      Caption         =   "首条"
      Height          =   375
      Left            =   0
      TabIndex        =   13
      Top             =   2520
      Width           =   975
   End
   Begin VB.Frame frmrecord 
      Caption         =   "单条记录"
      Height          =   2295
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9255
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   0
         Left            =   1320
         TabIndex        =   6
         Top             =   240
         Width           =   3615
      End
      Begin VB.TextBox txtFields 
         DataField       =   "FANGJI"
         Height          =   285
         Index           =   1
         Left            =   1320
         TabIndex        =   5
         Top             =   525
         Width           =   3615
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DANWY"
         Height          =   285
         Index           =   2
         Left            =   1320
         TabIndex        =   4
         Top             =   855
         Width           =   3615
      End
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   3
         Left            =   1320
         TabIndex        =   3
         Top             =   1170
         Width           =   3615
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIXING"
         Height          =   285
         Index           =   4
         Left            =   1320
         TabIndex        =   2
         Top             =   1485
         Width           =   3615
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIBING"
         Height          =   285
         Index           =   5
         Left            =   1320
         TabIndex        =   1
         Top             =   1815
         Width           =   3615
      End
      Begin VB.Label lblLabels 
         Caption         =   "实验检查ID"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   12
         Top             =   270
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "检查项目"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   11
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "检查时间"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   10
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "变化指标"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   9
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "观察分组"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   8
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床研究ID"
         Height          =   255
         Index           =   5
         Left            =   240
         TabIndex        =   7
         Top             =   600
         Width           =   1095
      End
   End
End
Attribute VB_Name = "FrmSYJCX"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim recFields As OraDynaset
Dim recEdited As OraDynaset
Dim intState As FormState
Dim blnNoRecorder As Boolean
Dim Bookmark As String
Dim strstep As String
Const c_intFieldsCount As Integer = 5

Private Sub Form_Load()
    'Call AddParam
    Dim strSQL As String
    
    On Error GoTo PROC_ERR
    '
    strstep = prefixname & "SYJC"
    
   If LCYJIDtemp = -1 Then
      strSQL = "select SYJC_ID,LCYJ_ID,JCXM,JCSJ,BHZB,GCFZ from " & strstep & " where LCYJ_ID in ( select LCYJ_ID from " & prefixname & "LCYJ" & suffixCondition & " ) "
   Else
      strSQL = "select * from " & strstep & " where LCYJ_ID= " & LCYJIDtemp
   End If
    
    Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
    
    If recFields.RecordCount = 0 Then  '没有记录
        intState = fsNull
        blnNoRecorder = True
        Call SetButtons(intState)
        MsgBox "目前没有数据"
    Else
        intState = fsBrowse
        blnNoRecorder = False
        Call SetButtons(intState)
        recFields.MoveFirst
        Call SetFields
    End If
    
     
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "Form_Load", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next

End Sub


Private Sub SetFields()         '填充字段
 
    On Error GoTo PROC_ERR
   
   Dim intIndex As Integer
   
   For intIndex = 0 To 5
      txtFields(intIndex).Text = recFields.Fields(intIndex).Value & ""
      txtFields(intIndex).ToolTipText = recFields.Fields(intIndex).Value & ""
   Next intIndex
        
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "SetFields", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub



Public Sub SetButtons(intFormState As FormState)
   On Error GoTo PROC_ERR
   Dim intIndex As Integer
   
   Select Case intFormState
      Case fsNull
                 
         cmdFirst.Enabled = False
         cmdPrev.Enabled = False
         cmdNext.Enabled = False
         cmdLast.Enabled = False
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = False
         cmdCancel.Enabled = False
         cmdQuit.Enabled = True
         cmdQuery.Enabled = True
         
         For intIndex = 0 To 5
            txtFields(intIndex).Enabled = False
            
         Next intIndex
      Case fsBrowse
                 
         cmdFirst.Enabled = True
         cmdPrev.Enabled = True
         cmdNext.Enabled = True
         cmdLast.Enabled = True
         
         cmdUpdate.Enabled = True
         cmdDelete.Enabled = True
         cmdOK.Enabled = False
         cmdCancel.Enabled = False
         cmdQuit.Enabled = True
         cmdQuery.Enabled = True
         
         For intIndex = 0 To 5
            txtFields(intIndex).Enabled = False
         Next intIndex
        
      Case fsInsert
                  
         cmdFirst.Enabled = False
         cmdPrev.Enabled = False
         cmdNext.Enabled = False
         cmdLast.Enabled = False
         
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = True
         cmdCancel.Enabled = True
         cmdQuit.Enabled = False
         cmdQuery.Enabled = False
      Case fsUpdate
                  
         cmdFirst.Enabled = False
         cmdPrev.Enabled = False
         cmdNext.Enabled = False
         cmdLast.Enabled = False
         
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = True
         cmdCancel.Enabled = True
         cmdQuit.Enabled = False
         cmdQuery.Enabled = False
         
         For intIndex = 0 To 5
            txtFields(intIndex).Enabled = True
         Next intIndex
   End Select
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "SetButtons", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub


Private Sub cmdFirst_Click()  '第一条记录
    On Error GoTo PROC_ERR
    recFields.MoveFirst
    Call SetFields
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdFirst_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub

Private Sub cmdLast_Click()  '最后一条记录
    On Error GoTo PROC_ERR
    recFields.MoveLast
    Call SetFields
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdLast_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub

Private Sub cmdPrev_Click()  '前一条记录
    On Error GoTo PROC_ERR
    recFields.MovePrevious
    If recFields.BOF Then
        MsgBox "已经是最前一条记录了!"
        recFields.MoveNext
    Else
        Call SetFields
    End If
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdPrev_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub

Private Sub cmdNext_Click()  '后一条记录
    On Error GoTo PROC_ERR
    recFields.MoveNext
    If recFields.EOF Then
        MsgBox "已经是最后一条记录了!"
        recFields.MovePrevious
    Else
        Call SetFields
    End If
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdNext_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub

Private Sub cmdQuit_Click()
   On Error GoTo PROC_ERR
   Unload Me

PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdQuit_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
End Sub


Private Sub cmdUpdate_Click()  '要更新纪录
    On Error GoTo PROC_ERR
    Bookmark = recFields.Bookmark
     intState = fsUpdate
    Call SetButtons(fsUpdate)
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdUpdate_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
    
End Sub



Private Sub cmdOK_Click()    '确定
    On Error GoTo PROC_ERR
    Dim intIndex As Integer
   
   recFields.Edit
      
      For intIndex = 0 To 5
         recFields.Fields(intIndex).Value = txtFields(intIndex).Text
      Next intIndex
                  
   recFields.Update
      
   intState = fsBrowse
   
   Call SetButtons(fsBrowse)
    
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdOK_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next

End Sub


Private Sub cmdDelete_Click()  '要删除记录
    On Error GoTo PROC_ERR
    If MsgBox("真的要删除这条记录吗？", vbYesNo, "询问") = vbYes Then
        OraDatabase.BeginTrans
        recFields.Delete
        OraDatabase.CommitTrans
        If recFields.RecordCount = 0 Then
            blnNoRecorder = True
            intState = fsNull
            Call SetButtons(fsNull)
            MsgBox "已经没有数据了"
            Dim i As Integer
            For i = 0 To c_intFieldsCount
                txtFields(i).Text = ""
            Next i
            
        Else
            intState = fsBrowse
            Call SetButtons(fsBrowse)
            recFields.MoveNext
            If recFields.EOF Then
                recFields.MoveFirst
            End If
            Call SetFields
        End If
          
    End If
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   If Err.Number = 440 Then
      OraDatabase.Rollback
      MsgBox "删除错误，该记录被其他表引用! "
      Resume Next
   Else
   Call ShowError(Me.Name, "cmdDelete_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
   End If
End Sub


Private Sub cmdCancel_Click()  '取消添加，修改操作
    On Error GoTo PROC_ERR
    If blnNoRecorder = False Then  '有记录时bookmark才可用
        recFields.Bookmark = Bookmark
        Call SetFields
        intState = fsBrowse
        Call SetButtons(fsBrowse)
    Else
        intState = fsNull
        Call SetButtons(fsNull)
    End If
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdCancel_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next

End Sub


Private Sub cmdQuery_Click()
    On Error GoTo PROC_ERR
    Dim strCondition As String
    Dim strSQL As String
    FrmQUERYD.objOO4O.Connect = c_strConnect
    FrmQUERYD.objOO4O.DatabaseName = c_strDatabase
    FrmQUERYD.objOO4O.Refresh
    If txtCondition.Text = "" Then
        FrmQUERYD.objOO4O.RecordSource = "select SYJC_ID as 实验检查ID, LCYJ_ID as 临床研究ID from " & strstep & " where 1=1"
    Else
        strCondition = txtCondition.Text
        FrmQUERYD.objOO4O.RecordSource = "select SYJC_ID as 实验检查ID, LCYJ_ID as 临床研究ID from " & strstep & strCondition
    End If
    
    FrmQUERYD.objOO4O.Refresh
    FrmQUERYD.MSFlexGrid.Refresh
    FrmQUERYD.Show vbModal
    
     If FrmQUERYD.blnSelected = True Then
     strSQL = "select SYJC_ID,LCYJ_ID,JCXM,JCSJ,BHZB,GCFZ from " & strstep
     Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
      
      recFields.FindFirst ("SYJC_ID=" & FrmQUERYD.intID)
      intState = fsBrowse
      blnNoRecorder = False
      Call SetButtons(intState)
        
      Call SetFields
      Unload FrmQUERYD
    End If
    
PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Call ShowError(Me.Name, "cmdQuery_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next

End Sub

Private Sub cmdSQL_Click()
   Dim mytest As New frmSQLBuilder
    txtCondition.Text = mytest.ShowSQLBuilder(strstep)
    Unload mytest
End Sub



