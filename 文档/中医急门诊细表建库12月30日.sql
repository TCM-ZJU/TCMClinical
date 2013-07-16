/*==============================================================*/
/* Database name:  KERNEL_DATABASE_RECONSTRUCTION               */
/* DBMS name:      ORACLE Version 9i                            */
/* Created on:     2004-12-30 15:55:48                          */
/*==============================================================*/


alter table JMZ_AMLF
   drop constraint FK_JMZ_AMLF_OIA_____4_JMZ_JTZL
/


alter table JMZ_CXLCYJDX
   drop constraint FK_JMZ_CXLC_REFERENCE_JMZ_LCYJ
/


alter table JMZ_DZZ
   drop constraint FK_JMZ_DZZ_REFERENCE_JMZ_LCYJ
/


alter table JMZ_JB
   drop constraint FK_JMZ_JB_REFERENCE_JMZ_CXLC
/


alter table JMZ_JBZHGL
   drop constraint FK_JMZ_JBZH_REFERENCE_JMZ_JB
/


alter table JMZ_JBZHGL
   drop constraint FK_JMZ_JBZH_REFERENCE_JMZ_ZH
/


alter table JMZ_JBZZGL
   drop constraint FK_JMZ_JBZZ_REFERENCE_JMZ_JB
/


alter table JMZ_JBZZGL
   drop constraint FK_JMZ_JBZZ_REFERENCE_JMZ_LCZZ
/


alter table JMZ_JTZLGC
   drop constraint FK_JMZ_JTZL_REFERENCE_JMZ_LCYJ
/


alter table JMZ_LCZL
   drop constraint FK_JMZ_LCZL_REFERENCE_JMZ_LCYJ
/


alter table JMZ_LCZZ
   drop constraint FK_JMZ_LCZZ_REFERENCE_JMZ_CXLC
/


alter table JMZ_QTLF
   drop constraint FK_JMZ_QTLF_OIA_____2_JMZ_JTZL
/


alter table JMZ_SYJC
   drop constraint FK_JMZ_SYJC_REFERENCE_JMZ_LCYJ
/

alter table JMZ_XYLF
   drop constraint FK_JMZ_XYLF_REFERENCE_JMZ_JTZL
/


alter table JMZ_YFLF
   drop constraint FK_JMZ_YFLF_OIA_____3_JMZ_JTZL
/


alter table JMZ_YW
   drop constraint FK_JMZ_YW_REFERENCE_JMZ_YFLF
/


alter table JMZ_YWCF
   drop constraint FK_JMZ_YWCF_REFERENCE_JMZ_XYLF
/


alter table JMZ_ZH
   drop constraint FK_JMZ_ZH_REFERENCE_JMZ_CXLC
/


alter table JMZ_ZHZZGL
   drop constraint FK_JMZ_ZHZZ_REFERENCE_JMZ_ZH
/


alter table JMZ_ZHZZGL
   drop constraint FK_JMZ_ZHZZ_REFERENCE_JMZ_LCZZ
/


alter table JMZ_ZJLF
   drop constraint FK_JMZ_ZJLF_OIA______JMZ_JTZL
/


alter table JMZ_ZLGCDXGL
   drop constraint FK_JMZ_ZLGC_REFERENCE_JMZ_JTZL
/


alter table JMZ_ZLGCDXGL
   drop constraint FK_JMZ_ZLGC_REFERENCE_JMZ_CXLC
/


drop index ANMLF_PK
/


drop index JUTIZLGC_PK
/


drop index LINCYJ2_PK
/


drop index QITLF_PK
/


drop index YAOWLF_PK
/


drop index ZHENJLF_PK
/


drop table JMZ_AMLF cascade constraints
/


drop table JMZ_CXLCYJDX cascade constraints
/


drop table JMZ_DZZ cascade constraints
/


drop table JMZ_JB cascade constraints
/


drop table JMZ_JBZHGL cascade constraints
/


drop table JMZ_JBZZGL cascade constraints
/


drop table JMZ_JTZLGC cascade constraints
/


drop table JMZ_LCYJ cascade constraints
/


drop table JMZ_LCZL cascade constraints
/


