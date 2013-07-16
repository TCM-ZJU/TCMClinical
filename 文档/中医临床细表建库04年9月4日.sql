/*==============================================================*/
/* Database name:  KERNEL_DATABASE_RECONSTRUCTION               */
/* DBMS name:      Sybase AS Anywhere 7                         */
/* Created on:     2004-9-4 16:10:17                            */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_AMLF_OIA_____4_JTZLGC') then
    alter table AMLF
       delete foreign key FK_AMLF_OIA_____4_JTZLGC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CXLCYJDX_REF_657_LCYJ') then
    alter table CXLCYJDX
       delete foreign key FK_CXLCYJDX_REF_657_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DZZ_REFERENCE_LCYJ') then
    alter table DZZ
       delete foreign key FK_DZZ_REFERENCE_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_JB_REFERENCE_CXLCYJDX') then
    alter table JB
       delete foreign key FK_JB_REFERENCE_CXLCYJDX
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_JBZHGL_REFERENCE_JB') then
    alter table JBZHGL
       delete foreign key FK_JBZHGL_REFERENCE_JB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_JBZHGL_REFERENCE_ZH') then
    alter table JBZHGL
       delete foreign key FK_JBZHGL_REFERENCE_ZH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_JBZZGL_REFERENCE_JB') then
    alter table JBZZGL
       delete foreign key FK_JBZZGL_REFERENCE_JB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_JBZZGL_REFERENCE_LCZZ') then
    alter table JBZZGL
       delete foreign key FK_JBZZGL_REFERENCE_LCZZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_JTZLGC_REFERENCE_LCYJ') then
    alter table JTZLGC
       delete foreign key FK_JTZLGC_REFERENCE_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LCZL_REF_1231_LCYJ') then
    alter table LCZL
       delete foreign key FK_LCZL_REF_1231_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LCZZ_REFERENCE_CXLCYJDX') then
    alter table LCZZ
       delete foreign key FK_LCZZ_REFERENCE_CXLCYJDX
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_QTLF_OIA_____2_JTZLGC') then
    alter table QTLF
       delete foreign key FK_QTLF_OIA_____2_JTZLGC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SYJC_REF_1224_LCYJ') then
    alter table SYJC
       delete foreign key FK_SYJC_REF_1224_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_XW_REFERENCE_ZJLF') then
    alter table XW
       delete foreign key FK_XW_REFERENCE_ZJLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_XW_REFERENCE_AMLF') then
    alter table XW
       delete foreign key FK_XW_REFERENCE_AMLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_XYLF_REFERENCE_JTZLGC') then
    alter table XYLF
       delete foreign key FK_XYLF_REFERENCE_JTZLGC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_YFLF_OIA_____3_JTZLGC') then
    alter table YFLF
       delete foreign key FK_YFLF_OIA_____3_JTZLGC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_YW_REF_1281_YFLF') then
    alter table YW
       delete foreign key FK_YW_REF_1281_YFLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_YWCF_REFERENCE_XYLF') then
    alter table YWCF
       delete foreign key FK_YWCF_REFERENCE_XYLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZH_REFERENCE_CXLCYJDX') then
    alter table ZH
       delete foreign key FK_ZH_REFERENCE_CXLCYJDX
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZHZZGL_REFERENCE_ZH') then
    alter table ZHZZGL
       delete foreign key FK_ZHZZGL_REFERENCE_ZH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZHZZGL_REFERENCE_LCZZ') then
    alter table ZHZZGL
       delete foreign key FK_ZHZZGL_REFERENCE_LCZZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZJLF_OIA______JTZLGC') then
    alter table ZJLF
       delete foreign key FK_ZJLF_OIA______JTZLGC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZLGCDXGL_REFERENCE_JTZLGC') then
    alter table ZLGCDXGL
       delete foreign key FK_ZLGCDXGL_REFERENCE_JTZLGC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZLGCDXGL_REFERENCE_CXLCYJDX') then
    alter table ZLGCDXGL
       delete foreign key FK_ZLGCDXGL_REFERENCE_CXLCYJDX
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='ANMLF_PK' and T.table_name='AMLF') then
   drop index AMLF.ANMLF_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='JUTIZLGC_PK' and T.table_name='JTZLGC') then
   drop index JTZLGC.JUTIZLGC_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='LINCYJ2_PK' and T.table_name='LCYJ') then
   drop index LCYJ.LINCYJ2_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='QITLF_PK' and T.table_name='QTLF') then
   drop index QTLF.QITLF_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='YAOWLF_PK' and T.table_name='YFLF') then
   drop index YFLF.YAOWLF_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='ZHENJLF_PK' and T.table_name='ZJLF') then
   drop index ZJLF.ZHENJLF_PK
