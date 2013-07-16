VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmSQLBuilder 
   Caption         =   "SQL条件助手"
   ClientHeight    =   6615
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8085
   LinkTopic       =   "Form1"
   ScaleHeight     =   6615
   ScaleWidth      =   8085
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "取消"
      Height          =   375
      Left            =   6480
      TabIndex        =   7
      Top             =   5280
      Width           =   1215
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   375
      Left            =   6480
      TabIndex        =   6
      Top             =   5880
      Width           =   1215
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "重置"
      Height          =   375
      Left            =   6480
      TabIndex        =   5
      Top             =   4680
      Width           =   1215
   End
   Begin VB.TextBox txtSQL 
      Height          =   1635
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Top             =   4560
      Width           =   5460
   End
   Begin VB.ListBox lstKeyString 
      Height          =   3840
      Left            =   4200
      TabIndex        =   3
      Top             =   360
      Width           =   3345
   End
   Begin MSComctlLib.ListView columnView 
      Height          =   4020
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   3345
      _ExtentX        =   5900
      _ExtentY        =   7091
      View            =   3
      Arrange         =   1
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "字段名"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "字段类型"
         Object.Width           =   2646
      EndProperty
   End
   Begin VB.Label lblSyn 
      Caption         =   "关系符 "
      Height          =   255
      Left            =   4200
      TabIndex        =   2
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lblField 
      Caption         =   "字段"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "frmSQLBuilder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Const c_strDBName = "?"
'Const c_strConnect = "tcm/passwd"

'Dim OraSession As OraSessionClass
'Dim OraDatabase As OraDatabase
Dim oraDynaSetCol As OraDynaset
Dim oraDynaSetComment As OraDynaset
Dim oraField As oraField
Dim strSQL As String
Dim ItemX As ListItem

Dim doubleClickItem As MSComctlLib.ListItem
Rem 纪录listView的click事件中的被选中了Item

Dim strTableName As String
Rem 用来记录传进来的表名参数


Private Sub cmdCancel_Click()
   txtSQL.Text = ""
   Me.Hide
End Sub

Private Sub cmdClear_Click()
   txtSQL.Text = ""
End Sub

Private Sub cmdOK_Click()
   Me.Hide
   'Unload Me
End Sub

Rem 把字段名加入到strSQL中
Private Sub columnView_DblClick()
On Error GoTo DBClick_Error
      txtSQL.Text = txtSQL.Text & " " & doubleClickItem.Key & " "
   Exit Sub
   
DBClick_Error:
Rem 没有选中一个字段名进行双击
   MsgBox "请双击一个字段名"
End Sub

Private Sub columnView_ItemClick(ByVal Item As MSComctlLib.ListItem)
   Rem 为双击事件复制击中对象Item
   Set doubleClickItem = Item
End Sub

Private Sub Form_Load()
    lstKeyString.AddItem "and"
    lstKeyString.AddItem "or"
    lstKeyString.AddItem "like"
    lstKeyString.AddItem "="
    lstKeyString.AddItem "<"
    lstKeyString.AddItem ">"
    lstKeyString.AddItem "IS NULL"
    lstKeyString.AddItem "IS NOT NULL"
    lstKeyString.AddItem "between"
    lstKeyString.AddItem "%"
    lstKeyString.AddItem "*"
    lstKeyString.AddItem "'"
End Sub

Private Sub lstKeyString_DblClick()
Rem 为SQL语句添加操作符号
   Dim i As Integer
   For i = 0 To lstKeyString.ListCount - 1
      If lstKeyString.Selected(i) Then
         
         If lstKeyString.List(i) = "%" Or lstKeyString.List(i) = "'" Then
         
            txtSQL.Text = txtSQL.Text & lstKeyString.List(i)
            
         Else
            txtSQL.Text = txtSQL.Text & " " & lstKeyString.List(i) & " "
         End If
         Exit Sub
      End If
   Next
End Sub

Private Sub OO4O_init()
On Error GoTo OO4O_error
   strSQL = "select column_name,data_type from USER_TAB_COLUMNS where table_name='" & strTableName & "' and data_type not in('BLOB','CLOB')"
'   Set OraSession = New OraSessionClass
   
'   Set OraDatabase = OraSession.OpenDatabase(c_strDBName, c_strConnect, ORADB_ORAMODE)
   Set oraDynaSetCol = OraDatabase.CreateDynaset(strSQL, 0&)
   
   OraDatabase.Parameters.Add "COL_NAME", "", ORAPARM_INPUT
   strSQL = "select comments from user_col_comments where table_name='" & strTableName & "' and column_name=:COL_NAME"
'   strSQL = "select comments from user_col_comments where table_name='" & strTableName & "' and column_name='LCYJMC'"
   Set oraDynaSetComment = OraDatabase.CreateDynaset(strSQL, 0&)
   
   Dim i As Integer
   For i = 0 To oraDynaSetCol.RecordCount - 1
      Set oraField = oraDynaSetCol.Fields("COLUMN_NAME")
      OraDatabase.Parameters("COL_NAME").Value = oraField.Value
      oraDynaSetComment.Refresh
      If Not (oraDynaSetComment.Fields("comments").Value = "" Or IsNull(oraDynaSetComment.Fields("comments").Value)) Then
         Set ItemX = columnView.ListItems.Add(, oraField.Value, oraDynaSetComment.Fields("comments").Value)
      Else
         Set ItemX = columnView.ListItems.Add(, oraField.Value, oraField.Value)
      End If
      ItemX.SubItems(1) = oraDynaSetCol.Fields("DATA_TYPE")
      oraDynaSetCol.MoveNext
   Next
   
   Set doubleClickItem = Nothing
   OraDatabase.Parameters.Remove "COL_NAME"
   Exit Sub
OO4O_error:
    ShowError "frmSQLBuilder", "oo4o_init", "caiyj", Err.Number, Err.Description
    Resume Next
End Sub

Rem SQLBuilder的输出方法，可以通过该方法获取SQLBuilder的全部功能
Public Function ShowSQLBuilder(strTable As String)
   strTableName = strTable
   columnView.ListItems.Clear
   OO4O_init
   Me.Show vbModal
  
   If txtSQL.Text <> "" Then
      txtSQL.Text = " where " & txtSQL.Text
   End If
   
   ShowSQLBuilder = txtSQL.Text
   Unload Me
End Function

