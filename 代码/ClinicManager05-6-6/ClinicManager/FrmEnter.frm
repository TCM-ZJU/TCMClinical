VERSION 5.00
Object = "{92096210-97DF-11CF-9F27-02608C4BF3B5}#1.0#0"; "oradc.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form FrmEnter 
   Caption         =   "数据导入"
   ClientHeight    =   6900
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7620
   LinkTopic       =   "Form1"
   ScaleHeight     =   6900
   ScaleWidth      =   7620
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   360
      TabIndex        =   23
      Top             =   6120
      Width           =   1335
   End
   Begin VB.CommandButton cmdImport 
      Caption         =   "导入"
      Enabled         =   0   'False
      Height          =   375
      Left            =   360
      TabIndex        =   13
      Top             =   5640
      Width           =   1335
   End
   Begin VB.Frame fraCondition 
      Caption         =   "约束条件"
      Height          =   3135
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7275
      Begin VB.TextBox txt_ZTBZ 
         Height          =   270
         Left            =   4320
         TabIndex        =   33
         Top             =   1800
         Width           =   2415
      End
      Begin VB.CheckBox Chk_ZTBZ 
         Caption         =   "状态标志"
         Height          =   255
         Left            =   3240
         TabIndex        =   32
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CheckBox Chk_drzt 
         Caption         =   "导入状态"
         Height          =   255
         Left            =   4560
         TabIndex        =   31
         Top             =   2280
         Width           =   1095
      End
      Begin VB.ComboBox DRZT_State 
         DataField       =   "1"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2052
            SubFormatType   =   0
         EndProperty
         DataMember      =   "2"
         Height          =   300
         ItemData        =   "FrmEnter.frx":0000
         Left            =   5640
         List            =   "FrmEnter.frx":000D
         TabIndex        =   30
         Text            =   "导入错误"
         Top             =   2280
         Width           =   1095
      End
      Begin VB.ComboBox YJFL_State 
         DataField       =   "1"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2052
            SubFormatType   =   0
         EndProperty
         DataMember      =   "2"
         Height          =   300
         ItemData        =   "FrmEnter.frx":002D
         Left            =   1320
         List            =   "FrmEnter.frx":003A
         TabIndex        =   28
         Text            =   "急门诊专题"
         Top             =   2280
         Width           =   1335
      End
      Begin VB.ComboBox Mod_State 
         DataMember      =   "2"
         Height          =   300
         ItemData        =   "FrmEnter.frx":005E
         Left            =   3480
         List            =   "FrmEnter.frx":0068
         TabIndex        =   27
         Text            =   "已初审"
         Top             =   2280
         Width           =   975
      End
      Begin VB.ComboBox Pic_State 
         DataField       =   "1"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2052
            SubFormatType   =   0
         EndProperty
         DataMember      =   "2"
         Height          =   300
         ItemData        =   "FrmEnter.frx":007C
         Left            =   1680
         List            =   "FrmEnter.frx":0086
         TabIndex        =   26
         Text            =   "有图片"
         Top             =   1800
         Width           =   1455
      End
      Begin VB.CheckBox Chk_pic 
         Caption         =   "图片状态"
         Height          =   255
         Left            =   480
         TabIndex        =   24
         Top             =   1800
         Width           =   1215
      End
      Begin VB.CommandButton cmdCalc 
         Caption         =   "统计"
         Height          =   375
         Left            =   360
         TabIndex        =   22
         Top             =   2760
         Width           =   1335
      End
      Begin VB.CheckBox chkID 
         Caption         =   "记录ID"
         Height          =   255
         Left            =   480
         TabIndex        =   8
         Top             =   360
         Width           =   1095
      End
      Begin VB.CheckBox chkDate 
         Caption         =   "录入日期"
         Height          =   255
         Left            =   480
         TabIndex        =   7
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox txtIDFrom 
         Height          =   270
         Left            =   1920
         TabIndex        =   6
         Top             =   360
         Width           =   2175
      End
      Begin VB.TextBox txtIDTo 
         Height          =   270
         Left            =   4560
         TabIndex        =   5
         Top             =   360
         Width           =   2175
      End
      Begin VB.TextBox txtInputer 
         Height          =   270
         Left            =   1920
         TabIndex        =   4
         Top             =   1080
         Width           =   4815
      End
      Begin VB.CheckBox chkState 
         Caption         =   "临床研究名称"
         Height          =   255
         Left            =   480
         TabIndex        =   3
         Top             =   1440
         Width           =   1455
      End
      Begin VB.CheckBox chkInputer 
         Caption         =   "录入人员"
         Height          =   255
         Left            =   480
         TabIndex        =   2
         Top             =   1065
         Width           =   1110
      End
      Begin VB.TextBox txtState 
         Height          =   270
         Left            =   1920
         TabIndex        =   1
         Top             =   1410
         Width           =   4815
      End
      Begin MSComCtl2.DTPicker datFrom 
         Height          =   255
         Left            =   1920
         TabIndex        =   9
         Top             =   720
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   450
         _Version        =   393216
         Format          =   158007296
         CurrentDate     =   38210
      End
      Begin MSComCtl2.DTPicker datTo 
         Height          =   255
         Left            =   4560
         TabIndex        =   10
         Top             =   720
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   450
         _Version        =   393216
         Format          =   158007296
         CurrentDate     =   38210
      End
      Begin VB.Label Label8 
         Caption         =   "研究分类"
         Height          =   375
         Left            =   480
         TabIndex        =   29
         Top             =   2280
         Width           =   1095
      End
      Begin VB.Label Label7 
         Caption         =   "编辑状态"
         Height          =   255
         Left            =   2760
         TabIndex        =   25
         Top             =   2280
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "到"
         Height          =   255
         Left            =   4200
         TabIndex        =   12
         Top             =   400
         Width           =   255
      End
      Begin VB.Label Label2 
         Caption         =   "到"
         Height          =   255
         Left            =   4200
         TabIndex        =   11
         Top             =   765
         Width           =   285
      End
   End
   Begin ORADCLibCtl.ORADC ORADC 
      Height          =   255
      Left            =   2040
      Top             =   3840
      Visible         =   0   'False
      Width           =   2655
      _Version        =   65536
      _ExtentX        =   4683
      _ExtentY        =   450
      _StockProps     =   207
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9.01
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DatabaseName    =   ""
      Connect         =   ""
      RecordSource    =   ""
   End
   Begin MSFlexGridLib.MSFlexGrid grdTable 
      Bindings        =   "FrmEnter.frx":009A
      Height          =   1935
      Left            =   120
      TabIndex        =   14
      Top             =   3240
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   3413
      _Version        =   393216
      Cols            =   7
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSComctlLib.ProgressBar pbImport 
      Height          =   345
      Left            =   1800
      TabIndex        =   15
      Top             =   5640
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   609
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Label lblSuccess 
      Alignment       =   2  'Center
      Caption         =   "0"
      Height          =   180
      Left            =   5280
      TabIndex        =   21
      Top             =   5280
      Width           =   465
   End
   Begin VB.Label Label6 
      Caption         =   "条"
      Height          =   180
      Left            =   5880
      TabIndex        =   20
      Top             =   5280
      Width           =   180
   End
   Begin VB.Label Label5 
      Caption         =   "成功导入"
      Height          =   180
      Left            =   4560
      TabIndex        =   19
      Top             =   5280
      Width           =   720
   End
   Begin VB.Label lblCount 
      Alignment       =   2  'Center
      Caption         =   "00000"
      Height          =   180
      Left            =   3720
      TabIndex        =   18
      Top             =   5280
      Width           =   465
   End
   Begin VB.Label Label4 
      Caption         =   "条"
      Height          =   180
      Left            =   4320
      TabIndex        =   17
      Top             =   5280
      Width           =   180
   End
   Begin VB.Label Label3 
      Caption         =   "符合条件的记录共有"
      Height          =   180
      Left            =   2040
      TabIndex        =   16
      Top             =   5280
      Width           =   1620
   End
