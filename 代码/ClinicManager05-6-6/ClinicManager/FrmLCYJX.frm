VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form FrmLCYJX 
   Caption         =   "临床研究主表细表"
   ClientHeight    =   6510
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9600
   LinkTopic       =   "Form2"
   ScaleHeight     =   6510
   ScaleWidth      =   9600
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdFirst 
      Caption         =   "首条"
      Height          =   375
      Left            =   0
      TabIndex        =   11
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdPrev 
      Caption         =   "向前"
      Height          =   375
      Left            =   960
      TabIndex        =   10
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "向后"
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdLast 
      Caption         =   "末条"
      Height          =   375
      Left            =   2880
      TabIndex        =   8
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "修改"
      Height          =   375
      Left            =   3840
      TabIndex        =   7
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "删除"
      Height          =   375
      Left            =   4800
      TabIndex        =   6
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "确认"
      Height          =   375
      Left            =   5760
      TabIndex        =   5
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Height          =   375
      Left            =   6720
      TabIndex        =   4
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "退出"
      Height          =   375
      Left            =   7680
      TabIndex        =   3
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton cmdQuery 
      Caption         =   "查询"
      Default         =   -1  'True
      Height          =   375
      Left            =   0
      TabIndex        =   2
      Top             =   5160
      Width           =   975
   End
   Begin VB.TextBox txtCondition 
      Height          =   390
      Left            =   1440
      TabIndex        =   1
      Top             =   5160
      Width           =   7215
   End
   Begin VB.CommandButton cmdSQL 
      Caption         =   "..."
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   5160
      Width           =   495
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4815
      Left            =   0
      TabIndex        =   12
      Top             =   0
      Width           =   9405
      _ExtentX        =   16589
      _ExtentY        =   8493
      _Version        =   393216
      TabOrientation  =   1
      Tabs            =   2
      Tab             =   1
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "临床研究主表"
      TabPicture(0)   =   "FrmLCYJX.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "lblLabels(61)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lblLabels(62)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lblLabels(63)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lblLabels(64)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "lblLabels(65)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "lblLabels(66)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "lblLabels(71)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "lblLabels(72)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "lblLabels(73)"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "lblLabels(74)"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "lblLabels(75)"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "lblLabels(76)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "lblLabels(77)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "lblLabels(78)"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "lblLabels(79)"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "lblLabels(80)"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "lblLabels(81)"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "txtFields(13)"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "txtFields(14)"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "txtFields(15)"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "txtFields(16)"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "txtFields(17)"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "txtFields(18)"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "txtFields(2)"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "txtFields(3)"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "txtFields(4)"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).Control(26)=   "txtFields(5)"
      Tab(0).Control(26).Enabled=   0   'False
      Tab(0).Control(27)=   "txtFields(6)"
      Tab(0).Control(27).Enabled=   0   'False
      Tab(0).Control(28)=   "txtFields(7)"
      Tab(0).Control(28).Enabled=   0   'False
      Tab(0).Control(29)=   "txtFields(8)"
      Tab(0).Control(29).Enabled=   0   'False
      Tab(0).Control(30)=   "txtFields(9)"
      Tab(0).Control(30).Enabled=   0   'False
      Tab(0).Control(31)=   "txtFields(10)"
      Tab(0).Control(31).Enabled=   0   'False
      Tab(0).Control(32)=   "txtFields(11)"
      Tab(0).Control(32).Enabled=   0   'False
      Tab(0).Control(33)=   "txtFields(12)"
      Tab(0).Control(33).Enabled=   0   'False
      Tab(0).ControlCount=   34
      TabCaption(1)   =   "修改其他相关表"
      TabPicture(1)   =   "FrmLCYJX.frx":001C
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame2"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame1"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Frame3"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).ControlCount=   3
      Begin VB.Frame Frame3 
         Caption         =   "其他"
         Height          =   3135
         Left            =   6720
         TabIndex        =   105
         Top             =   240
         Width           =   2415
         Begin VB.CommandButton cmdDZZ 
            Caption         =   "对照组"
            Height          =   375
            Left            =   480
            TabIndex        =   108
            Top             =   1560
            Width           =   1455
         End
         Begin VB.CommandButton cmdSYJC 
            Caption         =   "实验检查"
            Height          =   375
            Left            =   480
            TabIndex        =   107
            Top             =   960
            Width           =   1455
         End
         Begin VB.CommandButton cmdLCZL 
            Caption         =   "临床诊疗"
            Height          =   375
            Left            =   480
            TabIndex        =   106
            Top             =   360
            Width           =   1455
         End
      End
      Begin VB.TextBox txtFields 
         DataField       =   "XINGB"
         Height          =   285
         Index           =   12
         Left            =   -73200
         TabIndex        =   65
         Top             =   3435
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "NIANLZ"
         Height          =   285
         Index           =   11
         Left            =   -73200
         TabIndex        =   64
         Top             =   3120
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DUIZZ"
         Height          =   285
         Index           =   10
         Left            =   -73200
         TabIndex        =   63
         Top             =   2805
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "PAICBLBZ"
         Height          =   285
         Index           =   9
         Left            =   -73200
         TabIndex        =   62
         Top             =   2475
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "GEDWCJLS"
         Height          =   285
         Index           =   8
         Left            =   -73200
         TabIndex        =   61
         Top             =   2160
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZONGLS"
         Height          =   285
         Index           =   7
         Left            =   -73200
         TabIndex        =   60
         Top             =   1845
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "BINGLCJSJ"
         Height          =   285
         Index           =   6
         Left            =   -73200
         TabIndex        =   59
         Top             =   1515
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "NARBLBZ"
         Height          =   285
         Index           =   5
         Left            =   -73200
         TabIndex        =   58
         Top             =   1200
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SHIYBLXZBZ"
         Height          =   285
         Index           =   4
         Left            =   -73200
         TabIndex        =   57
         Top             =   885
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SHIYSJ"
         Height          =   285
         Index           =   3
         Left            =   -73200
         TabIndex        =   56
         Top             =   555
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LINCYJMC"
         Height          =   285
         Index           =   2
         Left            =   -73200
         TabIndex        =   55
         Top             =   240
         Width           =   2775
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHONGYZDYQ"
         Height          =   285
         Index           =   18
         Left            =   -68880
         TabIndex        =   54
         Top             =   1845
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "BIANZFX"
         Height          =   285
         Index           =   17
         Left            =   -68880
         TabIndex        =   53
         Top             =   1515
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHONGYZDBZ"
         Height          =   285
         Index           =   16
         Left            =   -68880
         TabIndex        =   52
         Top             =   1200
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHENDBZ"
         Height          =   285
         Index           =   15
         Left            =   -68880
         TabIndex        =   51
         Top             =   885
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SHIYFZ"
         Height          =   285
         Index           =   14
         Left            =   -68880
         TabIndex        =   50
         Top             =   555
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SHIYFF"
         Height          =   285
         Index           =   13
         Left            =   -68880
         TabIndex        =   49
         Top             =   240
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LIAOCCS"
         Height          =   285
         Index           =   60
         Left            =   -73200
         TabIndex        =   48
         Top             =   2760
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LIAOCSJ"
         Height          =   285
         Index           =   59
         Left            =   -73200
         TabIndex        =   47
         Top             =   2445
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SUIF"
         Height          =   285
         Index           =   58
         Left            =   -73200
         TabIndex        =   46
         Top             =   2115
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "WUX"
         Height          =   285
         Index           =   57
         Left            =   -73200
         TabIndex        =   45
         Top             =   1800
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ZHONGYX"
         Height          =   285
         Index           =   56
         Left            =   -73200
         TabIndex        =   44
         Top             =   1485
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIBHJ"
         Height          =   285
         Index           =   55
         Left            =   -73200
         TabIndex        =   43
         Top             =   1155
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "WANQHJ"
         Height          =   285
         Index           =   54
         Left            =   -73200
         TabIndex        =   42
         Top             =   840
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "YOUXHHZ"
         Height          =   285
         Index           =   53
         Left            =   -73200
         TabIndex        =   41
         Top             =   525
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "XIANX"
         Height          =   285
         Index           =   52
         Left            =   -73200
         TabIndex        =   40
         Top             =   195
         Width           =   2655
      End
      Begin VB.TextBox txtFields 
         DataField       =   "RIQ"
         Enabled         =   0   'False
         Height          =   285
         Index           =   51
         Left            =   -68760
         TabIndex        =   39
         Top             =   2760
         Width           =   2175
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SHUJLY"
         Height          =   285
         Index           =   50
         Left            =   -68760
         TabIndex        =   38
         Top             =   2445
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LINCSYZ"
         Height          =   285
         Index           =   49
         Left            =   -68760
         TabIndex        =   37
         Top             =   2115
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "LINCSYDW"
         Height          =   285
         Index           =   48
         Left            =   -68760
         TabIndex        =   36
         Top             =   1800
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "DIANXBL"
         Height          =   285
         Index           =   47
         Left            =   -68760
         TabIndex        =   35
         Top             =   1485
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "TAOL"
         Height          =   285
         Index           =   46
         Left            =   -68760
         TabIndex        =   34
         Top             =   1155
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "JIEL"
         Height          =   285
         Index           =   45
         Left            =   -68760
         TabIndex        =   33
         Top             =   840
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "SANQLCSY"
         Height          =   285
         Index           =   44
         Left            =   -68760
         TabIndex        =   32
         Top             =   525
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "ERQLCSY"
         Height          =   285
         Index           =   43
         Left            =   -68760
         TabIndex        =   31
         Top             =   195
         Width           =   3015
      End
      Begin VB.TextBox txtFields 
         DataField       =   "YIQLCSY"
         Height          =   285
         Index           =   1
         Left            =   -73200
         TabIndex        =   30
         Top             =   3120
         Width           =   2655
      End
      Begin VB.CommandButton Command4 
         Caption         =   "选择与查看"
         Height          =   285
         Left            =   -68760
         TabIndex        =   29
         Top             =   3120
         Width           =   3015
      End
      Begin VB.CommandButton Command3 
         Caption         =   "选择与查看"
         Height          =   285
         Left            =   -73200
         TabIndex        =   28
         Top             =   3480
         Width           =   2655
      End
      Begin VB.CommandButton Command2 
         Caption         =   "选择与查看"
         Height          =   285
         Left            =   -68760
         TabIndex        =   27
         Top             =   3480
         Width           =   3015
      End
      Begin VB.CommandButton Command1 
         Caption         =   "选择"
         Height          =   285
         Left            =   -66600
         TabIndex        =   26
         Top             =   2760
         Width           =   855
      End
      Begin VB.Frame Frame1 
         Caption         =   "治疗方法"
         Height          =   3135
         Left            =   360
         TabIndex        =   17
         Top             =   240
         Width           =   3735
         Begin VB.CommandButton cmdZJLFX 
            Caption         =   "针灸疗法"
            Height          =   375
            Left            =   240
            TabIndex        =   25
            Top             =   360
            Width           =   1455
         End
         Begin VB.CommandButton cmdXYLFX 
            Caption         =   "西药疗法"
            Height          =   375
            Left            =   240
            TabIndex        =   24
            Top             =   1800
            Width           =   1455
         End
         Begin VB.CommandButton cmdQTLFX 
            Caption         =   "其他疗法"
            Height          =   375
            Left            =   240
            TabIndex        =   23
            Top             =   2280
            Width           =   1455
         End
         Begin VB.CommandButton cmdYFLFX 
            Caption         =   "药方疗法"
            Height          =   375
            Left            =   240
            TabIndex        =   22
            Top             =   1320
            Width           =   1455
         End
         Begin VB.CommandButton cmdAMLFX 
            Caption         =   "按摩疗法"
            Height          =   375
            Left            =   240
            TabIndex        =   21
            Top             =   840
            Width           =   1455
         End
         Begin VB.CommandButton cmdYWCFX 
            Caption         =   "药物成分"
            Height          =   375
            Left            =   2040
            TabIndex        =   20
            Top             =   1800
            Width           =   1455
         End
         Begin VB.CommandButton cmdYWX 
            Caption         =   "药物"
            Height          =   375
            Left            =   2040
            TabIndex        =   19
            Top             =   1320
            Width           =   1455
         End
         Begin VB.CommandButton cmdXWX 
            Caption         =   "穴位"
            Height          =   375
            Left            =   2040
            TabIndex        =   18
            Top             =   600
            Width           =   1455
         End
         Begin VB.Line Line1 
            X1              =   1680
            X2              =   2040
            Y1              =   600
            Y2              =   720
         End
         Begin VB.Line Line2 
            X1              =   1680
            X2              =   2040
            Y1              =   960
            Y2              =   840
         End
         Begin VB.Line Line3 
            Index           =   0
            X1              =   1680
            X2              =   2040
            Y1              =   1500
            Y2              =   1500
         End
         Begin VB.Line Line3 
            Index           =   1
            X1              =   1680
            X2              =   2040
            Y1              =   1960
            Y2              =   1960
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "病症证"
         Height          =   3135
         Left            =   4200
         TabIndex        =   13
         Top             =   240
         Width           =   2415
         Begin VB.CommandButton cmdJBX 
            Caption         =   "疾病"
            Height          =   375
            Left            =   480
            TabIndex        =   16
            Top             =   360
            Width           =   1455
         End
         Begin VB.CommandButton cmdZHX 
            Caption         =   "证候"
            Height          =   375
            Left            =   480
            TabIndex        =   15
            Top             =   960
            Width           =   1455
         End
         Begin VB.CommandButton cmdLCZZX 
            Caption         =   "临床症状"
            Height          =   375
            Left            =   480
            TabIndex        =   14
            Top             =   1560
            Width           =   1455
         End
      End
      Begin VB.Label lblLabels 
         Caption         =   "结果"
         Height          =   255
         Index           =   81
         Left            =   -74760
         TabIndex        =   104
         Top             =   3435
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "研究分组"
         Height          =   255
         Index           =   80
         Left            =   -74760
         TabIndex        =   103
         Top             =   3120
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "研究方法"
         Height          =   255
         Index           =   79
         Left            =   -74760
         TabIndex        =   102
         Top             =   2805
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "年龄组"
         Height          =   255
         Index           =   78
         Left            =   -74760
         TabIndex        =   101
         Top             =   2475
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "男性观察例数"
         Height          =   255
         Index           =   77
         Left            =   -74760
         TabIndex        =   100
         Top             =   2160
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "女性观察例数"
         Height          =   255
         Index           =   76
         Left            =   -74760
         TabIndex        =   99
         Top             =   1845
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "观察组总例数"
         Height          =   255
         Index           =   75
         Left            =   -74760
         TabIndex        =   98
         Top             =   1515
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "病例采集时间"
         Height          =   255
         Index           =   74
         Left            =   -74760
         TabIndex        =   97
         Top             =   1200
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "研究分类"
         Height          =   255
         Index           =   73
         Left            =   -74760
         TabIndex        =   96
         Top             =   885
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床研究名称"
         Height          =   255
         Index           =   72
         Left            =   -74760
         TabIndex        =   95
         Top             =   555
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床研究ID"
         Height          =   255
         Index           =   71
         Left            =   -74760
         TabIndex        =   94
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_地区"
         Height          =   255
         Index           =   66
         Left            =   -70080
         TabIndex        =   93
         Top             =   1845
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_相关因素"
         Height          =   255
         Index           =   65
         Left            =   -70080
         TabIndex        =   92
         Top             =   1515
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_传染途径"
         Height          =   255
         Index           =   64
         Left            =   -70080
         TabIndex        =   91
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_传染源"
         Height          =   255
         Index           =   63
         Left            =   -70080
         TabIndex        =   90
         Top             =   885
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "急_病因"
         Height          =   255
         Index           =   62
         Left            =   -70080
         TabIndex        =   89
         Top             =   555
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床研究单位"
         Height          =   255
         Index           =   61
         Left            =   -70080
         TabIndex        =   88
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "疗程次数:"
         Height          =   255
         Index           =   60
         Left            =   -74760
         TabIndex        =   87
         Top             =   2760
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "疗程时间:"
         Height          =   255
         Index           =   59
         Left            =   -74760
         TabIndex        =   86
         Top             =   2445
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "随访:"
         Height          =   255
         Index           =   58
         Left            =   -74760
         TabIndex        =   85
         Top             =   2115
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "无效:"
         Height          =   255
         Index           =   57
         Left            =   -74760
         TabIndex        =   84
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "总有效:"
         Height          =   255
         Index           =   56
         Left            =   -74760
         TabIndex        =   83
         Top             =   1485
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "基本缓解:"
         Height          =   255
         Index           =   55
         Left            =   -74760
         TabIndex        =   82
         Top             =   1155
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "完全缓解:"
         Height          =   255
         Index           =   54
         Left            =   -74760
         TabIndex        =   81
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "有效或好转:"
         Height          =   255
         Index           =   53
         Left            =   -74760
         TabIndex        =   80
         Top             =   525
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "显效:"
         Height          =   255
         Index           =   52
         Left            =   -74760
         TabIndex        =   79
         Top             =   195
         Width           =   1815
      End
      Begin VB.Label lblLabels 
         Caption         =   "日期:"
         Height          =   255
         Index           =   51
         Left            =   -70080
         TabIndex        =   78
         Top             =   2760
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "数据来源:"
         Height          =   255
         Index           =   50
         Left            =   -70080
         TabIndex        =   77
         Top             =   2445
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床试验者:"
         Height          =   255
         Index           =   49
         Left            =   -70080
         TabIndex        =   76
         Top             =   2115
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "临床试验单位:"
         Height          =   255
         Index           =   48
         Left            =   -70080
         TabIndex        =   75
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "典型病例:"
         Height          =   255
         Index           =   47
         Left            =   -70080
         TabIndex        =   74
         Top             =   1485
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "讨论:"
         Height          =   255
         Index           =   46
         Left            =   -70080
         TabIndex        =   73
         Top             =   1155
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "结论:"
         Height          =   255
         Index           =   45
         Left            =   -70080
         TabIndex        =   72
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "三期临床试验:"
         Height          =   255
         Index           =   44
         Left            =   -70080
         TabIndex        =   71
         Top             =   525
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "二期临床试验:"
         Height          =   255
         Index           =   43
         Left            =   -70080
         TabIndex        =   70
         Top             =   195
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         Caption         =   "一期临床试验:"
         Height          =   255
         Index           =   1
         Left            =   -74760
         TabIndex        =   69
         Top             =   3120
         Width           =   1455
      End
      Begin VB.Label Label6 
         Caption         =   "具体治疗过程"
         Height          =   255
         Left            =   -70080
         TabIndex        =   68
         Top             =   3120
         Width           =   1215
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "诊断:"
         Height          =   180
         Left            =   -74760
         TabIndex        =   67
         Top             =   3480
         Width           =   450
      End
      Begin VB.Label Label4 
         Caption         =   "疗效观测指标"
         Height          =   255
         Left            =   -70080
         TabIndex        =   66
         Top             =   3480
         Width           =   1095
      End
   End