end if;

if exists(select 1 from sys.systable where table_name='AMLF' and table_type='BASE') then
    drop table AMLF
end if;

if exists(select 1 from sys.systable where table_name='CXLCYJDX' and table_type='BASE') then
    drop table CXLCYJDX
end if;

if exists(select 1 from sys.systable where table_name='DZZ' and table_type='BASE') then
    drop table DZZ
end if;

if exists(select 1 from sys.systable where table_name='JB' and table_type='BASE') then
    drop table JB
end if;

if exists(select 1 from sys.systable where table_name='JBZHGL' and table_type='BASE') then
    drop table JBZHGL
end if;

if exists(select 1 from sys.systable where table_name='JBZZGL' and table_type='BASE') then
    drop table JBZZGL
end if;

if exists(select 1 from sys.systable where table_name='JTZLGC' and table_type='BASE') then
    drop table JTZLGC
end if;

if exists(select 1 from sys.systable where table_name='LCYJ' and table_type='BASE') then
    drop table LCYJ
end if;

if exists(select 1 from sys.systable where table_name='LCZL' and table_type='BASE') then
    drop table LCZL
end if;

if exists(select 1 from sys.systable where table_name='LCZZ' and table_type='BASE') then
    drop table LCZZ
end if;

if exists(select 1 from sys.systable where table_name='QTLF' and table_type='BASE') then
    drop table QTLF
end if;

if exists(select 1 from sys.systable where table_name='SYJC' and table_type='BASE') then
    drop table SYJC
end if;

if exists(select 1 from sys.systable where table_name='XW' and table_type='BASE') then
    drop table XW
end if;

if exists(select 1 from sys.systable where table_name='XYLF' and table_type='BASE') then
    drop table XYLF
end if;

if exists(select 1 from sys.systable where table_name='YFLF' and table_type='BASE') then
    drop table YFLF
end if;

if exists(select 1 from sys.systable where table_name='YW' and table_type='BASE') then
    drop table YW
end if;

if exists(select 1 from sys.systable where table_name='YWCF' and table_type='BASE') then
    drop table YWCF
end if;

if exists(select 1 from sys.systable where table_name='ZH' and table_type='BASE') then
    drop table ZH
end if;

if exists(select 1 from sys.systable where table_name='ZHZZGL' and table_type='BASE') then
    drop table ZHZZGL
end if;

if exists(select 1 from sys.systable where table_name='ZJLF' and table_type='BASE') then
    drop table ZJLF
end if;

if exists(select 1 from sys.systable where table_name='ZLGCDXGL' and table_type='BASE') then
    drop table ZLGCDXGL
end if;

/*==============================================================*/
/* Table: AMLF                                                  */
/*==============================================================*/
create table AMLF 
(
    ZLGC_ID              integer                        not null,
    AMFF                 VARCHAR2(2000),
    AMSF                 VARCHAR2(2000),
    AMSJ                 VARCHAR2(2000),
    AMCS                 VARCHAR2(2000),
    JL                   VARCHAR2(2000),
    ZZ                   VARCHAR2(2000),
    primary key (ZLGC_ID)
);

/*==============================================================*/
/* Index: ANMLF_PK                                              */
/*==============================================================*/
create unique index ANMLF_PK on AMLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: CXLCYJDX                                              */
/*==============================================================*/
create table CXLCYJDX 
(
    CXDX_ID              integer                        not null,
    LCYJ_ID              integer,
    BZZLX                smallint,
    BZMC                 varchar2(2000),
    primary key (CXDX_ID)
);

/*==============================================================*/
/* Table: DZZ                                                   */
/*==============================================================*/
create table DZZ 
(
    DZZ_ID               NUMBER                         not null,
    LCYJ_ID              NUMBER,
    DZZMC                VARCHAR2(200),
    NL                   VARCHAR2(2000),
    LS                   NUMBER,
    ZLYW                 VARCHAR2(2000),
    JC                   VARCHAR2(2000),
    primary key (DZZ_ID)
);

/*==============================================================*/
/* Table: JB                                                    */
/*==============================================================*/
create table JB 
(
    JB_ID                integer                        not null,
    JBMC                 VARCHAR2(2000),
    YFB                  VARCHAR2(2000),
    BFZ                  VARCHAR2(2000),
    primary key (JB_ID)
);

/*==============================================================*/
/* Table: JBZHGL                                                */
/*==============================================================*/
create table JBZHGL 
(
    JB_ID                integer,
    ZH_ID                integer
);

