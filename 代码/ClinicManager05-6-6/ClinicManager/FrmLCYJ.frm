VERSION 5.00
Object = "{92096210-97DF-11CF-9F27-02608C4BF3B5}#1.0#0"; "oradc.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form FrmLCYJ 
   Caption         =   "临床研究主表"
   ClientHeight    =   8745
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   ScaleHeight     =   8745
   ScaleWidth      =   11880
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdLCZL 
      Caption         =   "临床诊疗"
      Height          =   375
      Left            =   3840
      TabIndex        =   88
      Top             =   7320
      Width           =   1455
   End
   Begin VB.CommandButton cmdYFLF 
      Caption         =   "药方疗法"
      Height          =   375
      Left            =   6960
      TabIndex        =   87
      Top             =   7320
      Width           =   1455
   End
   Begin VB.CommandButton cmdBZZ 
      Caption         =   "病证症"
      Height          =   375
      Left            =   5400
      TabIndex        =   86
      Top             =   7320
      Width           =   1455
   End
   Begin VB.CommandButton cmdSYJC 
      Caption         =   "实验检查"
      Height          =   375
      Left            =   3840
      TabIndex        =   85
      Top             =   7800
      Width           =   1455
   End
   Begin VB.CommandButton cmdQTLF 
      Caption         =   "其他疗法"
      Height          =   375
      Left            =   8520
      TabIndex        =   84
      Top             =   7320
      Width           =   1455
   End
   Begin VB.CommandButton cmdZTLF 
      Caption         =   "针推疗法"
      Height          =   375
      Left            =   5400
      TabIndex        =   83
      Top             =   7800
      Width           =   1455
   End
   Begin VB.CommandButton cmdXYLF 
      Caption         =   "西药疗法"
      Height          =   375
      Left            =   6960
      TabIndex        =   82
      Top             =   7800
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Caption         =   "修改与该单条记录相关的其它粗表记录"
      Height          =   1335
      Left            =   3600
      TabIndex        =   81
      Top             =   7080
      Width           =   7215
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   1080
      TabIndex        =   77
      Top             =   7800
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Enabled         =   0   'False
      Height          =   375
      Left            =   -120
      TabIndex        =   76
      Top             =   7800
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "提交"
      Enabled         =   0   'False
      Height          =   375
      Left            =   2280
      TabIndex        =   75
      Top             =   7320
      Width           =   1095
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "修改"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1080
      TabIndex        =   74
      Top             =   7320
      Width           =   1095
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "删除"
      Enabled         =   0   'False
      Height          =   375
      Left            =   -120
      TabIndex        =   73
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Frame fraCondition 
      Caption         =   "查询条件"
      Height          =   1815
      Left            =   0
      TabIndex        =   40
      Top             =   0
      Width           =   11895
      Begin VB.TextBox txtBJZT 
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
         Left            =   1800
         TabIndex        =   94
         Top             =   1440
         Width           =   2295
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
         Height          =   285
         Left            =   1800
         TabIndex        =   93
         Top             =   1080
         Width           =   2295
      End
      Begin VB.TextBox txtYJFL 
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
         Left            =   7320
         TabIndex        =   92
         Top             =   1080
         Width           =   2295
      End
      Begin VB.CheckBox chkBJZT 
         Caption         =   "编辑状态"
         Height          =   255
         Left            =   240
         TabIndex        =   91
         Top             =   1440
         Width           =   1095
      End
      Begin VB.CheckBox chkYJFL 
         Caption         =   "研究分类"
         Height          =   255
         Left            =   6240
         TabIndex        =   90
         Top             =   1080
         Width           =   1095
      End
      Begin VB.CheckBox chkLCYJMC 
         Caption         =   "临床研究名称"
         Height          =   255
         Left            =   240
         TabIndex        =   89
         Top             =   1080
         Width           =   1455
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
         Left            =   7320
         TabIndex        =   78
         Top             =   645
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
         Left            =   3480
         TabIndex        =   48
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdQuery 
         Caption         =   "查询"
         Default         =   -1  'True
         Height          =   855
         Left            =   9960
         TabIndex        =   47
         Top             =   240
         Width           =   1455
      End
      Begin VB.CheckBox chkID 
         Caption         =   "ID"
         Height          =   255
         Left            =   240
         TabIndex        =   46
         Top             =   240
         Width           =   1095
      End
      Begin VB.CheckBox chkDate 
         Caption         =   "录入日期"
         Height          =   255
         Left            =   240
         TabIndex        =   45
         Top             =   675
         Width           =   1095
      End
      Begin VB.CheckBox chkState 
         Caption         =   "出处信息"
         Height          =   255
         Left            =   6240
         TabIndex        =   44
         Top             =   675
         Width           =   1095
      End
      Begin VB.CheckBox chkInputer 
         Caption         =   "录入人员"
         Height          =   255
         Left            =   6240
         TabIndex        =   43
         Top             =   240
         Width           =   1095
      End
      Begin VB.TextBox txtInputer 
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
         Left            =   7320
         TabIndex        =   42
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
         Left            =   1800
         TabIndex        =   41
         Top             =   240
         Width           =   975
      End
      Begin MSComCtl2.DTPicker datFrom 
         Height          =   285
         Left            =   1800
         TabIndex        =   49
         Top             =   645
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   503
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   23724032
         CurrentDate     =   37987
      End
      Begin MSComCtl2.DTPicker datTo 
         Height          =   285
         Left            =   4080
         TabIndex        =   50
         Top             =   645
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   503
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   23724032
         CurrentDate     =   37987
      End
      Begin VB.Label lblID 
         AutoSize        =   -1  'True
         Caption         =   "到"
         Height          =   195
         Left            =   3120
         TabIndex        =   52
         Top             =   270
         Width           =   180
      End
      Begin VB.Label lblDate 
         AutoSize        =   -1  'True
         Caption         =   "到"
         Height          =   195
         Left            =   3840
         TabIndex        =   51
         Top             =   720
         Width           =   180
      End
   End
   Begin VB.Frame frmrecord 
      Caption         =   "单条记录"
      Height          =   2895
      Left            =   0
      TabIndex        =   1
      Top             =   4080
      Width           =   11895
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   12
         Left            =   4320
         TabIndex        =   80
         Top             =   1485
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   25
         Left            =   9960
         TabIndex        =   72
         Top             =   525
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   26
         Left            =   9960
         TabIndex        =   71
         Top             =   855
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   27
         Left            =   9960
         TabIndex        =   70
         Top             =   1170
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   28
         Left            =   9960
         TabIndex        =   69
         Top             =   1485
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   29
         Left            =   9960
         TabIndex        =   68
         Top             =   1815
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   24
         Left            =   9960
         TabIndex        =   61
         Top             =   210
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   23
         Left            =   7200
         TabIndex        =   59
         Top             =   2445
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   14
         Left            =   4320
         TabIndex        =   58
         Top             =   2130
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   13
         Left            =   4320
         TabIndex        =   57
         Top             =   1815
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   11
         Left            =   4320
         TabIndex        =   56
         Top             =   1170
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   10
         Left            =   4320
         TabIndex        =   55
         Top             =   855
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   9
         Left            =   4320
         TabIndex        =   54
         Top             =   525
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   8
         Left            =   4320
         TabIndex        =   53
         Top             =   210
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ID"
         Height          =   285
         Index           =   0
         Left            =   1320
         TabIndex        =   17
         Top             =   210
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "FANGJI"
         Height          =   285
         Index           =   1
         Left            =   1320
         TabIndex        =   16
         Top             =   525
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DANWY"
         Height          =   285
         Index           =   2
         Left            =   1320
         TabIndex        =   15
         Top             =   855
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "HUAXCF"
         Height          =   285
         Index           =   3
         Left            =   1320
         TabIndex        =   14
         Top             =   1170
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIXING"
         Height          =   285
         Index           =   4
         Left            =   1320
         TabIndex        =   13
         Top             =   1485
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIBING"
         Height          =   285
         Index           =   5
         Left            =   1320
         TabIndex        =   12
         Top             =   1815
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENGHOU"
         Height          =   285
         Index           =   6
         Left            =   1320
         TabIndex        =   11
         Top             =   2130
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENGZHUANG"
         Height          =   285
         Index           =   7
         Left            =   1320
         TabIndex        =   10
         Top             =   2445
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "IDCHUCHU"
         Height          =   285
         Index           =   15
         Left            =   4320
         TabIndex        =   9
         Top             =   2445
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "WENTI"
         Height          =   285
         Index           =   16
         Left            =   7200
         TabIndex        =   8
         Top             =   210
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZUOZHE"
         Height          =   285
         Index           =   17
         Left            =   7200
         TabIndex        =   7
         Top             =   525
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZAZHI"
         Height          =   285
         Index           =   18
         Left            =   7200
         TabIndex        =   6
         Top             =   855
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LURRY"
         Height          =   285
         Index           =   19
         Left            =   7200
         TabIndex        =   5
         Top             =   1170
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LURRQ"
         Height          =   285
         Index           =   20
         Left            =   7200
         TabIndex        =   4
         Top             =   1480
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "ISCHECKED"
         Height          =   285
         Index           =   21
         Left            =   7200
         TabIndex        =   3
         Top             =   1815
         Width           =   1575
      End
      Begin VB.TextBox txtFields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "INVALIDITEM"
         Height          =   285
         Index           =   22
         Left            =   7200
         TabIndex        =   2
         Top             =   2130
         Width           =   1575
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_病因"
         Height          =   255
         Index           =   13
         Left            =   3000
         TabIndex        =   79
         Top             =   1545
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "编辑状态"
         Height          =   255
         Index           =   32
         Left            =   8880
         TabIndex        =   67
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "状态标志"
         Height          =   255
         Index           =   31
         Left            =   8880
         TabIndex        =   66
         Top             =   585
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "录入人员"
         Height          =   255
         Index           =   30
         Left            =   8880
         TabIndex        =   65
         Top             =   900
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "录入日期"
         Height          =   255
         Index           =   29
         Left            =   8880
         TabIndex        =   64
         Top             =   1230
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "错误信息"
         Height          =   255
         Index           =   28
         Left            =   8880
         TabIndex        =   63
         Top             =   1545
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "加工单位"
         Height          =   255
         Index           =   25
         Left            =   8880
         TabIndex        =   62
         Top             =   1875
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "图片状态"
         Height          =   255
         Index           =   24
         Left            =   6000
         TabIndex        =   60
         Top             =   2505
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "ID"
         Height          =   255
         Index           =   0
         Left            =   180
         TabIndex        =   39
         Top             =   270
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床研究名称"
         Height          =   255
         Index           =   1
         Left            =   180
         TabIndex        =   38
         Top             =   585
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "研究分类"
         Height          =   255
         Index           =   2
         Left            =   180
         TabIndex        =   37
         Top             =   915
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "病例采集时间"
         Height          =   255
         Index           =   3
         Left            =   180
         TabIndex        =   36
         Top             =   1230
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "观察组总例数"
         Height          =   255
         Index           =   4
         Left            =   180
         TabIndex        =   35
         Top             =   1545
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "女性观察例数"
         Height          =   255
         Index           =   5
         Left            =   180
         TabIndex        =   34
         Top             =   1875
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "男性观察例数"
         Height          =   255
         Index           =   6
         Left            =   180
         TabIndex        =   33
         Top             =   2190
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "年龄组"
         Height          =   255
         Index           =   7
         Left            =   180
         TabIndex        =   32
         Top             =   2505
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "研究方法"
         Height          =   255
         Index           =   8
         Left            =   3000
         TabIndex        =   31
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "研究分组"
         Height          =   255
         Index           =   9
         Left            =   3000
         TabIndex        =   30
         Top             =   585
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "结果"
         Height          =   255
         Index           =   10
         Left            =   3000
         TabIndex        =   29
         Top             =   900
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床研究单位"
         Height          =   255
         Index           =   11
         Left            =   3000
         TabIndex        =   28
         Top             =   1230
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_传染源"
         Height          =   255
         Index           =   14
         Left            =   3000
         TabIndex        =   27
         Top             =   1875
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_相关因素"
         Height          =   255
         Index           =   15
         Left            =   3000
         TabIndex        =   26
         Top             =   2505
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_地区"
         Height          =   255
         Index           =   16
         Left            =   6000
         TabIndex        =   25
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "对照组信息"
         Height          =   255
         Index           =   17
         Left            =   6000
         TabIndex        =   24
         Top             =   585
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "原文_ID"
         Height          =   255
         Index           =   18
         Left            =   6000
         TabIndex        =   23
         Top             =   900
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "期刊名称"
         Height          =   255
         Index           =   19
         Left            =   6000
         TabIndex        =   22
         Top             =   1230
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         Caption         =   "期数"
         Height          =   255
         Index           =   20
         Left            =   6000
         TabIndex        =   21
         Top             =   1545
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "出处信息"
         Height          =   255
         Index           =   21
         Left            =   6000
         TabIndex        =   20
         Top             =   1875
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "备注"
         Height          =   255
         Index           =   22
         Left            =   6000
         TabIndex        =   19
         Top             =   2190
         Width           =   855
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_传染途径"
         Height          =   255
         Index           =   23
         Left            =   3000
         TabIndex        =   18
         Top             =   2190
         Width           =   1215
      End
   End
   Begin MSFlexGridLib.MSFlexGrid grdTable 
      Bindings        =   "FrmLCYJ.frx":0000
      Height          =   2175
      Left            =   0
      TabIndex        =   0
      Top             =   1800
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   3836
      _Version        =   393216
      Enabled         =   0   'False
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin ORADCLibCtl.ORADC ORADC 
      Height          =   255
      Left            =   6480
      Top             =   4800
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
Attribute VB_Name = "FrmLCYJ"
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
   
   grdTable.ColWidth(0) = 200
   datFrom.Value = Date
   datTo.Value = Date
   a_strEdit(0) = "未编辑"
   a_strEdit(1) = "已编辑"
   ywidtemp = -1
   
