VERSION 5.00
Begin VB.Form FrmYWX 
   Caption         =   "ҩ��ϸ��"
   ClientHeight    =   4245
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6675
   LinkTopic       =   "Form1"
   ScaleHeight     =   4245
   ScaleWidth      =   6675
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdSQL 
      Caption         =   "..."
      Height          =   375
      Left            =   960
      TabIndex        =   20
      Top             =   3600
      Width           =   495
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1920
      TabIndex        =   19
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "ȡ��"
      Enabled         =   0   'False
      Height          =   375
      Left            =   960
      TabIndex        =   18
      Top             =   3120
      Width           =   975
   End
   Begin VB.TextBox txtCondition 
      Height          =   375
      Left            =   1440
      TabIndex        =   17
      Top             =   3600
      Width           =   4335
   End
   Begin VB.CommandButton cmdQuery 
      Caption         =   "��ѯ"
      Default         =   -1  'True
      Height          =   375
      Left            =   0
      TabIndex        =   16
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "ȷ��"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4800
      TabIndex        =   15
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "ɾ��"
      Height          =   375
      Left            =   0
      TabIndex        =   14
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "�޸�"
      Height          =   375
      Left            =   3840
      TabIndex        =   13
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdLast 
      Caption         =   "ĩ��"
      Height          =   375
      Left            =   2880
      TabIndex        =   12
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "���"
      Height          =   375
      Left            =   1920
      TabIndex        =   11
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdPrev 
      Caption         =   "��ǰ"
      Height          =   375
      Left            =   960
      TabIndex        =   10
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdFirst 
      Caption         =   "����"
      Height          =   375
      Left            =   0
      TabIndex        =   9
      Top             =   2640
      Width           =   975
   End
   Begin VB.Frame frmrecord 
      Caption         =   "������¼"
      Height          =   2535
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5775
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   5
         Left            =   1320
         TabIndex        =   25
         Top             =   1800
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   4
         Left            =   1320
         TabIndex        =   21
         Top             =   1480
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   3
         Left            =   1320
         TabIndex        =   4
         Top             =   1170
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DANWY"
         Height          =   285
         Index           =   2
         Left            =   1320
         TabIndex        =   3
         Top             =   855
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "FANGJI"
         Height          =   285
         Index           =   1
         Left            =   1320
         TabIndex        =   2
         Top             =   525
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   0
         Left            =   1320
         TabIndex        =   1
         Top             =   240
         Width           =   2895
      End
      Begin VB.Label lblLabels 
         Caption         =   "���Ʒ���"
         Height          =   255
         Index           =   4
         Left            =   200
         TabIndex        =   24
         Top             =   1800
         Width           =   1050
      End
      Begin VB.Label lblLabels 
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   23
         Top             =   1800
         Width           =   1050
      End
      Begin VB.Label lblLabels 
         Caption         =   "������λ"
         Height          =   255
         Index           =   2
         Left            =   200
         TabIndex        =   22
         Top             =   1520
         Width           =   1045
      End
      Begin VB.Label lblLabels 
         Caption         =   "ҩ������"
         Height          =   255
         Index           =   6
         Left            =   180
         TabIndex        =   8
         Top             =   900
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "ҩ�����"
         Height          =   255
         Index           =   5
         Left            =   180
         TabIndex        =   7
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "ҩ��ID"
         Height          =   255
         Index           =   1
         Left            =   180
         TabIndex        =   6
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "���ƹ���ID"
         Height          =   255
         Index           =   0
         Left            =   180
         TabIndex        =   5
         Top             =   270
         Width           =   1095
      End
   End
End
Attribute VB_Name = "FrmYWX"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim strSQL As String

Dim recFields As OraDynaset
Dim recEdited As OraDynaset
Dim intState As FormState
Dim blnNoRecorder As Boolean
Dim Bookmark As String
Dim strstep As String
Const c_intFieldsCount As Integer = 4

Private Sub Form_Load()
    'Call AddParam
    Dim strCondition As String
    On Error GoTo PROC_ERR
    '
     strstep = prefixname & "JTZLGC"
     strSQL = "select JTZlGC_ID from " & strstep & " where  LCYJ_ID = "
      strSQL = strSQL & LCYJIDtemp
      Set recEdited = OraDatabase.CreateDynaset(strSQL, 0&)
      strstep = prefixname & "YW"
      strSQL = "select ZLGC_ID,YW_ID,YWMC,YWJL,JLDW from " & strstep
      
      While Not recEdited.EOF
            
            If strCondition <> "" Then
            strCondition = strCondition & " or "
            End If
            
            strCondition = strCondition & " ZLGC_ID = " & recEdited.Fields("JTZLGC_ID").Value
            
            
            
      recEdited.MoveNext
         
      
      Wend
      
      If strCondition <> "" Then
      strSQL = strSQL & " where " & strCondition
      
      
      strSQL = strSQL & " order by ZLGC_ID asc"
      
      Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
      Else
      
      strSQL = "select ZLGC_ID,YW_ID,YWMC,YWJL,JLDW from " & strstep & " where 1<>1"
      Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
      
      End If
    
    
    If recFields.RecordCount = 0 Then  'û�м�¼
        intState = fsNull
        blnNoRecorder = True
        Call SetButtons(intState)
        MsgBox "û���������"
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
   
   For intIndex = 0 To c_intFieldsCount
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
         
         For intIndex = 0 To c_intFieldsCount
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
         
         For intIndex = 0 To c_intFieldsCount
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
         
         For intIndex = 0 To c_intFieldsCount
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
      
      For intIndex = 0 To c_intFieldsCount
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
    FrmQUERYD.objOO4O.Connect = c_strConnect
    FrmQUERYD.objOO4O.DatabaseName = c_strDatabase
    FrmQUERYD.objOO4O.Refresh
    If txtCondition.Text = "" Then
        FrmQUERYD.objOO4O.RecordSource = "select ZLGC_ID as ���ƹ���ID,YW_ID as ҩ��ID from " & strstep & " where 1=1"
    Else
        strCondition = txtCondition.Text
        FrmQUERYD.objOO4O.RecordSource = "select ZLGC_ID as ���ƹ���ID,YW_ID as ҩ��ID from " & strstep & strCondition
    End If
    
    FrmQUERYD.objOO4O.Refresh
    FrmQUERYD.MSFlexGrid.Refresh
    FrmQUERYD.Show vbModal
    
     If FrmQUERYD.blnSelected = True Then
     strSQL = "select ZLGC_ID,YW_ID,YWMC,YWJL,JLDW from " & strstep
     Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
      recFields.FindFirst ("ZLGC_ID=" & FrmQUERYD.intID)
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