/*==============================================================*/
/* Table: JBZZGL                                                */
/*==============================================================*/
create table JBZZGL 
(
    ZZ_ID                integer                        not null,
    JB_ID                integer
);

/*==============================================================*/
/* Table: JTZLGC                                                */
/*==============================================================*/
create table JTZLGC 
(
    JTZLGC_ID            integer                        not null,
    LCYJ_ID              integer,
    ZLSJ                 varchar2(2000),
    ZLLX                 integer                       
          check (ZLLX is null or ( ZLLX in (1,2,3,4,5) )),
    LCBZXH               integer,
    primary key (JTZLGC_ID)
);

/*==============================================================*/
/* Index: JUTIZLGC_PK                                           */
/*==============================================================*/
create unique index JUTIZLGC_PK on JTZLGC (
JTZLGC_ID ASC
);

/*==============================================================*/
/* Table: LCYJ                                                  */
/*==============================================================*/
create table LCYJ 
(
    LCYJ_ID              NUMBER                         not null,
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
    primary key (LCYJ_ID)
);

/*==============================================================*/
/* Index: LINCYJ2_PK                                            */
/*==============================================================*/
create unique index LINCYJ2_PK on LCYJ (
LCYJ_ID ASC
);

/*==============================================================*/
/* Table: LCZL                                                  */
/*==============================================================*/
create table LCZL 
(
    LCZL_ID              integer                        not null,
    LCYJ_ID              integer,
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
    primary key (LCZL_ID)
);

/*==============================================================*/
/* Table: LCZZ                                                  */
/*==============================================================*/
create table LCZZ 
(
    ZZ_ID                integer                        not null,
    ZZMC                 VARCHAR2(2000),
    primary key (ZZ_ID)
);

/*==============================================================*/
/* Table: QTLF                                                  */
/*==============================================================*/
create table QTLF 
(
    ZLGC_ID              integer                        not null,
    FFMC                 VARCHAR2(4000),
    FFMS                 VARCHAR2(4000),
    ZZ                   VARCHAR2(2000),
    primary key (ZLGC_ID)
);

/*==============================================================*/
/* Index: QITLF_PK                                              */
/*==============================================================*/
create unique index QITLF_PK on QTLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: SYJC                                                  */
/*==============================================================*/
create table SYJC 
(
    SYJC_ID              integer                        not null,
    LCYJ_ID              integer,
    JCXM                 VARCHAR2(2000),
    JCSJ                 VARCHAR2(2000),
    BHZB                 VARCHAR2(2000),
    GCFZ                 VARCHAR2(2000),
    primary key (SYJC_ID)
);

/*==============================================================*/
/* Table: XW                                                    */
/*==============================================================*/
create table XW 
(
    XW_ID                integer                        not null,
    ZLGC_ID              integer,
    XWMC                 VARCHAR2(2000),
    XWLX                 smallint,
    primary key (XW_ID)
);

/*==============================================================*/
/* Table: XYLF                                                  */
/*==============================================================*/
create table XYLF 
(
    ZLGC_ID              integer                        not null,
    GYFS                 VARCHAR2(2000),
    YWMC                 VARCHAR2(2000),
    YWJX                 VARCHAR2(2000),
    GYSJ                 VARCHAR2(2000),
    ZLYZ                 VARCHAR2(2000),
    primary key (ZLGC_ID)
);

/*==============================================================*/
/* Table: YFLF                                                  */
/*==============================================================*/
create table YFLF 
(
    ZLGC_ID              integer                        not null,
    GYFS                 VARCHAR2(2000),
    YFMC                 VARCHAR2(2000),
    YFJX                 VARCHAR2(2000),
    ZZ                   VARCHAR2(2000),
    primary key (ZLGC_ID)
);

/*==============================================================*/
/* Index: YAOWLF_PK                                             */
/*==============================================================*/
create unique index YAOWLF_PK on YFLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: YW                                                    */
/*==============================================================*/
create table YW 
(
    ZLGC_ID              integer,
    YW_ID                integer                        not null,
    YWMC                 VARCHAR2(2000),
    YWJL                 VARCHAR2(2000),
    JLDW                 VARCHAR2(2000),
    primary key (YW_ID)
);

/*==============================================================*/
/* Table: YWCF                                                  */
/*==============================================================*/
create table YWCF 
(
    ZLGC_ID              integer,
    YWCF_ID              integer                        not null,
    YWCFMC               VARCHAR2(2000),
    YWCFJL               VARCHAR2(2000),
    JLDW                 VARCHAR2(2000),
    primary key (YWCF_ID)
);

