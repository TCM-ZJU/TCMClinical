VERSION 5.00
Object = "{92096210-97DF-11CF-9F27-02608C4BF3B5}#1.0#0"; "oradc.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form FrmPeaple 
   Caption         =   "Form1"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11310
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   11310
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   7080
      TabIndex        =   25
      Top             =   5160
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Height          =   375
      Left            =   5880
      TabIndex        =   24
      Top             =   5160
      Width           =   1095
   End
   Begin VB.CommandButton cmdCommit 
      Caption         =   "提交"
      Height          =   375
      Left            =   4680
      TabIndex        =   23
      Top             =   5160
      Width           =   1095
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "删除"
      Height          =   375
      Left            =   7080
      TabIndex        =   22
      Top             =   4680
      Width           =   1095
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "修改"
      Height          =   375
      Left            =   5880
      TabIndex        =   21
      Top             =   4680
      Width           =   1095
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "添加"
      Height          =   375
      Left            =   4680
      TabIndex        =   20
      Top             =   4680
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "单条记录"
      Height          =   4335
      Left            =   4680
      TabIndex        =   1
      Top             =   0
      Width           =   4695
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   9
         Left            =   1200
         TabIndex        =   27
         Text            =   "0"
         Top             =   3720
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   8
         Left            =   1200
         TabIndex        =   19
         Top             =   3360
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   6
         Left            =   1200
         TabIndex        =   17
         Top             =   2640
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "yyyy-M-d"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2052
            SubFormatType   =   3
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   5
         Left            =   1200
         TabIndex        =   16
         Top             =   2280
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   3
         Left            =   1200
         TabIndex        =   15
         Top             =   1200
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   2
         Left            =   1200
         TabIndex        =   11
         Top             =   840
         Width           =   1935
      End
      Begin VB.TextBox Detail 
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
         Index           =   4
         Left            =   240
         TabIndex        =   9
         Top             =   1920
         Width           =   3855
      End
      Begin VB.ComboBox cmbEnabled 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         ItemData        =   "FrmPeaple.frx":0000
         Left            =   1200
         List            =   "FrmPeaple.frx":000A
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   3000
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   1200
         TabIndex        =   5
         Top             =   480
         Width           =   1935
      End
      Begin VB.TextBox Detail 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   1200
         TabIndex        =   2
         Top             =   120
         Width           =   1935
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "账户信息"
         Height          =   180
         Index           =   6
         Left            =   240
         TabIndex        =   26
         Top             =   3840
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "用户在线"
         Height          =   180
         Index           =   5
         Left            =   240
         TabIndex        =   18
         Top             =   3480
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "用户级别"
         Height          =   180
         Index           =   4
         Left            =   240
         TabIndex        =   14
         Top             =   960
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "失效日期"
         Height          =   180
         Index           =   3
         Left            =   240
         TabIndex        =   13
         Top             =   2760
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "创建日期"
         Height          =   180
         Index           =   2
         Left            =   240
         TabIndex        =   12
         Top             =   2400
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "中文姓名"
         Height          =   180
         Index           =   1
         Left            =   240
         TabIndex        =   10
         Top             =   1320
         Width           =   720
      End
      Begin VB.Label Label5 
         Caption         =   "用户描述"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   1680
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "账户有效"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   3120
         Width           =   975
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "密 码"
         Height          =   180
         Left            =   240
         TabIndex        =   4
         Top             =   600
         Width           =   450
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "用户帐号"
         Height          =   195
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   720
      End
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid 
      Bindings        =   "FrmPeaple.frx":0016
      Height          =   4215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7435
      _Version        =   393216
      AllowBigSelection=   0   'False
      SelectionMode   =   1
      AllowUserResizing=   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin ORADCLibCtl.ORADC ORADC 
      Height          =   495
      Left            =   600
      Top             =   4800
      Visible         =   0   'False
      Width           =   1815
      _Version        =   65536
      _ExtentX        =   3201
      _ExtentY        =   873
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
Attribute VB_Name = "FrmPeaple"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Enum FormState
   fsIdle = -1
   fsNull = 0
   fsBrowse = 1
   fsInsert = 2
   fsUpdate = 3
   fsDelete = 4
End Enum

Dim oraRS As OraDynaset
Dim intState As FormState
Dim rownum As Integer
Dim rownumo As Integer
Public c_strDBName As String

