VERSION 5.00
Object = "{92096210-97DF-11CF-9F27-02608C4BF3B5}#1.0#0"; "oradc.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "msflxgrd.ocx"
Begin VB.Form FrmXYLF 
   Caption         =   "西药疗法"
   ClientHeight    =   6465
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9720
   LinkTopic       =   "Form1"
   ScaleHeight     =   6465
   ScaleWidth      =   9720
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   4800
      TabIndex        =   42
      Top             =   6000
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Enabled         =   0   'False
      Height          =   375
      Left            =   3600
      TabIndex        =   41
      Top             =   6000
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "提交"
      Enabled         =   0   'False
      Height          =   375
      Left            =   2400
      TabIndex        =   40
      Top             =   6000
      Width           =   1095
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "修改"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1200
      TabIndex        =   39
      Top             =   6000
      Width           =   1095
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "删除"
      Enabled         =   0   'False
      Height          =   375
      Left            =   0
      TabIndex        =   38
      Top             =   6000
      Width           =   1095
   End
   Begin VB.Frame frmrecord 
      Caption         =   "单条记录"
      Height          =   2655
      Left            =   0
      TabIndex        =   13
      Top             =   3360
      Width           =   9255
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   12
         Left            =   5760
         TabIndex        =   44
         Top             =   1815
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENGZHUANG"
         Height          =   285
         Index           =   7
         Left            =   5760
         TabIndex        =   25
         Top             =   240
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENGHOU"
         Height          =   285
         Index           =   6
         Left            =   1320
         TabIndex        =   24
         Top             =   2160
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIBING"
         Height          =   285
         Index           =   5
         Left            =   1320
         TabIndex        =   23
         Top             =   1815
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIXING"
         Height          =   285
         Index           =   4
         Left            =   1320
         TabIndex        =   22
         Top             =   1485
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   3
         Left            =   1320
         TabIndex        =   21
         Top             =   1170
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DANWY"
         Height          =   285
         Index           =   2
         Left            =   1320
         TabIndex        =   20
         Top             =   855
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "FANGJI"
         Height          =   285
         Index           =   1
         Left            =   1320
         TabIndex        =   19
         Top             =   525
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   0
         Left            =   1320
         TabIndex        =   18
         Top             =   240
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   8
         Left            =   5760
         TabIndex        =   17
         Top             =   525
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   9
         Left            =   5760
         TabIndex        =   16
         Top             =   855
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   10
         Left            =   5760
         TabIndex        =   15
         Top             =   1170
         Width           =   2895
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   11
         Left            =   5760
         TabIndex        =   14
         Top             =   1485
         Width           =   2895
      End
      Begin VB.Label lblLabels 
         Caption         =   "编辑状态"
         Height          =   255
         Index           =   12
         Left            =   4440
         TabIndex        =   43
         Top             =   1875
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "原文_ID"
         Height          =   255
         Index           =   9
         Left            =   4440
         TabIndex        =   37
         Top             =   915
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "药物成分信息"
         Height          =   255
         Index           =   8
         Left            =   4440
         TabIndex        =   36
         Top             =   585
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "治疗原则"
         Height          =   255
         Index           =   7
         Left            =   4440
         TabIndex        =   35
         Top             =   270
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "给药时间"
         Height          =   255
         Index           =   6
         Left            =   180
         TabIndex        =   34
         Top             =   2160
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "药物剂型"
         Height          =   255
         Index           =   5
         Left            =   180
         TabIndex        =   33
         Top             =   1875
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "药物名称"
         Height          =   255
         Index           =   4
         Left            =   180
         TabIndex        =   32
         Top             =   1545
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "给药方式"
         Height          =   255
         Index           =   3
         Left            =   180
         TabIndex        =   31
         Top             =   1230
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "病证名称"
         Height          =   255
         Index           =   2
         Left            =   180
         TabIndex        =   30
         Top             =   915
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "治疗步骤"
         Height          =   255
         Index           =   1
         Left            =   180
         TabIndex        =   29
         Top             =   585
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "ID"
         Height          =   255
         Index           =   0
         Left            =   180
         TabIndex        =   28
         Top             =   270
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "出处信息"
         Height          =   255
         Index           =   10
         Left            =   4440
         TabIndex        =   27
         Top             =   1230
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "备注"
         Height          =   255
         Index           =   11
         Left            =   4440
         TabIndex        =   26
         Top             =   1545
         Width           =   1215
      End
   End
   Begin VB.Frame fraCondition 
      Caption         =   "查询条件"
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9255
      Begin VB.CommandButton CmdQueryK 
         Caption         =   "查询空记录"
         Height          =   375
         Left            =   7920
         TabIndex        =   45
         Top             =   720
         Width           =   1215
      End
      Begin VB.TextBox txtState 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   5520
         TabIndex        =   10
         Top             =   720
         Width           =   2295
      End
      Begin VB.TextBox txtTo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   2880
         TabIndex        =   9
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdQuery 
         Caption         =   "查询"
         Default         =   -1  'True
         Height          =   375
         Left            =   7920
         TabIndex        =   8
         Top             =   240
         Width           =   1215
      End
      Begin VB.CheckBox chkID 
         Caption         =   "ID"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   240
         Width           =   1095
      End
      Begin VB.CheckBox chkmc 
         Caption         =   "病症名称"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   675
         Width           =   1215
      End
      Begin VB.CheckBox chkState 
         Caption         =   "出处信息"
         Height          =   255
         Left            =   4080
         TabIndex        =   5
         Top             =   720
         Width           =   1095
      End
      Begin VB.CheckBox chkLCYJMC 
         Caption         =   "临床研究名称"
         Height          =   255
         Left            =   4080
         TabIndex        =   4
         Top             =   240
         Width           =   1455
      End
      Begin VB.TextBox txtLCYJMC 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   5520
         TabIndex        =   3
         Top             =   240
         Width           =   2295
      End
      Begin VB.TextBox txtFrom 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1440
         TabIndex        =   2
         Top             =   240
         Width           =   975
      End
      Begin VB.TextBox txtmc 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   1440
         TabIndex        =   1
         Top             =   720
         Width           =   2415
      End
      Begin VB.Label lblID 
         AutoSize        =   -1  'True
         Caption         =   "到"
         Height          =   195
         Left            =   2520
         TabIndex        =   11
         Top             =   270
         Width           =   180
      End
   End
   Begin MSFlexGridLib.MSFlexGrid grdTable 
      Bindings        =   "FrmXYLF.frx":0000
      Height          =   2175
      Left            =   0
      TabIndex        =   12
      Top             =   1200
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   3836
      _Version        =   393216
      Enabled         =   0   'False
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin ORADCLibCtl.ORADC ORADC 
      Height          =   255
      Left            =   6240
      Top             =   6120
      Visible         =   0   'False
      Width           =   3015
      _Version        =   65536
      _ExtentX        =   5318
      _ExtentY        =   450
      _StockProps     =   207
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
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
Attribute VB_Name = "FrmXYLF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim recFields As OraDynaset
Dim recEdited As OraDynaset
Dim strSQL As String
Dim intState As FormState
Dim intTopRow As Integer '记录原来的行号，返回时把Grid的TopRow赋值即可
Dim a_strEdit(1) As String