End
Attribute VB_Name = "FrmEnter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const c_strSource As String = "C_LCYJ"
Const c_strPrimeField As String = "LCYJMC"

Dim strDisplay As String
Dim recDisplay As OraDynaset

Dim strSource As String
Dim recSource As OraDynaset

Dim strTarget As String
Dim recTarget As OraDynaset

Dim strRelation As String
Dim recRelation As OraDynaset

Dim strForeign As String
Dim recForeign As OraDynaset

Dim strprename As String

Private Sub cmdCalc_Click()
   On Error Resume Next
   
   Dim strCondition As String
   Dim strpic As String
   Dim strmod As String
   
   If chkID.Value Then
      strCondition = strCondition & " ID between " & txtIDFrom.Text & " and " & txtIDTo.Text
   End If
   
   If chkInputer.Value Then
      
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
   
      strCondition = strCondition & " LRRY "
      
      If txtInputer.Text <> "" Then
         strCondition = strCondition & " ='" & txtInputer.Text & "'"
      Else
         strCondition = strCondition & " IS NULL "
      End If
         
   End If
   
   If chkDate.Value Then
      
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
   
      strCondition = strCondition & " LRRQ between TO_DATE('" & datFrom.Value & "','yyyy-mm-dd') and TO_DATE('" & datTo.Value & "','yyyy-mm-dd')"
   End If
   
   If chkState.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " LCYJMC like '%" & txtState.Text & "%'"
   End If
   
    
      
      
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      strCondition = strCondition & " YJFL = '" & YJFL_State.Text & "'"
      
      If YJFL_State.Text = "急门诊专题" Then
      strprename = "JMZ_"
      Else:
          If YJFL_State.Text = "呼吸专题" Then
          strprename = "JMZ_"
          Else: strprename = "JMZ_"
          End If
      End If
   
   
         
   If Chk_pic.Value Then
      
      strpic = 1
      If Pic_State.Text = "无图片" Then
      strpic = 0
      End If
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      strCondition = strCondition & "TPZT =" & strpic
   
   End If
   
   If Chk_ZTBZ.Value Then
      
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
   
      strCondition = strCondition & " ZTBZ "
      
      If txt_ZTBZ.Text <> "" Then
         strCondition = strCondition & " like '%" & txt_ZTBZ.Text & "%'"
      Else
         strCondition = strCondition & " IS NULL "
      End If
         
   End If
   
   If Chk_drzt.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      If DRZT_State.Text = "未导入" Then
         strCondition = strCondition & " CWXX is null or CWXX ='' "
      Else
         strCondition = strCondition & " CWXX like '%" & DRZT_State.Text & "%' "
      End If
   End If
      
      strmod = 2
      If Mod_State.Text = "已加工" Then
      strmod = 1
      End If
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      strCondition = strCondition & " BJZT =" & strmod
        
   
   strSource = "select * from " & c_strSource
   strDisplay = "select ID," & c_strPrimeField & ",LRRY as 录入人员,LRRQ as 录入日期,ZTBZ as 出处信息,TPZT as 图片状态,BJZT as 编辑状态,CWXX as 错误信息 from " & c_strSource
      
   If strCondition <> "" Then
      strSource = strSource & " where " & strCondition
      strDisplay = strDisplay & " where " & strCondition
   End If
   
   strSource = strSource & " order by ID desc"
   strDisplay = strDisplay & " order by ID desc"
   
   Set recSource = OraDatabase.CreateDynaset(strSource, 0)
   Set recDisplay = OraDatabase.CreateDynaset(strDisplay, 0)
   Set ORADC.Recordset = recDisplay
   
   lblCount.Caption = recSource.RecordCount
   lblSuccess.Caption = 0
   pbImport.Value = 0
   
   If recSource.RecordCount > 0 Then
      pbImport.Max = recSource.RecordCount
      cmdImport.Enabled = True
   Else
      pbImport.Max = 1
      cmdImport.Enabled = False
   End If
   