drop table JMZ_LCZZ cascade constraints
/


drop table JMZ_QTLF cascade constraints
/


drop table JMZ_SYJC cascade constraints
/


drop table JMZ_XW cascade constraints
/


drop table JMZ_XYLF cascade constraints
/


drop table JMZ_YFLF cascade constraints
/


drop table JMZ_YW cascade constraints
/


drop table JMZ_YWCF cascade constraints
/


drop table JMZ_ZH cascade constraints
/


drop table JMZ_ZHZZGL cascade constraints
/


drop table JMZ_ZJLF cascade constraints
/


drop table JMZ_ZLGCDXGL cascade constraints
/


/*==============================================================*/
/* Table: JMZ_AMLF                                              */
/*==============================================================*/


create table JMZ_AMLF  (
   ZLGC_ID              INTEGER                          not null,
   AMFF                 VARCHAR2(2000),
   AMSF                 VARCHAR2(2000),
   AMSJ                 VARCHAR2(2000),
   AMCS                 VARCHAR2(2000),
   JL                   VARCHAR2(2000),
   ZZ                   VARCHAR2(2000),
   constraint PK_JMZ_AMLF primary key (ZLGC_ID)
)
/


/*==============================================================*/
/* Index: ANMLF_PK                                              */
/*==============================================================*/
create unique index ANMLF_PK on JMZ_AMLF (
   ZLGC_ID ASC
)
/


/*==============================================================*/
/* Table: JMZ_CXLCYJDX                                          */
/*==============================================================*/


create table JMZ_CXLCYJDX  (
   CXDX_ID              INTEGER                          not null,
   LCYJ_ID              INTEGER,
   BZZLX                SMALLINT,
   BZMC                 varchar2(2000),
   constraint PK_LINCBZ primary key (CXDX_ID)
)
/


/*==============================================================*/
/* Table: JMZ_DZZ                                               */
/*==============================================================*/


create table JMZ_DZZ  (
   DZZ_ID               NUMBER                           not null,
   LCYJ_ID              NUMBER,
   DZZMC                VARCHAR2(200),
   NL                   VARCHAR2(2000),
   LS                   NUMBER,
   ZLYW                 VARCHAR2(2000),
   JC                   VARCHAR2(2000),
   constraint PK_LINCDZZ primary key (DZZ_ID)
)
/


/*==============================================================*/
/* Table: JMZ_JB                                                */
/*==============================================================*/


create table JMZ_JB  (
   JB_ID                INTEGER                          not null,
   JBMC                 VARCHAR2(2000),
   YFB                  VARCHAR2(2000),
   BFZ                  VARCHAR2(2000),
   ZH                   VARCHAR2(2000),
   ZZ                   VARCHAR2(2000),
   constraint PK_LINCJB primary key (JB_ID)
)
/


/*==============================================================*/
/* Table: JMZ_JBZHGL                                            */
/*==============================================================*/


create table JMZ_JBZHGL  (
   JB_ID                INTEGER,
   ZH_ID                INTEGER
)
/


/*==============================================================*/
/* Table: JMZ_JBZZGL                                            */
/*==============================================================*/


create table JMZ_JBZZGL  (
   ZZ_ID                INTEGER                          not null,
   JB_ID                INTEGER
)
/


/*==============================================================*/
/* Table: JMZ_JTZLGC                                            */
/*==============================================================*/


create table JMZ_JTZLGC  (
   JTZLGC_ID            INTEGER                          not null,
   LCYJ_ID              INTEGER,
   ZLSJ                 varchar2(2000),
   ZLLX                 INTEGER
         constraint CKC_ZLLX_JMZ_JTZL check (ZLLX is null or ( ZLLX in (1,2,3,4,5) )),
   LCBZXH               INTEGER,
   constraint PK_JMZ_JTZLGC primary key (JTZLGC_ID)
)
/


/*==============================================================*/
/* Index: JUTIZLGC_PK                                           */
/*==============================================================*/
create unique index JUTIZLGC_PK on JMZ_JTZLGC (
   JTZLGC_ID ASC
)
/


/*==============================================================*/
/* Table: JMZ_LCYJ                                              */
/*==============================================================*/