Private Sub cboState_Change()

End Sub

Private Sub Form_Load()
   
   Dim striCondition As String
   grdTable.ColWidth(0) = 200
   a_strEdit(0) = "未编辑"
   a_strEdit(1) = "已编辑"
   If flag = 1 Then
      strSQL = "select ID,ZLBZ,BZMC,GYFS,YWMC,YWJX,GYSJ,ZLYZ,YWCFXX,YW_ID,CCXX,BZ,BJZT from C_XYLF "
   
      strSQL = strSQL & " where YW_ID = " & ywidtemp
      strSQL = strSQL & " order by ID asc"
   
      Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
      Set ORADC.Recordset = recFields
   
      If recFields.RecordCount <> 0 Then
         recFields.MoveFirst
         intState = fsBrowse
         SetDetail
         SetButton
      Else
         intState = fsNull
         SetButton
      End If
   End If
End Sub
Private Sub cmdQuery_Click()
   On Error GoTo errhandle
   
   Dim strCondition As String
   
   strSQL = "select ID,ZLBZ,BZMC,GYFS,YWMC,YWJX,GYSJ,ZLYZ,YWCFXX,YW_ID,CCXX,BZ,BJZT from C_XYLF "
   
   If chkID.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " ID between " & txtFrom.Text & " and " & txtTo.Text
   End If
      
   If chkmc.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " BZMC like '%" & txtmc.Text & "%'"
   End If
   
   'If chkywid.Value Then
   
   '   If strCondition <> "" Then
   '      strCondition = strCondition & " and "
   '   End If
      
   '   strCondition = strCondition & " YW_ID like '%" & txtywid.Text & "%'"
   'End If
   
   If chkState.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " CCXX like '%" & txtState.Text & "%'"
   End If
   
   If chkLCYJMC.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " YW_ID in (select YW_ID from C_LCYJ where LCYJMC like '%" & txtLCYJMC.Text & "%' )"
   
   End If
   

   
   If strCondition <> "" Then
      strSQL = strSQL & " where " & strCondition
   End If
   
   strSQL = strSQL & " order by ID asc"
   
   Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
   Set ORADC.Recordset = recFields
   
   If recFields.RecordCount <> 0 Then
      recFields.MoveFirst
      intState = fsBrowse
      SetDetail
      SetButton
   Else
      intState = fsNull
      SetButton
   End If
  
   Exit Sub

errhandle:
   MsgBox Err.Description
   Exit Sub

End Sub