End Sub


Private Sub cmdImport_Click()
   On Error GoTo errhandle

   Dim strID As String
   Dim strIDD As String
   Dim strname As String
   Dim jbID As String
   Dim zhID As String
   Dim zzID As String
   Dim isone As String
   Dim strDel As String
   Dim idDel As String
   Dim strtemp As String
   Dim strtmp As String
   Dim strtempe As String
   Dim numstart As Integer
   Dim numend As Integer
   Dim num As Integer
   Dim inf(0 To 4) As String
   Dim isover As Integer
   Dim Ywxx As String
   
   
   Dim a_strSplit As Variant
   Dim intIndex As Integer
   Dim strSuccess As String
   'cache foreign table
   Dim strCache As String
   Dim recCache As OraDynaset
   'dicede which table error message to writedown  by bloodman
   
   
   Dim strstep As String
   Dim recCollection As OraDynaset
   
   cmdImport.Enabled = False
   cmdCalc.Enabled = False
   cmdQuit.Enabled = False
   
   
   
   recSource.MoveFirst
   isone = 0
   While Not recSource.EOF
      OraDatabase.BeginTrans
      
      strSuccess = "覆盖原有记录"
      
     strtemp = strprename & "LCYJ"
      strTarget = "select * from " & strtemp & " where " & c_strPrimeField & "='" & recSource.Fields(c_strPrimeField).Value & "'"
      Set recTarget = OraDatabase.CreateDynaset(strTarget, 0)
           
      If recTarget.RecordCount = 0 Then 'new record
         'insert new record with id
         recTarget.AddNew
              recTarget.Fields("LCYJ_ID").Value = -1
         '     recTarget.Fields("YW_ID").Value = recSource.Fields("YW_ID").Value
         recTarget.Update
         isone = 1
         strSuccess = "插入新记录"
      End If
         
      strID = recTarget.Fields("LCYJ_ID").Value
   
      'update others fields
      recTarget.Edit
         
         For intIndex = 1 To recTarget.Fields.Count - 2
            recTarget.Fields(intIndex).Value = recSource.Fields(recTarget.Fields(intIndex).Name).Value
         Next
         If IsNull(recTarget.Fields("FGCLS").Value) Or recTarget.Fields("FGCLS").Value = 0 Then
            If Not IsNull(recTarget.Fields("MGCLS").Value) And recTarget.Fields("MGCLS").Value <> 0 Then
               recTarget.Fields("GCZXB").Value = "M"
            End If
         Else
            If IsNull(recTarget.Fields("MGCLS").Value) Or recTarget.Fields("MGCLS").Value = 0 Then
               recTarget.Fields("GCZXB").Value = "F"
            Else
               recTarget.Fields("GCZXB").Value = "A"
            End If
         End If
      recTarget.Update
      
      recTarget.MoveLast
      strIDD = recSource.Fields("YW_ID").Value
      
      
      
      
      
      
      'split foreign key
      
'//////////////////////////////////////////////////////////////
'临床研究图片
      
           
      strForeign = "select LCYJ_ID, LCYJMC from PIC_LCYJ where CHUCHU =" & recSource.Fields("ID").Value
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
      
      While Not recForeign.EOF
         recForeign.Edit
            recForeign.Fields("LCYJ_ID").Value = strID
            recForeign.Fields("LCYJMC").Value = recSource.Fields("LCYJMC").Value
         recForeign.Update
         recForeign.MoveNext
      Wend
      
'//////////////////////////////////////////////////////////////
'对照组
      If (IsNull(recSource.Fields("DZZXX").Value) <> True) Then
          strstep = strprename & "DZZ"
      
          If isone = 0 Then
             strDel = "delete from " & strstep & " where LCYJ_ID='" & strID & "'"
             OraDatabase.ExecuteSQL strDel
         
          End If
          
          strForeign = "select * from " & strstep & " where 1<>1"
            Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
            
          strtemp = recSource.Fields("DZZXX").Value
           isover = 0
           While (isover = 0)
           numend = InStr(strtemp, ")")
           numstart = InStr(strtemp, "(")
           numstart = numstart + 1
           num = numend - numstart
           
           strtmp = Mid$(strtemp, numstart, num)
           
           If (Len(strtemp) - numend > 0) Then
             strtemp = Right$(strtemp, Len(strtemp) - numend)
           Else
             isover = 1
           End If
                                     
               recForeign.AddNew
               recForeign.Fields("DZZ_ID").Value = -1
               recForeign.Fields("LCYJ_ID").Value = strID
            
                
               num = InStr(strtmp, ";")
               If num > 1 Then
                  recForeign.Fields(2).Value = Left$(strtmp, num - 1)
               End If
               strtmp = Right$(strtmp, Len(strtmp) - num)
                 
               num = InStr(strtmp, ";")
               If num > 1 Then
                  recForeign.Fields(4).Value = Left$(strtmp, num - 1)
               End If
               strtmp = Right$(strtmp, Len(strtmp) - num)
              
               num = InStr(strtmp, ";")
               If num > 1 Then
                  recForeign.Fields(3).Value = Left$(strtmp, num - 1)
               End If
               strtmp = Right$(strtmp, Len(strtmp) - num)
              
               num = InStr(strtmp, ";")
               If num > 1 Then
                  recForeign.Fields(5).Value = Left$(strtmp, num - 1)
               End If
               strtmp = Right$(strtmp, Len(strtmp) - num)
                        
               If (IsNull(strtmp) <> True) Then
               recForeign.Fields(6).Value = strtmp
               End If
            
            recForeign.Update
      
            
      
            recForeign.MoveLast
                          
            Wend
         
        
      End If