create table JMZ_LCYJ  (
   LCYJ_ID              NUMBER                           not null,
   LCYJMC               VARCHAR2(2000),
   YJFL                 VARCHAR2(2000),
   BLCJSJ               VARCHAR2(2000),
   GCZZLS               NUMBER,
   FGCLS                NUMBER,
   MGCLS                NUMBER,
   NLZ                  VARCHAR2(4000),
   YJFF                 VARCHAR2(4000),
   YJFZ                 VARCHAR2(4000),
   JG                   VARCHAR2(4000),
   LCYJDW               VARCHAR2(2000),
   J_BY                 VARCHAR2(2000),
   J_CRY                VARCHAR2(2000),
   J_CRTJ               VARCHAR2(2000),
   J_XGYS               VARCHAR2(2000),
   J_DQ                 VARCHAR2(2000),
   GCZXB                CHAR(1),
   constraint PK_JMZ_LCYJ primary key (LCYJ_ID)
)
/


/*==============================================================*/
/* Index: LINCYJ2_PK                                            */
/*==============================================================*/
create unique index LINCYJ2_PK on JMZ_LCYJ (
   LCYJ_ID ASC
)
/


/*==============================================================*/
/* Table: JMZ_LCZL                                              */
/*==============================================================*/


create table JMZ_LCZL  (
   LCZL_ID              INTEGER                          not null,
   LCYJ_ID              INTEGER,
   BZZMC                VARCHAR2(2000),
   ZDZBFL               VARCHAR2(2000),
   ZBQZ                 VARCHAR2(2000),
   ZBXM                 VARCHAR2(2000),
   LXBZLY               VARCHAR2(2000),
   LXBZ                 VARCHAR2(2000),
   ZDBZLY               VARCHAR2(2000),
   ZDYQ                 VARCHAR2(2000),
   ZYZDFF               VARCHAR2(4000),
   ZYXL                 VARCHAR2(2000),
   constraint PK_LINCZD primary key (LCZL_ID)
)
/


/*==============================================================*/
/* Table: JMZ_LCZZ                                              */
/*==============================================================*/


create table JMZ_LCZZ  (
   ZZ_ID                INTEGER                          not null,
   ZZMC                 VARCHAR2(2000),
   constraint PK_LINCZZ primary key (ZZ_ID)
)
/


/*==============================================================*/
/* Table: JMZ_QTLF                                              */
/*==============================================================*/


create table JMZ_QTLF  (
   ZLGC_ID              INTEGER                          not null,
   FFMC                 VARCHAR2(4000),
   FFMS                 VARCHAR2(4000),
   ZZ                   VARCHAR2(2000),
   constraint PK_JMZ_QTLF primary key (ZLGC_ID)
)
/


/*==============================================================*/
/* Index: QITLF_PK                                              */
/*==============================================================*/
create unique index QITLF_PK on JMZ_QTLF (
   ZLGC_ID ASC
)
/


/*==============================================================*/
/* Table: JMZ_SYJC                                              */
/*==============================================================*/


create table JMZ_SYJC  (
   SYJC_ID              INTEGER                          not null,
   LCYJ_ID              INTEGER,
   JCXM                 VARCHAR2(2000),
   JCSJ                 VARCHAR2(2000),
   BHZB                 VARCHAR2(2000),
   GCFZ                 VARCHAR2(2000),
   constraint PK_JMZ_SYJC primary key (SYJC_ID)
)
/


/*==============================================================*/
/* Table: JMZ_XW                                                */
/*==============================================================*/


create table JMZ_XW  (
   XW_ID                INTEGER                          not null,
   ZLGC_ID              INTEGER,
   XWMC                 VARCHAR2(2000),
   XWLX                 SMALLINT,
   constraint PK_XUEWEI primary key (XW_ID)
)
/


/*==============================================================*/
/* Table: JMZ_XYLF                                              */
/*==============================================================*/


create table JMZ_XYLF  (
   ZLGC_ID              INTEGER                          not null,
   GYFS                 VARCHAR2(2000),
   YWMC                 VARCHAR2(2000),
   YWJX                 VARCHAR2(2000),
   GYSJ                 VARCHAR2(2000),
   ZLYZ                 VARCHAR2(2000),
   constraint PK_JMZ_XYLF primary key (ZLGC_ID)
)
/