/*==============================================================*/
/* Table: ZH                                                    */
/*==============================================================*/
create table ZH 
(
    ZH_ID                integer                        not null,
    ZHMC                 VARCHAR2(2000),
    primary key (ZH_ID)
);

/*==============================================================*/
/* Table: ZHZZGL                                                */
/*==============================================================*/
create table ZHZZGL 
(
    ZZ_ID                integer                        not null,
    ZH_ID                integer
);

/*==============================================================*/
/* Table: ZJLF                                                  */
/*==============================================================*/
create table ZJLF 
(
    ZLGC_ID              integer                        not null,
    ZJFF                 VARCHAR2(2000),
    ZJQX                 VARCHAR2(2000),
    ZCSF                 VARCHAR2(2000),
    ZCCS                 VARCHAR2(2000),
    JL                   VARCHAR2(2000),
    ZZ                   VARCHAR2(2000),
    primary key (ZLGC_ID)
);

/*==============================================================*/
/* Index: ZHENJLF_PK                                            */
/*==============================================================*/
create unique index ZHENJLF_PK on ZJLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: ZLGCDXGL                                              */
/*==============================================================*/
create table ZLGCDXGL 
(
    JTZLGC_ID            integer,
    CXDX_ID              integer
);

alter table AMLF
   add foreign key FK_AMLF_OIA_____4_JTZLGC (ZLGC_ID)
      references JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table CXLCYJDX
   add foreign key FK_CXLCYJDX_REF_657_LCYJ (LCYJ_ID)
      references LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table DZZ
   add foreign key FK_DZZ_REFERENCE_LCYJ (LCYJ_ID)
      references LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table JB
   add foreign key FK_JB_REFERENCE_CXLCYJDX (JB_ID)
      references CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

alter table JBZHGL
   add foreign key FK_JBZHGL_REFERENCE_JB (JB_ID)
      references JB (JB_ID)
      on update restrict
      on delete restrict;

alter table JBZHGL
   add foreign key FK_JBZHGL_REFERENCE_ZH (ZH_ID)
      references ZH (ZH_ID)
      on update restrict
      on delete restrict;

alter table JBZZGL
   add foreign key FK_JBZZGL_REFERENCE_JB (JB_ID)
      references JB (JB_ID)
      on update restrict
      on delete restrict;

alter table JBZZGL
   add foreign key FK_JBZZGL_REFERENCE_LCZZ (ZZ_ID)
      references LCZZ (ZZ_ID)
      on update restrict
      on delete restrict;

alter table JTZLGC
   add foreign key FK_JTZLGC_REFERENCE_LCYJ (LCYJ_ID)
      references LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table LCZL
   add foreign key FK_LCZL_REF_1231_LCYJ (LCYJ_ID)
      references LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table LCZZ
   add foreign key FK_LCZZ_REFERENCE_CXLCYJDX (ZZ_ID)
      references CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

alter table QTLF
   add foreign key FK_QTLF_OIA_____2_JTZLGC (ZLGC_ID)
      references JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SYJC
   add foreign key FK_SYJC_REF_1224_LCYJ (LCYJ_ID)
      references LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table XW
   add foreign key FK_XW_REFERENCE_ZJLF (ZLGC_ID)
      references ZJLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table XW
   add foreign key FK_XW_REFERENCE_AMLF (ZLGC_ID)
      references AMLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table XYLF
   add foreign key FK_XYLF_REFERENCE_JTZLGC (ZLGC_ID)
      references JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table YFLF
   add foreign key FK_YFLF_OIA_____3_JTZLGC (ZLGC_ID)
      references JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table YW
   add foreign key FK_YW_REF_1281_YFLF (ZLGC_ID)
      references YFLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table YWCF
   add foreign key FK_YWCF_REFERENCE_XYLF (ZLGC_ID)
      references XYLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table ZH
   add foreign key FK_ZH_REFERENCE_CXLCYJDX (ZH_ID)
      references CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

alter table ZHZZGL
   add foreign key FK_ZHZZGL_REFERENCE_ZH (ZH_ID)
      references ZH (ZH_ID)
      on update restrict
      on delete restrict;

alter table ZHZZGL
   add foreign key FK_ZHZZGL_REFERENCE_LCZZ (ZZ_ID)
      references LCZZ (ZZ_ID)
      on update restrict
      on delete restrict;

alter table ZJLF
   add foreign key FK_ZJLF_OIA______JTZLGC (ZLGC_ID)
      references JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table ZLGCDXGL
   add foreign key FK_ZLGCDXGL_REFERENCE_JTZLGC (JTZLGC_ID)
      references JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table ZLGCDXGL
   add foreign key FK_ZLGCDXGL_REFERENCE_CXLCYJDX (CXDX_ID)
      references CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