'//////////////////////////////////////////////////////////////
'临床诊疗
      
      
       
      strstep = "LCZL"
      
      If isone = 0 Then
         strDel = "delete from " & strprename & strstep & " where LCYJ_ID='" & strID & "'"
         OraDatabase.ExecuteSQL strDel
         
      End If
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "'"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
                  
         strForeign = "select * from " & strprename & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         
         
         recForeign.AddNew
            recForeign.Fields("LCZL_ID").Value = -1
            recForeign.Fields("LCYJ_ID").Value = strID
            
            For intIndex = 2 To recForeign.Fields.Count - 1
            recForeign.Fields(intIndex).Value = recCache.Fields(recForeign.Fields(intIndex).Name).Value
             Next
         
         recForeign.Update
      
      
      
         recForeign.MoveLast
                          
         recCache.MoveNext
         
      Wend
'//////////////////////////////////////////////////////////////
'实验检查
      
      
       
      strstep = "SYJC"
      
      If isone = 0 Then
         strDel = "delete from " & strprename & strstep & " where LCYJ_ID='" & strID & "'"
         OraDatabase.ExecuteSQL strDel
         
      End If
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "'"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
          strstep = strprename & "SYJC"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         
         
         recForeign.AddNew
            recForeign.Fields("SYJC_ID").Value = -1
            recForeign.Fields("LCYJ_ID").Value = strID
            
            For intIndex = 2 To recForeign.Fields.Count - 1
            recForeign.Fields(intIndex).Value = recCache.Fields(recForeign.Fields(intIndex).Name).Value
            Next
         
         recForeign.Update
      
      
      
         recForeign.MoveLast
                          
         recCache.MoveNext
         
      Wend