/*==============================================================*/
/* Table: JMZ_YFLF                                              */
/*==============================================================*/


create table JMZ_YFLF  (
   ZLGC_ID              INTEGER                          not null,
   GYFS                 VARCHAR2(2000),
   YFMC                 VARCHAR2(2000),
   YFJX                 VARCHAR2(2000),
   ZZ                   VARCHAR2(2000),
   constraint PK_JMZ_YFLF primary key (ZLGC_ID)
)
/


/*==============================================================*/
/* Index: YAOWLF_PK                                             */
/*==============================================================*/
create unique index YAOWLF_PK on JMZ_YFLF (
   ZLGC_ID ASC
)
/


/*==============================================================*/
/* Table: JMZ_YW                                                */
/*==============================================================*/


create table JMZ_YW  (
   ZLGC_ID              INTEGER,
   YW_ID                INTEGER                          not null,
   YWMC                 VARCHAR2(2000),
   YWJL                 VARCHAR2(2000),
   JLDW                 VARCHAR2(2000),
   constraint PK_YAOWU primary key (YW_ID)
)
/


/*==============================================================*/
/* Table: JMZ_YWCF                                              */
/*==============================================================*/


create table JMZ_YWCF  (
   ZLGC_ID              INTEGER,
   YWCF_ID              INTEGER                          not null,
   YWCFMC               VARCHAR2(2000),
   YWCFJL               VARCHAR2(2000),
   JLDW                 VARCHAR2(2000),
   constraint PK_YAOWCF primary key (YWCF_ID)
)
/


/*==============================================================*/
/* Table: JMZ_ZH                                                */
/*==============================================================*/


create table JMZ_ZH  (
   ZH_ID                INTEGER                          not null,
   ZHMC                 VARCHAR2(2000),
   constraint PK_LINCZH primary key (ZH_ID)
)
/


/*==============================================================*/
/* Table: JMZ_ZHZZGL                                            */
/*==============================================================*/


create table JMZ_ZHZZGL  (
   ZZ_ID                INTEGER                          not null,
   ZH_ID                INTEGER
)
/


/*==============================================================*/
/* Table: JMZ_ZJLF                                              */
/*==============================================================*/


create table JMZ_ZJLF  (
   ZLGC_ID              INTEGER                          not null,
   ZJFF                 VARCHAR2(2000),
   ZJQX                 VARCHAR2(2000),
   ZCSF                 VARCHAR2(2000),
   ZCCS                 VARCHAR2(2000),
   JL                   VARCHAR2(2000),
   ZZ                   VARCHAR2(2000),
   constraint PK_JMZ_ZJLF primary key (ZLGC_ID)
)
/


/*==============================================================*/
/* Index: ZHENJLF_PK                                            */
/*==============================================================*/
create unique index ZHENJLF_PK on JMZ_ZJLF (
   ZLGC_ID ASC
)
/


/*==============================================================*/
/* Table: JMZ_ZLGCDXGL                                          */
/*==============================================================*/


create table JMZ_ZLGCDXGL  (
   JTZLGC_ID            INTEGER,
   CXDX_ID              INTEGER
)
/


alter table JMZ_AMLF
   add constraint FK_JMZ_AMLF_OIA_____4_JMZ_JTZL foreign key (ZLGC_ID)
      references JMZ_JTZLGC (JTZLGC_ID)
/


alter table JMZ_CXLCYJDX
   add constraint FK_JMZ_CXLC_REFERENCE_JMZ_LCYJ foreign key (LCYJ_ID)
      references JMZ_LCYJ (LCYJ_ID)
/


alter table JMZ_DZZ
   add constraint FK_JMZ_DZZ_REFERENCE_JMZ_LCYJ foreign key (LCYJ_ID)
      references JMZ_LCYJ (LCYJ_ID)
/


alter table JMZ_JB
   add constraint FK_JMZ_JB_REFERENCE_JMZ_CXLC foreign key (JB_ID)
      references JMZ_CXLCYJDX (CXDX_ID)
/