End
Attribute VB_Name = "FrmLCYJX"
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

Const c_intFieldsCount As Integer = 18



Private Sub Form_Load()
    'Call AddParam
    
    On Error GoTo PROC_ERR
    '
    strstep = prefixname & "LCYJ"
    Set recFields = OraDatabase.CreateDynaset("select LCYJ_ID,LCYJMC,YJFL,BLCJSJ,GCZZLS,FGCLS,MGCLS,NLZ,YJFF,YJFZ,JG,LCYJDW,J_BY,J_CRY,J_CRTJ,J_XGYS,J_DQ from " & strstep & suffixCondition, 0&)
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
   
   For intIndex = 2 To 18
      txtFields(intIndex).Text = recFields.Fields(intIndex - 2).Value & ""
      txtFields(intIndex).ToolTipText = recFields.Fields(intIndex - 2).Value & ""
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
         cmdZJLFX.Enabled = False
         cmdAMLFX.Enabled = False
         cmdYFLFX.Enabled = False
         cmdXYLFX.Enabled = False
         cmdQTLFX.Enabled = False
         cmdXWX.Enabled = False
         cmdYWX.Enabled = False
         cmdJBX.Enabled = False
         cmdZHX.Enabled = False
         cmdLCZZX.Enabled = False
         cmdYWCFX.Enabled = False
                  
         cmdFirst.Enabled = False
         cmdPrev.Enabled = False
         cmdNext.Enabled = False
         cmdLast.Enabled = False
         cmdUpdate.Enabled = False
         cmdDelete.Enabled = False
         cmdOK.Enabled = False
         cmdCancel.Enabled = False
         cmdQuit.Enabled = True
         cmdQuery.Enabled = False
         
         For intIndex = 2 To 18
            txtFields(intIndex).Enabled = False
            
         Next intIndex
      Case fsBrowse
         cmdZJLFX.Enabled = True
         cmdAMLFX.Enabled = True
         cmdYFLFX.Enabled = True
         cmdXYLFX.Enabled = True
         cmdQTLFX.Enabled = True
         cmdXWX.Enabled = True
         cmdYWX.Enabled = True
         cmdJBX.Enabled = True
         cmdZHX.Enabled = True
         cmdLCZZX.Enabled = True
         cmdYWCFX.Enabled = True
         
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
         
         For intIndex = 2 To 18
            txtFields(intIndex).Enabled = False
         Next intIndex
        
      Case fsInsert
         cmdZJLFX.Enabled = False
         cmdAMLFX.Enabled = False
         cmdYFLFX.Enabled = False
         cmdXYLFX.Enabled = False
         cmdQTLFX.Enabled = False
         cmdXWX.Enabled = False
         cmdYWX.Enabled = False
         cmdJBX.Enabled = False
         cmdZHX.Enabled = False
         cmdLCZZX.Enabled = False
         cmdYWCFX.Enabled = False
         
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
         cmdZJLFX.Enabled = True
         cmdAMLFX.Enabled = True
         cmdYFLFX.Enabled = True
         cmdXYLFX.Enabled = True
         cmdQTLFX.Enabled = True
         cmdXWX.Enabled = True
         cmdYWX.Enabled = True
         cmdJBX.Enabled = True
         cmdZHX.Enabled = True
         cmdLCZZX.Enabled = True
         cmdYWCFX.Enabled = True
         
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
         
         For intIndex = 2 To 18
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
      
      For intIndex = 2 To 18
         recFields.Fields(intIndex - 2).Value = txtFields(intIndex).Text
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
            For i = 2 To c_intFieldsCount
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
    FrmQUERYD.objOO4O.Connect = c_strConnect
    FrmQUERYD.objOO4O.DatabaseName = c_strDatabase
    FrmQUERYD.objOO4O.Refresh
    If txtCondition.Text = "" Then
        FrmQUERYD.objOO4O.RecordSource = "select LCYJ_ID as 临床研究ID ,LCYJMC as 临床研究名称 from " & strstep & " where 1=1"
    Else
        strCondition = txtCondition.Text
        FrmQUERYD.objOO4O.RecordSource = "select LCYJ_ID as 临床研究ID ,LCYJMC as 临床研究名称 from " & strstep & " " & strCondition
    End If
    
    FrmQUERYD.objOO4O.Refresh
    FrmQUERYD.MSFlexGrid.Refresh
    FrmQUERYD.Show vbModal
    
     If FrmQUERYD.blnSelected = True Then
      recFields.FindFirst ("LCYJ_ID=" & FrmQUERYD.intID)
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