End Sub
Private Sub cmdQuery_Click()
   On Error GoTo errhandle
   
   Dim strCondition As String
   
   strSQL = "select ID,LCYJMC,YJFL,BLCJSJ,GCZZLS,FGCLS,MGCLS,NLZ,YJFF,YJFZ,JG,LCYJDW,J_BY,J_CRY,J_CRTJ,J_XGYS,J_DQ,DZZXX,YW_ID,QKMC,QS,CCXX,BZ,TPZT,BJZT,ZTBZ,LRRY,LRRQ,CWXX,JGDW from C_LCYJ "
   
   If chkID.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " ID between " & txtFrom.Text & " and " & txtTo.Text
   End If
      
   If chkDate.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " LRRQ between TO_DATE('" & datFrom.Value & "','yyyy-mm-dd') and TO_DATE('" & datTo.Value & "','yyyy-mm-dd')"
   End If
   
   If chkInputer.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " LRRY like '%" & txtInputer.Text & "%'"
   End If
   
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
      
      strCondition = strCondition & " LCYJMC like '%" & txtLCYJMC.Text & "%'"
   End If
   
   If chkYJFL.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " YJFL like '%" & txtYJFL.Text & "%'"
   End If
   
   If chkBJZT.Value Then
   
      If strCondition <> "" Then
         strCondition = strCondition & " and "
      End If
      
      strCondition = strCondition & " BJZT like '%" & txtBJZT.Text & "%'"
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
   
   For intIndex = 0 To 29
      txtFields(intIndex).Text = recFields.Fields(intIndex).Value & ""
      txtFields(intIndex).ToolTipText = recFields.Fields(intIndex).Value & ""
   Next intIndex
   
   ywidtemp = recFields.Fields("YW_ID").Value
     
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
         cmdLCZL.Enabled = False
         cmdSYJC.Enabled = False
         cmdBZZ.Enabled = False
         cmdZTLF.Enabled = False
         cmdYFLF.Enabled = False
         cmdXYLF.Enabled = False
         cmdQTLF.Enabled = False
         
         
         For intIndex = 0 To 29
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
         cmdLCZL.Enabled = True
         cmdSYJC.Enabled = True
         cmdBZZ.Enabled = True
         cmdZTLF.Enabled = True
         cmdYFLF.Enabled = True
         cmdXYLF.Enabled = True
         cmdQTLF.Enabled = True
         
         For intIndex = 0 To 29
            txtFields(intIndex).Enabled = False
         Next intIndex
         
      Case fsUpdate
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = True
         cmdCancel.Enabled = True
         cmdQuit.Enabled = False
         grdTable.Enabled = False
         cmdLCZL.Enabled = False
         cmdSYJC.Enabled = False
         cmdBZZ.Enabled = False
         cmdZTLF.Enabled = False
         cmdYFLF.Enabled = False
         cmdXYLF.Enabled = False
         cmdQTLF.Enabled = False
         
         For intIndex = 0 To 29
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
      
      For intIndex = 0 To 29
         recFields.Fields(intIndex).Value = txtFields(intIndex).Text
      Next intIndex
                  
   recFields.Update
      
   intState = fsBrowse
   
   SetButton
      
   intTopRow = recFields.RowPosition
   ORADC.Refresh
   GoCurrent
   
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

Private Sub cmdLCYJ_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmLCYJ.Show vbModal
   

End Sub

Private Sub cmdLCZL_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmLCZL.Show vbModal

End Sub

Private Sub cmdSYJC_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmSYJC.Show vbModal

End Sub
Private Sub cmdBZZ_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmBZZ.Show vbModal

End Sub

Private Sub cmdZTLF_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmZTLF.Show vbModal

End Sub

Private Sub cmdYFLF_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmYFLF.Show vbModal

End Sub
Private Sub cmdXYLF_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmXYLF.Show vbModal

End Sub
Private Sub cmdQTLF_Click()
   If ywidtemp <> -1 Then
   flag = 1
   Else
   flag = 0
   End If
   FrmQTLF.Show vbModal

End Sub