'/////////////////////////////////////////////////////////////
'病症证

      
      '删除冗余数据
      If isone = 0 Then
         strstep = strprename & "CXLCYJDX"
         
         strCache = "select * from " & strstep & " where LCYJ_ID ='" & strID & "'"
         Set recCache = OraDatabase.CreateDynaset(strCache, 0)
         
         While Not recCache.EOF
             idDel = recCache.Fields("CXDX_ID").Value
             
             strstep = strprename & "ZLGCDXGL"
             strDel = "delete from " & strstep & " where CXDX_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "JBZHGL"
             strDel = "delete from " & strstep & " where JB_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "JBZHGL"
             strDel = "delete from " & strstep & " where ZH_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "ZHZZGL"
             strDel = "delete from " & strstep & " where ZH_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "ZHZZGL"
             strDel = "delete from " & strstep & " where ZZ_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "JBZZGL"
             strDel = "delete from " & strstep & " where JB_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "JBZZGL"
             strDel = "delete from " & strstep & " where ZZ_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "JB"
             strDel = "delete from " & strstep & " where JB_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "ZH"
             strDel = "delete from " & strstep & " where ZH_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "LCZZ"
             strDel = "delete from " & strstep & " where ZZ_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             
             recCache.MoveNext
        Wend
        
         strstep = strprename & "CXLCYJDX"
         strDel = "delete from " & strstep & " where LCYJ_ID='" & strID & "'"
         OraDatabase.ExecuteSQL strDel
      
      End If
      
      
      
      strstep = "BZZ"
      strCache = "select * from C_" & strstep & " where YW_ID ='" & strIDD & "'"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      Dim oldMC As String
      Dim oldZH As String
      Dim oldZZ As String
      Dim strZZ As String
      Dim ZZMC As String
      Dim posnum As Integer
     ' Dim oldJBID As Integer
      
      oldMC = ""
      oldZH = ""
       ZZMC = ""
      strZZ = ""
      oldZZ = "$"
      
      While Not recCache.EOF
        
         
         '疾病
         If (IsNull(recCache.Fields("JBMC").Value) <> True And InStr(1, recCache.Fields("JBMC").Value, "$") = 0) Then
            strstep = strprename & "JB"
            strForeign = "select * from " & strstep & " where 1<>1 "
            Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         
            If oldMC <> recCache.Fields("JBMC").Value Then
            'insert new record with id
            
               oldMC = recCache.Fields("JBMC").Value
               strstep = strprename & "CXLCYJDX"
               strCollection = "select * from " & strstep & " where 1<>1"
               Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
                     
               recCollection.AddNew
                  recCollection.Fields("CXDX_ID").Value = -1
                  recCollection.Fields("LCYJ_ID").Value = strID
                  recCollection.Fields("BZZLX").Value = 1
                  recCollection.Fields("BZMC").Value = recCache.Fields("JBMC").Value
               recCollection.Update
         
               oldJBID = recCollection.Fields("CXDX_ID").Value
               recForeign.AddNew
                  recForeign.Fields("JB_ID").Value = recCollection.Fields("CXDX_ID").Value
                  recForeign.Fields("JBMC").Value = recCache.Fields("JBMC").Value
                  recForeign.Fields("YFB").Value = recCache.Fields("YFB").Value
                  recForeign.Fields("BFZ").Value = recCache.Fields("BFZ").Value
                  recForeign.Fields("ZH").Value = recCache.Fields("ZHMC").Value
                  recForeign.Fields("ZZ").Value = recCache.Fields("ZZMC").Value
               recForeign.Update
            
            Else
               strForeign = "select * from " & strstep & " where JB_ID = " & oldJBID
               Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
               
               recForeign.Edit
                  recForeign.Fields("ZH").Value = recForeign.Fields("ZH").Value & "$" & recCache.Fields("ZHMC").Value
                  recForeign.Fields("ZZ").Value = recForeign.Fields("ZZ").Value & "$" & recCache.Fields("ZZMC").Value
               recForeign.Update
            End If
            
            If Not IsNull(recForeign.Fields("JBMC").Value) Then
               strname = recForeign.Fields("JBMC").Value
               jbID = recForeign.Fields("JB_ID").Value
            Else
               jbID = -1
            End If
         Else
            jbID = -1
       
         End If
         
         '症候

         If (IsNull(recCache.Fields("ZHMC").Value) <> True And InStr(1, recCache.Fields("ZHMC").Value, "$") = 0) Then
         'insert new record with id
          If oldZH <> recCache.Fields("ZHMC").Value Then
            'insert new record with id
            
            oldZH = recCache.Fields("ZHMC").Value
         strstep = strprename & "CXLCYJDX"
         strCollection = "select * from " & strstep & " where 1<>1"
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         recCollection.AddNew
            recCollection.Fields("CXDX_ID").Value = -1
            recCollection.Fields("LCYJ_ID").Value = strID
            recCollection.Fields("BZZLX").Value = 2
            recCollection.Fields("BZMC").Value = recCache.Fields("ZHMC").Value
         recCollection.Update
         
         
         strstep = strprename & "ZH"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZH_ID").Value = recCollection.Fields("CXDX_ID").Value
            recForeign.Fields("ZHMC").Value = recCache.Fields("ZHMC").Value
           
         recForeign.Update
         
         zhID = recForeign.Fields("ZH_ID").Value
         
         If jbID <> -1 Then
         strstep = strprename & "JBZHGL"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZH_ID").Value = zhID
            recForeign.Fields("JB_ID").Value = jbID
         recForeign.Update
         End If
         Else
          zhID = -1
         End If
        Else
         zhID = -1
        End If
       
       
       '症状
       
         If (IsNull(recCache.Fields("ZZMC").Value) <> True) Then
         'insert new record with id
         strZZ = recCache.Fields("ZZMC").Value
         While (Len(strZZ) And Len(strZZ) <> 0)
            posnum = InStr(1, strZZ, "$")
            If posnum <> 0 Then
               ZZMC = Left(strZZ, posnum - 1)
               strZZ = Right(strZZ, Len(strZZ) - posnum)
            Else
               ZZMC = strZZ
               strZZ = ""
            '   c = Right(ZZMC, 1)
            '   If c = ")" Or c = "）" Then
            '      ZZMC = Left(ZZMC, Len(ZZMC) - 1)
            '   End If
            End If
            
            
            If Len(ZZMC) <> 0 And InStr(1, oldZZ, "$" + ZZMC + "$") = 0 Then
            'insert new record with id
            
               strstep = strprename & "CXLCYJDX"
               strCollection = "select * from " & strstep & " where 1<>1"
               Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
               recCollection.AddNew
               recCollection.Fields("CXDX_ID").Value = -1
               recCollection.Fields("LCYJ_ID").Value = strID
               recCollection.Fields("BZZLX").Value = 3
               recCollection.Fields("BZMC").Value = ZZMC
               recCollection.Update
         
         
               strstep = strprename & "LCZZ"
               strForeign = "select * from " & strstep & " where 1<>1"
               Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
               recForeign.AddNew
               recForeign.Fields("ZZ_ID").Value = recCollection.Fields("CXDX_ID").Value
               recForeign.Fields("ZZMC").Value = ZZMC
           
               recForeign.Update
         
               zzID = recForeign.Fields("ZZ_ID").Value
            If jbID <> -1 Then
               strstep = strprename & "JBZZGL"
               strForeign = "select * from " & strstep & " where 1<>1"
               Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
               recForeign.AddNew
                  recForeign.Fields("ZZ_ID").Value = zzID
                  recForeign.Fields("JB_ID").Value = jbID
               recForeign.Update
            End If
        
            If (IsNull(recCache.Fields("ZHMC").Value) <> True) And zhID <> -1 Then
                strstep = strprename & "ZHZZGL"
                strForeign = "select * from " & strstep & " where 1<>1"
                Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
                 recForeign.AddNew
                   recForeign.Fields("ZZ_ID").Value = zzID
                   recForeign.Fields("ZH_ID").Value = zhID
                 recForeign.Update
            End If
            oldZZ = oldZZ + ZZMC + "$"
            End If
         Wend
        
        End If
       
        
       
         recCache.MoveNext
         
        
      Wend
      

'//////////////////////////////////////////////////////////////
'删除冗余数据
      If isone = 0 Then
         strstep = strprename & "JTZLGC"
         
         strCache = "select * from " & strstep & " where LCYJ_ID ='" & strID & "'"
         Set recCache = OraDatabase.CreateDynaset(strCache, 0)
         
         While Not recCache.EOF
             idDel = recCache.Fields("JTZLGC_ID").Value
                                       
              strstep = strprename & "XW"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
              strstep = strprename & "YW"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "YWCF"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "ZJLF"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "AMLF"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "YFLF"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "XYLF"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             strstep = strprename & "QTLF"
             strDel = "delete from " & strstep & " where ZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
                      
             strstep = strprename & "JTZLGC"
             strDel = "delete from " & strstep & " where JTZLGC_ID='" & idDel & "'"
             OraDatabase.ExecuteSQL strDel
             
             recCache.MoveNext
        Wend
      
      End If