Private Sub SetDetail()  '设置单条记录的inputbox
   Dim i As Integer
    
   Select Case intState
      Case 0: '空记录状态
         For i = 0 To 6
            Me.Detail(i).Text = ""
            Me.Detail(i).Enabled = False
         Next i
         Me.cmbEnabled.ListIndex = -1
         Me.cmbEnabled.Enabled = False
         For i = 8 To 9
            Me.Detail(i).Text = ""
            Me.Detail(i).Enabled = False
         Next i
 
      
      Case 1:   '浏览状态
         For i = 0 To 6
            Me.Detail(i).Text = oraRS.Fields(i).Value & ""
            
            Me.Detail(i).Enabled = False
         Next i
          
          
         Me.cmbEnabled.ListIndex = oraRS.Fields(7).Value & ""
         Me.cmbEnabled.Enabled = False
             
         Me.Detail(8).Text = oraRS.Fields(8).Value & ""
         Me.Detail(8).Enabled = False
         
         Me.Detail(9).Text = oraRS.Fields(9).Value & ""
         Me.Detail(9).Enabled = False
             
        
      Case 2:  '添加记录状态
         For i = 0 To 4
            Me.Detail(i).Text = ""
            Me.Detail(i).Enabled = True
         Next i
         Me.Detail(5).Text = Date$
         Me.Detail(5).Enabled = False
         Me.Detail(6).Text = ""
         Me.Detail(6).Enabled = True
         
         Me.cmbEnabled.ListIndex = 1
         Me.cmbEnabled.Enabled = True
         
         Me.Detail(8).Text = ""
         Me.Detail(8).Enabled = True
         
         Me.Detail(9).Text = "0"
         Me.Detail(9).Enabled = True
      
      Case 3:   '修改
          
         For i = 0 To 6
         
            Me.Detail(i).Text = oraRS.Fields(i).Value & ""
            If i <> 5 Then
               Me.Detail(i).Enabled = True
            Else
               Me.Detail(i).Enabled = False
            End If
         Next i
          
          
         Me.cmbEnabled.ListIndex = oraRS.Fields(7).Value
         Me.cmbEnabled.Enabled = True
         
         For i = 8 To 9
            Me.Detail(i).Text = oraRS.Fields(i).Value & ""
            Me.Detail(i).Enabled = True
         Next i
      
      Case 4:
      '删除 显示下一条记录
      ''''''''''''''''''''''''''''''''
      ''''''''''''''''''''''''''''''''
      ''''''''''''''''''''''''''''''''
      ''''''''''''''''''''''''''''''''
      ''''''''''''''''''''''''''''''''
      
   End Select

End Sub

Private Sub SetButton()
   Select Case intState
   Case 0:
      Me.cmdAdd.Enabled = True
      Me.cmdCancel.Enabled = False
      Me.cmdCommit.Enabled = False
      Me.cmdDelete.Enabled = False
      Me.cmdQuit.Enabled = True
      Me.cmdUpdate.Enabled = False
     
   Case 1:
      Me.cmdAdd.Enabled = True
      Me.cmdCancel.Enabled = False
      Me.cmdCommit.Enabled = False
      Me.cmdDelete.Enabled = True
      Me.cmdQuit.Enabled = True
      Me.cmdUpdate.Enabled = True
    
   Case 2:
      Me.cmdAdd.Enabled = False
      Me.cmdCancel.Enabled = True
      Me.cmdCommit.Enabled = True
      Me.cmdDelete.Enabled = False
      Me.cmdQuit.Enabled = False
      Me.cmdUpdate.Enabled = False
       
   Case 3:
      Me.cmdAdd.Enabled = False
      Me.cmdCancel.Enabled = True
      Me.cmdCommit.Enabled = True
      Me.cmdDelete.Enabled = False
      Me.cmdQuit.Enabled = False
      Me.cmdUpdate.Enabled = False
       
    '删除状态不要考虑
    '删除万之后回到浏览状态
      
   End Select

End Sub

Private Sub LightSelRow()
   
   
End Sub

Private Sub cmdAdd_Click()
   
   intState = fsInsert
   SetDetail
   SetButton
   LightSelRow
 
End Sub

Private Sub cmdCancel_Click()
   If oraRS.RecordCount <> 0 Then
      intState = fsBrowse
   Else
      intState = fsNull
   End If
   SetDetail
   SetButton
   LightSelRow
End Sub

