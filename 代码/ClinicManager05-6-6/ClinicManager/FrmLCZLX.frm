VERSION 5.00
Begin VB.Form FrmLCZLX 
   Caption         =   "�ٴ�����ϸ��"
   ClientHeight    =   6390
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9360
   LinkTopic       =   "Form1"
   ScaleHeight     =   6390
   ScaleWidth      =   9360
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdSQL 
      Caption         =   "..."
      Height          =   375
      Left            =   960
      TabIndex        =   36
      Top             =   3960
      Width           =   495
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1920
      TabIndex        =   35
      Top             =   3480
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "ȡ��"
      Enabled         =   0   'False
      Height          =   375
      Left            =   960
      TabIndex        =   34
      Top             =   3480
      Width           =   975
   End
   Begin VB.TextBox txtCondition 
      Height          =   375
      Left            =   1440
      TabIndex        =   33
      Top             =   3960
      Width           =   4335
   End
   Begin VB.CommandButton cmdQuery 
      Caption         =   "��ѯ"
      Default         =   -1  'True
      Height          =   375
      Left            =   0
      TabIndex        =   32
      Top             =   3960
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "ȷ��"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4800
      TabIndex        =   31
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "ɾ��"
      Height          =   375
      Left            =   0
      TabIndex        =   30
      Top             =   3480
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "�޸�"
      Height          =   375
      Left            =   3840
      TabIndex        =   29
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdLast 
      Caption         =   "ĩ��"
      Height          =   375
      Left            =   2880
      TabIndex        =   28
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "���"
      Height          =   375
      Left            =   1920
      TabIndex        =   27
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdPrev 
      Caption         =   "��ǰ"
      Height          =   375
      Left            =   960
      TabIndex        =   26
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdFirst 
      Caption         =   "����"
      Height          =   375
      Left            =   0
      TabIndex        =   25
      Top             =   3000
      Width           =   975
   End
   Begin VB.Frame frmrecord 
      Caption         =   "������¼"
      Height          =   2895
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9255
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   11
         Left            =   6120
         TabIndex        =   12
         Top             =   1170
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   10
         Left            =   6120
         TabIndex        =   11
         Top             =   855
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   9
         Left            =   6120
         TabIndex        =   10
         Top             =   525
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   8
         Left            =   6120
         TabIndex        =   9
         Top             =   210
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   0
         Left            =   1320
         TabIndex        =   8
         Top             =   240
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "FANGJI"
         Height          =   285
         Index           =   1
         Left            =   1320
         TabIndex        =   7
         Top             =   525
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DANWY"
         Height          =   285
         Index           =   2
         Left            =   1320
         TabIndex        =   6
         Top             =   855
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   3
         Left            =   1320
         TabIndex        =   5
         Top             =   1170
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIXING"
         Height          =   285
         Index           =   4
         Left            =   1320
         TabIndex        =   4
         Top             =   1485
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIBING"
         Height          =   285
         Index           =   5
         Left            =   1320
         TabIndex        =   3
         Top             =   1815
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENGHOU"
         Height          =   285
         Index           =   6
         Left            =   1320
         TabIndex        =   2
         Top             =   2130
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENGZHUANG"
         Height          =   285
         Index           =   7
         Left            =   1320
         TabIndex        =   1
         Top             =   2445
         Width           =   2895
      End
      Begin VB.Label lblLabels 
         Caption         =   "�ٴ�����ID"
         Height          =   255
         Index           =   0
         Left            =   180
         TabIndex        =   24
         Top             =   270
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "��֤֢����"
         Height          =   255
         Index           =   1
         Left            =   180
         TabIndex        =   23
         Top             =   880
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "���ָ�����"
         Height          =   255
         Index           =   2
         Left            =   180
         TabIndex        =   22
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "ָ��Ȩ��"
         Height          =   255
         Index           =   3
         Left            =   180
         TabIndex        =   21
         Top             =   1520
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "ָ����Ŀ"
         Height          =   255
         Index           =   4
         Left            =   180
         TabIndex        =   20
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "��Ч��׼��Դ"
         Height          =   255
         Index           =   5
         Left            =   180
         TabIndex        =   19
         Top             =   2160
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "��Ч��׼"
         Height          =   255
         Index           =   6
         Left            =   180
         TabIndex        =   18
         Top             =   2520
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "��ϱ�׼��Դ"
         Height          =   255
         Index           =   7
         Left            =   4560
         TabIndex        =   17
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "�������"
         Height          =   255
         Index           =   8
         Left            =   4560
         TabIndex        =   16
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "��ҽ��Ϸ���"
         Height          =   255
         Index           =   9
         Left            =   4560
         TabIndex        =   15
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "����Ч��"
         Height          =   255
         Index           =   10
         Left            =   4560
         TabIndex        =   14
         Top             =   1240
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "�ٴ��о�ID"
         Height          =   255
         Index           =   23
         Left            =   180
         TabIndex        =   13
         Top             =   600
         Width           =   1215
      End
   End