'//////////////////////////////////////////////////////////////
'针灸疗法
      strstep = "ZTLF"
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "' and LB=0"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
         
         strstep = strprename & "JTZLGC"
         strCollection = "select * from " & strstep & " where 1<>1"
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         recCollection.AddNew
            recCollection.Fields("JTZLGC_ID").Value = -1
            recCollection.Fields("LCYJ_ID").Value = strID
            recCollection.Fields("ZLLX").Value = 2
            recCollection.Fields("LCBZXH").Value = recCache.Fields("ZLBZ").Value
         recCollection.Update
         
         jbID = recCollection.Fields("JTZLGC_ID").Value
         
         strstep = strprename & "CXLCYJDX"
         strCollection = "select * from " & strstep & " where BZMC='" & recCache.Fields("BZMC").Value & "' and LCYJ_ID=" & strID
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         While Not recCollection.EOF
         
             strstep = strprename & "ZLGCDXGL"
             strForeign = "select * from " & strstep & " where 1<>1"
             Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
             recForeign.AddNew
                recForeign.Fields("JTZLGC_ID").Value = jbID
                recForeign.Fields("CXDX_ID").Value = recCollection.Fields("CXDX_ID").Value
             recForeign.Update
            
            recCollection.MoveNext
         Wend
         
         
         strstep = strprename & "ZJLF"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZLGC_ID").Value = jbID
            recForeign.Fields("ZJFF").Value = recCache.Fields("FF").Value
            recForeign.Fields("ZJQX").Value = recCache.Fields("QXSJ").Value
            recForeign.Fields("ZCSF").Value = recCache.Fields("SF").Value
            recForeign.Fields("ZCCS").Value = recCache.Fields("CS").Value
            recForeign.Fields("JL").Value = recCache.Fields("JL").Value
            recForeign.Fields("ZZ").Value = recCache.Fields("ZZ").Value
         recForeign.Update
      
      
      
         recForeign.MoveLast
         
         
      '//////////////////////////////////////////////////////////////
      '穴位
      If (IsNull(recCache.Fields("XWXX").Value) <> True) Then
          strstep = strprename & "XW"
          strtemp = recCache.Fields("XWXX").Value
                    
          strForeign = "select * from " & strstep & " where 1<>1"
            Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
            
           isover = 0
           While (isover = 0)
           numend = InStr(strtemp, ")")
           numstart = InStr(strtemp, "(")
           numstart = numstart + 1
           num = numend - numstart
           
           strtmp = Mid$(strtemp, numstart, num)
           
           If (Len(strtemp) - numend > 0) Then
             strtemp = Right$(strtemp, Len(strtemp) - numend)
           Else
             isover = 1
           End If
           recForeign.AddNew
               recForeign.Fields("XW_ID").Value = -1
               recForeign.Fields("ZLGC_ID").Value = jbID
            
               For intIndex = 2 To 2
                 num = InStr(strtmp, ";")
                 If num > 1 Then
                    recForeign.Fields(intIndex).Value = Left$(strtmp, num - 1)
                 End If
                 strtmp = Right$(strtmp, Len(strtmp) - num)
                 
               Next
                 If (IsNull(strtmp) <> True) Then
                 recForeign.Fields(3).Value = strtmp
                 End If
            
            recForeign.Update
      
            
      
            recForeign.MoveLast
                          
            Wend
         
        
      End If
                          
         recCache.MoveNext
         
      Wend
      
 '//////////////////////////////////////////////////////////////
'推拿疗法
      
      
       
      strstep = "ZTLF"
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "' and LB=1"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
         
         strstep = strprename & "JTZLGC"
         strCollection = "select * from " & strstep & " where 1<>1"
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         recCollection.AddNew
            recCollection.Fields("JTZLGC_ID").Value = -1
            recCollection.Fields("LCYJ_ID").Value = strID
            recCollection.Fields("ZLLX").Value = 3
            recCollection.Fields("LCBZXH").Value = recCache.Fields("ZLBZ").Value
         recCollection.Update
         
         jbID = recCollection.Fields("JTZLGC_ID").Value
         
         strstep = strprename & "CXLCYJDX"
         strCollection = "select * from " & strstep & " where BZMC='" & recCache.Fields("BZMC").Value & "' and LCYJ_ID=" & strID
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         While Not recCollection.EOF
         
             strstep = strprename & "ZLGCDXGL"
             strForeign = "select * from " & strstep & " where 1<>1"
             Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
             recForeign.AddNew
                recForeign.Fields("JTZLGC_ID").Value = jbID
                recForeign.Fields("CXDX_ID").Value = recCollection.Fields("CXDX_ID").Value
             recForeign.Update
            
            recCollection.MoveNext
         Wend
         
         
         strstep = strprename & "AMLF"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZLGC_ID").Value = jbID
            recForeign.Fields("AMFF").Value = recCache.Fields("FF").Value
            recForeign.Fields("AMSF").Value = recCache.Fields("QXSJ").Value
            recForeign.Fields("AMSJ").Value = recCache.Fields("SF").Value
            recForeign.Fields("AMCS").Value = recCache.Fields("CS").Value
            recForeign.Fields("JL").Value = recCache.Fields("JL").Value
            recForeign.Fields("ZZ").Value = recCache.Fields("ZZ").Value
         recForeign.Update
      
      
      
         recForeign.MoveLast
         
         '//////////////////////////////////////////////////////////////
      '穴位
      If (IsNull(recCache.Fields("XWXX").Value) <> True) Then
          strstep = strprename & "XW"
          strtemp = recCache.Fields("XWXX").Value
                    
          strForeign = "select * from " & strstep & " where 1<>1"
            Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
            
           isover = 0
           While (isover = 0)
           numend = InStr(strtemp, ")")
           numstart = InStr(strtemp, "(")
           numstart = numstart + 1
           num = numend - numstart
           
           strtmp = Mid$(strtemp, numstart, num)
           
           If (Len(strtemp) - numend > 0) Then
             strtemp = Right$(strtemp, Len(strtemp) - numend)
           Else
             isover = 1
           End If
           recForeign.AddNew
               recForeign.Fields("XW_ID").Value = -1
               recForeign.Fields("ZLGC_ID").Value = jbID
            
               For intIndex = 2 To 2
                 num = InStr(strtmp, ";")
                 If num > 1 Then
                    recForeign.Fields(intIndex).Value = Left$(strtmp, num - 1)
                 End If
                 strtmp = Right$(strtmp, Len(strtmp) - num)
                 
               Next
                 If (IsNull(strtmp) <> True) Then
                 recForeign.Fields(3).Value = strtmp
                 End If
            
            recForeign.Update
      
            
      
            recForeign.MoveLast
                          
            Wend
         
        
      End If
      
                          
         recCache.MoveNext
         
      Wend



 '//////////////////////////////////////////////////////////////