alter table JMZ_JBZHGL
   add constraint FK_JMZ_JBZH_REFERENCE_JMZ_JB foreign key (JB_ID)
      references JMZ_JB (JB_ID)
/


alter table JMZ_JBZHGL
   add constraint FK_JMZ_JBZH_REFERENCE_JMZ_ZH foreign key (ZH_ID)
      references JMZ_ZH (ZH_ID)
/


alter table JMZ_JBZZGL
   add constraint FK_JMZ_JBZZ_REFERENCE_JMZ_JB foreign key (JB_ID)
      references JMZ_JB (JB_ID)
/


alter table JMZ_JBZZGL
   add constraint FK_JMZ_JBZZ_REFERENCE_JMZ_LCZZ foreign key (ZZ_ID)
      references JMZ_LCZZ (ZZ_ID)
/


alter table JMZ_JTZLGC
   add constraint FK_JMZ_JTZL_REFERENCE_JMZ_LCYJ foreign key (LCYJ_ID)
      references JMZ_LCYJ (LCYJ_ID)
/


alter table JMZ_LCZL
   add constraint FK_JMZ_LCZL_REFERENCE_JMZ_LCYJ foreign key (LCYJ_ID)
      references JMZ_LCYJ (LCYJ_ID)
/


alter table JMZ_LCZZ
   add constraint FK_JMZ_LCZZ_REFERENCE_JMZ_CXLC foreign key (ZZ_ID)
      references JMZ_CXLCYJDX (CXDX_ID)
/


alter table JMZ_QTLF
   add constraint FK_JMZ_QTLF_OIA_____2_JMZ_JTZL foreign key (ZLGC_ID)
      references JMZ_JTZLGC (JTZLGC_ID)
/


alter table JMZ_SYJC
   add constraint FK_JMZ_SYJC_REFERENCE_JMZ_LCYJ foreign key (LCYJ_ID)
      references JMZ_LCYJ (LCYJ_ID)
/


alter table JMZ_XYLF
   add constraint FK_JMZ_XYLF_REFERENCE_JMZ_JTZL foreign key (ZLGC_ID)
      references JMZ_JTZLGC (JTZLGC_ID)
/


alter table JMZ_YFLF
   add constraint FK_JMZ_YFLF_OIA_____3_JMZ_JTZL foreign key (ZLGC_ID)
      references JMZ_JTZLGC (JTZLGC_ID)
/


alter table JMZ_YW
   add constraint FK_JMZ_YW_REFERENCE_JMZ_YFLF foreign key (ZLGC_ID)
      references JMZ_YFLF (ZLGC_ID)
/


alter table JMZ_YWCF
   add constraint FK_JMZ_YWCF_REFERENCE_JMZ_XYLF foreign key (ZLGC_ID)
      references JMZ_XYLF (ZLGC_ID)
/


alter table JMZ_ZH
   add constraint FK_JMZ_ZH_REFERENCE_JMZ_CXLC foreign key (ZH_ID)
      references JMZ_CXLCYJDX (CXDX_ID)
/


alter table JMZ_ZHZZGL
   add constraint FK_JMZ_ZHZZ_REFERENCE_JMZ_ZH foreign key (ZH_ID)
      references JMZ_ZH (ZH_ID)
/


alter table JMZ_ZHZZGL
   add constraint FK_JMZ_ZHZZ_REFERENCE_JMZ_LCZZ foreign key (ZZ_ID)
      references JMZ_LCZZ (ZZ_ID)
/


alter table JMZ_ZJLF
   add constraint FK_JMZ_ZJLF_OIA______JMZ_JTZL foreign key (ZLGC_ID)
      references JMZ_JTZLGC (JTZLGC_ID)
/


alter table JMZ_ZLGCDXGL
   add constraint FK_JMZ_ZLGC_REFERENCE_JMZ_JTZL foreign key (JTZLGC_ID)
      references JMZ_JTZLGC (JTZLGC_ID)
/


alter table JMZ_ZLGCDXGL
   add constraint FK_JMZ_ZLGC_REFERENCE_JMZ_CXLC foreign key (CXDX_ID)
      references JMZ_CXLCYJDX (CXDX_ID)
/