Private Sub cmdZJLFX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   
   FrmZJLFX.Show vbModal

End Sub

Private Sub cmdYFLFX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmYFLFX.Show vbModal

End Sub
Private Sub cmdXYLFX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmXYLFX.Show vbModal

End Sub
Private Sub cmdQTLFX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmQTLFX.Show vbModal

End Sub
Private Sub cmdAMLFX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmAMLFX.Show vbModal

End Sub

Private Sub cmdJBX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmJBX.Show vbModal
End Sub
Private Sub cmdZHX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmZHX.Show vbModal

End Sub
Private Sub cmdLCZZX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmLCZZX.Show vbModal

End Sub
Private Sub cmdXWX_Click()

   
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmXWX.Show vbModal

End Sub
Private Sub cmdYWCFX_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
   FrmYWCFX.Show vbModal

End Sub
Private Sub cmdYWX_Click()
  LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
  FrmYWX.Show vbModal
End Sub

Private Sub cmdLCZL_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
  FrmLCZLX.Show vbModal
End Sub
Private Sub cmdSYJC_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
  FrmSYJCX.Show vbModal
End Sub
Private Sub cmdDZZ_Click()
   LCYJIDtemp = recFields.Fields("LCYJ_ID").Value
  FrmDZZX.Show vbModal
End Sub