'药方疗法
      
      
       
      strstep = "YFLF"
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "'"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
         
         strstep = strprename & "JTZLGC"
         strCollection = "select * from " & strstep & " where 1<>1"
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         recCollection.AddNew
            recCollection.Fields("JTZLGC_ID").Value = -1
            recCollection.Fields("LCYJ_ID").Value = strID
            recCollection.Fields("ZLLX").Value = 1
            recCollection.Fields("LCBZXH").Value = recCache.Fields("ZLBZ").Value
         recCollection.Update

         jbID = recCollection.Fields("JTZLGC_ID").Value
         
         strstep = strprename & "CXLCYJDX"
         strCollection = "select * from " & strstep & " where BZMC='" & recCache.Fields("BZMC").Value & "' and LCYJ_ID=" & strID
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         While Not recCollection.EOF
         
             strstep = strprename & "ZLGCDXGL"
             strForeign = "select * from " & strstep & " where 1<>1"
             Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
             recForeign.AddNew
                recForeign.Fields("JTZLGC_ID").Value = jbID
                recForeign.Fields("CXDX_ID").Value = recCollection.Fields("CXDX_ID").Value
             recForeign.Update
            
            recCollection.MoveNext
         Wend
         
         
         strstep = strprename & "YFLF"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZLGC_ID").Value = jbID
            recForeign.Fields("GYFS").Value = recCache.Fields("GYFS").Value
            recForeign.Fields("YFMC").Value = recCache.Fields("YFMC").Value
            recForeign.Fields("YFJX").Value = recCache.Fields("YFJX").Value
            recForeign.Fields("ZZ").Value = recCache.Fields("ZZ").Value
         recForeign.Update
         
            
         recForeign.MoveLast
      '//////////////////////////////////////////////////////////////
      '药物
      If (IsNull(recCache.Fields("YWXX").Value) <> True) Then
          strstep = strprename & "YW"
          strtemp = recCache.Fields("YWXX").Value
                    
          strForeign = "select * from " & strstep & " where 1<>1"
            Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
            
           isover = 0
           While (isover = 0)
           numend = InStr(strtemp, ")")
           numstart = InStr(strtemp, "(")
           numstart = numstart + 1
           num = numend - numstart
           
           strtmp = Mid$(strtemp, numstart, num)
           
           If (Len(strtemp) - numend > 0) Then
             strtemp = Right$(strtemp, Len(strtemp) - numend)
           Else
             isover = 1
           End If
           recForeign.AddNew
               recForeign.Fields("YW_ID").Value = -1
               recForeign.Fields("ZLGC_ID").Value = jbID
            
               For intIndex = 2 To 4
                 num = InStr(strtmp, ";")
                 If num > 1 Then
                    recForeign.Fields(intIndex).Value = Left$(strtmp, num - 1)
                 End If
                 strtmp = Right$(strtmp, Len(strtmp) - num)
                 
               Next
                 If (IsNull(strtmp) <> True) Then
                 recForeign.Fields(4).Value = strtmp
                 End If
            
            recForeign.Update
      
            
      
            recForeign.MoveLast
                          
            Wend
         
        
      End If
                        
         recCache.MoveNext
         
      Wend

 '//////////////////////////////////////////////////////////////