Private Sub cmdCommit_Click()
   
   If Me.Detail(0).Text = "" Then
      MsgBox "用户帐号不能为空"
   
   Else
      rownum = Me.MSFlexGrid.Row
      '因为oraRS是一个不可更新的记录集合（因为用到了as），所以临时申明一个用作添加和修改
      Dim tempOraRS As OraDynaset
      Dim tempstrSQL As String
      tempstrSQL = "Select CUSER,PASSWD,CLEVEL,CNAME,DESCRIPTION,CDATE,EDATE,ENABLED,LOCKED,COUNT from CUSER"
      Set tempOraRS = OraDatabase.CreateDynaset(tempstrSQL, 0&)
      On Error GoTo errhandle
      OraDatabase.BeginTrans
      Dim i
      Select Case intState
         Case 2:  '添加时提交
            tempOraRS.AddNew
            For i = 0 To 4
               tempOraRS.Fields(i).Value = Me.Detail(i).Text
            Next i
            tempOraRS.Fields(5).Value = Me.Detail(5).Text
            tempOraRS.Fields(6).Value = Me.Detail(6).Text
            tempOraRS.Fields(7).Value = Me.cmbEnabled.ListIndex
            tempOraRS.Fields(8).Value = Me.Detail(8).Text
            tempOraRS.Fields(9).Value = Me.Detail(9).Text
            
            tempOraRS.Update
         
         Case 3:  '修改时提交
             
            
            tempOraRS.FindFirst ("CUSER='" & Me.Detail(0).Text & "'")
            'MsgBox tempOraRS.Fields("id").Value
            
            
            tempOraRS.Edit
            For i = 0 To 4
               tempOraRS.Fields(i).Value = Me.Detail(i).Text
            Next i
            tempOraRS.Fields(6).Value = Me.Detail(6).Text
            tempOraRS.Fields(7).Value = Me.cmbEnabled.ListIndex
            tempOraRS.Fields(8).Value = Me.Detail(8).Text
            tempOraRS.Fields(9).Value = Me.Detail(9).Text
            tempOraRS.Update
      End Select
      OraDatabase.CommitTrans
          
      oraRS.Refresh
      
      If intState = fsUpdate Then
         Me.MSFlexGrid.Row = rownum
         oraRS.MoveTo (rownum)
         Me.MSFlexGrid.Row = rownum
         Me.MSFlexGrid.RowSel = 1
         Me.MSFlexGrid.Col = 1
         Me.MSFlexGrid.ColSel = MSFlexGrid.Cols - 1
         Me.MSFlexGrid.SetFocus
         Me.MSFlexGrid.TopRow = rownum
      End If
      
      If intState = fsInsert Then
         Me.MSFlexGrid.Row = Me.MSFlexGrid.Rows - 1
      End If
      
      intState = fsBrowse
      SetDetail
      SetButton
      LightSelRow
            
      Exit Sub
errhandle:
      MsgBox Err.Description
      Resume Next
   End If
End Sub

Private Sub cmdDelete_Click()
On Error GoTo errhandle
   Me.MSFlexGrid.Col = 1
   If MsgBox("真的要删除帐号为：" & Me.MSFlexGrid.Text & "  的记录吗？", vbYesNo, "询问") = vbYes Then
      OraDatabase.ExecuteSQL ("delete from CUSER where CUSER='" & Me.MSFlexGrid.Text & "'")
      
      oraRS.Refresh
   End If
   If oraRS.RecordCount <> 0 Then
      intState = fsBrowse
   Else
      intState = fsNull
   End If
   SetDetail
   SetButton
   LightSelRow
   Exit Sub
errhandle:
   MsgBox Err.Description
   Resume Next
End Sub

Private Sub cmdQuit_Click()
   Unload Me
    
End Sub
 
Private Sub cmdUpdate_Click()
   intState = fsUpdate
   SetDetail
   SetButton
   LightSelRow
End Sub

Private Sub Form_Load()
On Error GoTo errhandle
    
   Dim strSQL As String
   strSQL = "Select CUSER as 用户帐号,PASSWD as 密码,CLEVEL as 用户级别,CNAME as 用户姓名,DESCRIPTION as 用户描述,CDATE as 创建日期,EDATE as 失效日期,ENABLED as 账户有效,LOCKED as 用户在线,COUNT as 账户信息 from CUSER order by CUSER"
   Set oraRS = OraDatabase.CreateDynaset(strSQL, 0&)
   
   Me.ORADC.Connect = c_strConnect
   Me.ORADC.DatabaseName = c_strDBName
   Set Me.ORADC.Recordset = oraRS
 
   
   If oraRS.RecordCount <> 0 Then
      oraRS.MoveFirst
      intState = fsBrowse
   Else
      intState = fsNull
   End If
   
   Me.MSFlexGrid.Cols = 11
   Me.MSFlexGrid.ColWidth(0) = 200
   Me.MSFlexGrid.ColWidth(1) = 1300
   Me.MSFlexGrid.ColWidth(2) = 1300
   Me.MSFlexGrid.ColWidth(4) = 1300
   Me.MSFlexGrid.ColWidth(5) = 1300
   Me.MSFlexGrid.ColWidth(6) = 1300
   Me.MSFlexGrid.ColWidth(8) = 500
   
   SetDetail
   SetButton
   
   LightSelRow
   
   Exit Sub
errhandle:
   MsgBox Err.Description
   Resume Next
   
End Sub

Private Sub MSFlexGrid_SelChange()
   oraRS.MoveTo Me.MSFlexGrid.Row
   SetDetail
   SetButton
    
End Sub