End
Attribute VB_Name = "FrmLCZLX"
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
Const c_intFieldsCount As Integer = 11
Dim strstep As String

Private Sub Form_Load()
    'Call AddParam
    Dim strSQL As String
    
    On Error GoTo PROC_ERR
    '
    strstep = prefixname & "LCZL"
   If LCYJIDtemp = -1 Then
    
    strSQL = "select LCZL_ID,LCYJ_ID,BZZMC,ZDZBFL,ZBQZ,ZBXM,LXBZLY,LXBZ,ZDBZLY,ZDYQ,ZYZDFF,ZYXL from " & strstep
   Else
      strSQL = "select * from " & strstep & " where LCYJ_ID= " & LCYJIDtemp
      
   End If
   
   Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
   
   If recFields.RecordCount = 0 Then  'û�м�¼
        intState = fsNull
        blnNoRecorder = True
        Call SetButtons(intState)
        MsgBox "Ŀǰû������"
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


Private Sub SetFields()         '����ֶ�
 
    On Error GoTo PROC_ERR
   
   Dim intIndex As Integer
   
   For intIndex = 0 To 11
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
         
         For intIndex = 0 To 11
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
         
         For intIndex = 0 To 11
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
         
         For intIndex = 0 To 11
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


Private Sub cmdFirst_Click()  '��һ����¼
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

Private Sub cmdLast_Click()  '���һ����¼
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

Private Sub cmdPrev_Click()  'ǰһ����¼
    On Error GoTo PROC_ERR
    recFields.MovePrevious
    If recFields.BOF Then
        MsgBox "�Ѿ�����ǰһ����¼��!"
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

Private Sub cmdNext_Click()  '��һ����¼
    On Error GoTo PROC_ERR
    recFields.MoveNext
    If recFields.EOF Then
        MsgBox "�Ѿ������һ����¼��!"
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


Private Sub cmdUpdate_Click()  'Ҫ���¼�¼
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



Private Sub cmdOK_Click()    'ȷ��
    On Error GoTo PROC_ERR
    Dim intIndex As Integer
   
   recFields.Edit
      
      For intIndex = 0 To 11
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


Private Sub cmdDelete_Click()  'Ҫɾ����¼
    On Error GoTo PROC_ERR
    If MsgBox("���Ҫɾ��������¼��", vbYesNo, "ѯ��") = vbYes Then
        OraDatabase.BeginTrans
        recFields.Delete
        OraDatabase.CommitTrans
        If recFields.RecordCount = 0 Then
            blnNoRecorder = True
            intState = fsNull
            Call SetButtons(fsNull)
            MsgBox "�Ѿ�û��������"
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
      MsgBox "ɾ�����󣬸ü�¼������������! "
      Resume Next
   Else
   Call ShowError(Me.Name, "cmdDelete_Click", _
                 "DengSG", Err.Number, Err.Description)
   Resume Next
   End If
End Sub


Private Sub cmdCancel_Click()  'ȡ����ӣ��޸Ĳ���
    On Error GoTo PROC_ERR
    If blnNoRecorder = False Then  '�м�¼ʱbookmark�ſ���
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
        FrmQUERYD.objOO4O.RecordSource = "select LCZL_ID as �ٴ�����ID, LCYJ_ID as �ٴ��о�ID from " & strstep & " where 1=1"
    Else
        strCondition = txtCondition.Text
        FrmQUERYD.objOO4O.RecordSource = "select LCZL_ID as �ٴ�����ID, LCYJ_ID as �ٴ��о�ID from " & strstep & strCondition
    End If
    
    FrmQUERYD.objOO4O.Refresh
    FrmQUERYD.MSFlexGrid.Refresh
    FrmQUERYD.Show vbModal
    
     If FrmQUERYD.blnSelected = True Then
     strSQL = "select LCZL_ID,LCYJ_ID,BZZMC,ZDZBFL,ZBQZ,ZBXM,LXBZLY,LXBZ,ZDBZLY,ZDYQ,ZYZDFF,ZYXL from " & strstep '& " where LCYJ_ID in ( select LCYJ_ID from " & prefixname & "LCYJ" & suffixCondition & " ) "
     Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
      recFields.FindFirst ("LCZL_ID=" & FrmQUERYD.intID)
      
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