'西药疗法
      
      
       
      strstep = "XYLF"
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "'"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
         
         strstep = strprename & "JTZLGC"
         strCollection = "select * from " & strstep & " where 1<>1"
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         recCollection.AddNew
            recCollection.Fields("JTZLGC_ID").Value = -1
            recCollection.Fields("LCYJ_ID").Value = strID
            recCollection.Fields("ZLLX").Value = 4
            recCollection.Fields("LCBZXH").Value = recCache.Fields("ZLBZ").Value
         recCollection.Update
         
         jbID = recCollection.Fields("JTZLGC_ID").Value
         
         strstep = strprename & "CXLCYJDX"
         strCollection = "select * from " & strstep & " where BZMC='" & recCache.Fields("BZMC").Value & "' and LCYJ_ID=" & strID
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         While Not recCollection.EOF
         
             strstep = strprename & "ZLGCDXGL"
             strForeign = "select * from " & strstep & " where 1<>1"
             Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
             recForeign.AddNew
                recForeign.Fields("JTZLGC_ID").Value = jbID
                recForeign.Fields("CXDX_ID").Value = recCollection.Fields("CXDX_ID").Value
             recForeign.Update
            
            recCollection.MoveNext
         Wend
         
         
         strstep = strprename & "XYLF"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZLGC_ID").Value = jbID
            recForeign.Fields("GYFS").Value = recCache.Fields("GYFS").Value
            recForeign.Fields("YWMC").Value = recCache.Fields("YWMC").Value
            recForeign.Fields("YWJX").Value = recCache.Fields("YWJX").Value
            recForeign.Fields("GYSJ").Value = recCache.Fields("GYSJ").Value
            recForeign.Fields("ZLYZ").Value = recCache.Fields("ZLYZ").Value
         recForeign.Update
      
            
         recForeign.MoveLast
         
         
          '//////////////////////////////////////////////////////////////
         '药物成分
         If (IsNull(recCache.Fields("YWCFXX").Value) <> True) Then
          strstep = strprename & "YWCF"
      
                  
          strForeign = "select * from " & strstep & " where 1<>1"
            Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
            
          strtemp = recCache.Fields("YWCFXX").Value
           isover = 0
           While (isover = 0)
           numend = InStr(strtemp, ")")
           numstart = InStr(strtemp, "(")
           numstart = numstart + 1
           num = numend - numstart
           
           strtmp = Mid$(strtemp, numstart, num)
           
           If (Len(strtemp) - numend > 0) Then
             strtemp = Right$(strtemp, Len(strtemp) - numend)
           Else
             isover = 1
           End If
           recForeign.AddNew
               recForeign.Fields("YWCF_ID").Value = -1
               recForeign.Fields("ZLGC_ID").Value = jbID
            
               For intIndex = 2 To 3
                 num = InStr(strtmp, ";")
                 If num > 1 Then
                    recForeign.Fields(intIndex).Value = Left$(strtmp, num - 1)
                 End If
                 strtmp = Right$(strtmp, Len(strtmp) - num)
                 
               Next
                 If (IsNull(strtmp) <> True) Then
                 recForeign.Fields(4).Value = strtmp
                 End If
            
            recForeign.Update
      
            
      
            recForeign.MoveLast
                          
            Wend
         
        
      End If
                          
         recCache.MoveNext
         
      Wend

      
      
      
'//////////////////////////////////////////////////////////////
'其它疗法
      
      
       
      strstep = "QTLF"
      
      strCache = "select * from C_" & strstep & " where YW_ID='" & strIDD & "'"
      Set recCache = OraDatabase.CreateDynaset(strCache, 0)
      
      While Not recCache.EOF
         
         strstep = strprename & "JTZLGC"
         strCollection = "select * from " & strstep & " where 1<>1"
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         recCollection.AddNew
            recCollection.Fields("JTZLGC_ID").Value = -1
            recCollection.Fields("LCYJ_ID").Value = strID
            recCollection.Fields("ZLLX").Value = 5
            recCollection.Fields("LCBZXH").Value = recCache.Fields("ZLBZ").Value
         recCollection.Update
         
         jbID = recCollection.Fields("JTZLGC_ID").Value
         
         strstep = strprename & "CXLCYJDX"
         strCollection = "select * from " & strstep & " where BZMC='" & recCache.Fields("BZMC").Value & "' and LCYJ_ID=" & strID
         Set recCollection = OraDatabase.CreateDynaset(strCollection, 0)
         While Not recCollection.EOF
         
             strstep = strprename & "ZLGCDXGL"
             strForeign = "select * from " & strstep & " where 1<>1"
             Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
             recForeign.AddNew
                recForeign.Fields("JTZLGC_ID").Value = jbID
                recForeign.Fields("CXDX_ID").Value = recCollection.Fields("CXDX_ID").Value
             recForeign.Update
            
            recCollection.MoveNext
         Wend
         
         
         strstep = strprename & "QTLF"
         strForeign = "select * from " & strstep & " where 1<>1"
         Set recForeign = OraDatabase.CreateDynaset(strForeign, 0)
         recForeign.AddNew
            recForeign.Fields("ZLGC_ID").Value = jbID
            recForeign.Fields("FFMC").Value = recCache.Fields("FFMC").Value
            recForeign.Fields("FFMS").Value = recCache.Fields("FFMS").Value
            recForeign.Fields("ZZ").Value = recCache.Fields("ZZ").Value
         recForeign.Update
      
            
         recForeign.MoveLast
                          
         recCache.MoveNext
         
      Wend
      'split over
'//////////////////////////////////////////////////////////////
      OraDatabase.CommitTrans
      
      lblSuccess.Caption = lblSuccess.Caption + 1
      SaveMessage recSource, "导入成功：" & strSuccess

ProcessNext:
      pbImport.Value = pbImport.Value + 1
      App.LogEvent Now & " " & recSource.Fields("ID").Value & ":" & recSource.Fields("CWXX").Value
      DoEvents
      recSource.MoveNext
   Wend
   
   recDisplay.Refresh
   cmdCalc.Enabled = True
   cmdQuit.Enabled = True

   Exit Sub

errhandle:
   'save error message
   OraDatabase.Rollback
   
       SaveMessage recSource, "导入错误：" & Err.Description
  
   Resume ProcessNext:

End Sub


Private Sub cmdQuit_Click()
   

   Unload Me

End Sub