Private Sub SetDetail()
   Dim intIndex As Integer
   
   For intIndex = 0 To 12
      txtFields(intIndex).Text = recFields.Fields(intIndex).Value & ""
      txtFields(intIndex).ToolTipText = recFields.Fields(intIndex).Value & ""
   Next intIndex
   
        
End Sub

Private Sub SetButton()
   Dim intIndex As Integer
   
   Select Case intState
      Case fsNull
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = False
         cmdCancel.Enabled = False
         cmdQuit.Enabled = True
         grdTable.Enabled = False
                 
         
         For intIndex = 0 To 12
            txtFields(intIndex).Enabled = False
            txtFields(intIndex).Text = ""
         Next intIndex
         
      Case fsBrowse
         cmdUpdate.Enabled = True
         cmdDelete.Enabled = True
         cmdOK.Enabled = False
         cmdCancel.Enabled = False
         cmdQuit.Enabled = True
         grdTable.Enabled = True
         
         For intIndex = 0 To 12
            txtFields(intIndex).Enabled = False
         Next intIndex
         
      Case fsUpdate
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = True
         cmdCancel.Enabled = True
         cmdQuit.Enabled = False
         grdTable.Enabled = False
                  
         For intIndex = 0 To 12
            txtFields(intIndex).Enabled = True
         Next intIndex
         
   End Select
   
End Sub

Private Sub cmdCancel_Click()

   intState = fsBrowse
   SetDetail
   SetButton

End Sub

Private Sub cmdDelete_Click()
   On Error Resume Next
   
   Dim intIndex As Integer
   Dim intSelStart As Integer
   Dim intSelRange As Integer
   Dim strID As String
   
   intSelStart = grdTable.Row
   intSelRange = grdTable.RowSel
   
   If MsgBox("确定要删除这" & intSelRange - intSelStart + 1 & "条记录吗？", vbOKCancel, "删除提示") = vbOK Then
   
      For intIndex = intSelStart To intSelRange
         grdTable.Row = intIndex
         strID = grdTable.Text
         recFields.FindFirst "ID=" & strID
         recFields.Delete
      Next intIndex
      
      intTopRow = recFields.RowPosition
      ORADC.Refresh
      'GoCurrent
      
      If recFields.RecordCount = 0 Then
         intState = fsNull
         SetButton
      End If
      
   End If

End Sub

Private Sub cmdOK_Click()
   On Error GoTo errhandle

   Dim intIndex As Integer
   
   recFields.Edit
      
      For intIndex = 0 To 12
         recFields.Fields(intIndex).Value = txtFields(intIndex).Text
      Next intIndex
                  
   recFields.Update
      
   intState = fsBrowse
   
   SetButton
      
   intTopRow = recFields.RowPosition
   ORADC.Refresh
   'GoCurrent
   
   Exit Sub

errhandle:
   MsgBox Err.Description
   Exit Sub
End Sub

Private Sub cmdQuit_Click()

   Unload Me
   
End Sub

Private Sub cmdUpdate_Click()

   intState = fsUpdate
   SetButton

End Sub

Private Sub IDEnd_KeyPress(KeyAscii As Integer)
   
   If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
      KeyAscii = 0
   End If

End Sub

Private Sub IDStart_KeyPress(KeyAscii As Integer)
    
   If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
      KeyAscii = 0
   End If

End Sub


Private Sub grdTable_SelChange()
   
   recFields.MoveFirst
   recFields.FindFirst "ID=" & grdTable.Text
   SetDetail

End Sub

Private Sub GoCurrent()
   
   recFields.FindFirst "ID=" & txtFields(0).Text
   grdTable.Row = recFields.RowPosition
   grdTable.RowSel = 1
   grdTable.Col = 1
   grdTable.ColSel = grdTable.Cols - 1
   grdTable.SetFocus
   grdTable.TopRow = intTopRow
End Sub

Private Sub CmdQueryK_Click()
On Error GoTo errhandle
   
   Dim strCondition As String
   
   strSQL = "select ID,ZLBZ,BZMC,GYFS,YWMC,YWJX,GYSJ,ZLYZ,YWCFXX,YW_ID,CCXX,BZ,BJZT from C_XYLF "
   
   strCondition = " GYFS is NULL and YWMC is NULL and YWJX is NULL and GYSJ is NULL and ZLYZ is NULL and YWCFXX is NULL and CCXX is NULL and BZ is NULL "
      
   strSQL = strSQL & " where " & strCondition
   
   
   strSQL = strSQL & " order by ID asc"
   
   Set recFields = OraDatabase.CreateDynaset(strSQL, 0&)
   Set ORADC.Recordset = recFields
   
   If recFields.RecordCount <> 0 Then
      recFields.MoveFirst
      intState = fsBrowse
      SetDetail
      SetButton
   Else
      intState = fsNull
      SetButton
   End If
  
   Exit Sub

errhandle:
   MsgBox Err.Description
   Exit Sub



End Sub



