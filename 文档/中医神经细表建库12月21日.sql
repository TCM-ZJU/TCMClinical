/*==============================================================*/
/* Database name:  KERNEL_DATABASE_RECONSTRUCTION               */
/* DBMS name:      Sybase AS Anywhere 7                         */
/* Created on:     2004-12-15 14:24:02                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_SJ_AMLF_OIA_____4_SJ_JTZL') then
    alter table SJ_AMLF
       delete foreign key FK_SJ_AMLF_OIA_____4_SJ_JTZL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_CXLC_REF_657_SJ_LCYJ') then
    alter table SJ_CXLCYJDX
       delete foreign key FK_SJ_CXLC_REF_657_SJ_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_DZZ_REFERENCE_SJ_LCYJ') then
    alter table SJ_DZZ
       delete foreign key FK_SJ_DZZ_REFERENCE_SJ_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_JB_REFERENCE_SJ_CXLC') then
    alter table SJ_JB
       delete foreign key FK_SJ_JB_REFERENCE_SJ_CXLC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_JBZH_REFERENCE_SJ_JB') then
    alter table SJ_JBZHGL
       delete foreign key FK_SJ_JBZH_REFERENCE_SJ_JB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_JBZH_REFERENCE_SJ_ZH') then
    alter table SJ_JBZHGL
       delete foreign key FK_SJ_JBZH_REFERENCE_SJ_ZH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_JBZZ_REFERENCE_SJ_JB') then
    alter table SJ_JBZZGL
       delete foreign key FK_SJ_JBZZ_REFERENCE_SJ_JB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_JBZZ_REFERENCE_SJ_LCZZ') then
    alter table SJ_JBZZGL
       delete foreign key FK_SJ_JBZZ_REFERENCE_SJ_LCZZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_JTZL_REFERENCE_SJ_LCYJ') then
    alter table SJ_JTZLGC
       delete foreign key FK_SJ_JTZL_REFERENCE_SJ_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_LCZL_REF_1231_SJ_LCYJ') then
    alter table SJ_LCZL
       delete foreign key FK_SJ_LCZL_REF_1231_SJ_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_LCZZ_REFERENCE_SJ_CXLC') then
    alter table SJ_LCZZ
       delete foreign key FK_SJ_LCZZ_REFERENCE_SJ_CXLC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_QTLF_OIA_____2_SJ_JTZL') then
    alter table SJ_QTLF
       delete foreign key FK_SJ_QTLF_OIA_____2_SJ_JTZL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_SYJC_REF_1224_SJ_LCYJ') then
    alter table SJ_SYJC
       delete foreign key FK_SJ_SYJC_REF_1224_SJ_LCYJ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_XW_REFERENCE_SJ_ZJLF') then
    alter table SJ_XW
       delete foreign key FK_SJ_XW_REFERENCE_SJ_ZJLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_XW_REFERENCE_SJ_AMLF') then
    alter table SJ_XW
       delete foreign key FK_SJ_XW_REFERENCE_SJ_AMLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_XYLF_REFERENCE_SJ_JTZL') then
    alter table SJ_XYLF
       delete foreign key FK_SJ_XYLF_REFERENCE_SJ_JTZL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_YFLF_OIA_____3_SJ_JTZL') then
    alter table SJ_YFLF
       delete foreign key FK_SJ_YFLF_OIA_____3_SJ_JTZL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_YW_REF_1281_SJ_YFLF') then
    alter table SJ_YW
       delete foreign key FK_SJ_YW_REF_1281_SJ_YFLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_YWCF_REFERENCE_SJ_XYLF') then
    alter table SJ_YWCF
       delete foreign key FK_SJ_YWCF_REFERENCE_SJ_XYLF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_ZH_REFERENCE_SJ_CXLC') then
    alter table SJ_ZH
       delete foreign key FK_SJ_ZH_REFERENCE_SJ_CXLC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_ZHZZ_REFERENCE_SJ_ZH') then
    alter table SJ_ZHZZGL
       delete foreign key FK_SJ_ZHZZ_REFERENCE_SJ_ZH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_ZHZZ_REFERENCE_SJ_LCZZ') then
    alter table SJ_ZHZZGL
       delete foreign key FK_SJ_ZHZZ_REFERENCE_SJ_LCZZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_ZJLF_OIA______SJ_JTZL') then
    alter table SJ_ZJLF
       delete foreign key FK_SJ_ZJLF_OIA______SJ_JTZL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_ZLGC_REFERENCE_SJ_JTZL') then
    alter table SJ_ZLGCDXGL
       delete foreign key FK_SJ_ZLGC_REFERENCE_SJ_JTZL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SJ_ZLGC_REFERENCE_SJ_CXLC') then
    alter table SJ_ZLGCDXGL
       delete foreign key FK_SJ_ZLGC_REFERENCE_SJ_CXLC
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='ANMLF_PK' and T.table_name='SJ_AMLF') then
   drop index SJ_AMLF.ANMLF_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='JUTIZLGC_PK' and T.table_name='SJ_JTZLGC') then
   drop index SJ_JTZLGC.JUTIZLGC_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='LINCYJ2_PK' and T.table_name='SJ_LCYJ') then
   drop index SJ_LCYJ.LINCYJ2_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='QITLF_PK' and T.table_name='SJ_QTLF') then
   drop index SJ_QTLF.QITLF_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='YAOWLF_PK' and T.table_name='SJ_YFLF') then
   drop index SJ_YFLF.YAOWLF_PK
end if;

if exists(select 1 from sys.sysindex I, sys.systable T
 where I.table_id=T.table_id and I.index_name='ZHENJLF_PK' and T.table_name='SJ_ZJLF') then
   drop index SJ_ZJLF.ZHENJLF_PK
end if;

if exists(select 1 from sys.systable where table_name='SJ_AMLF' and table_type='BASE') then
    drop table SJ_AMLF
end if;

if exists(select 1 from sys.systable where table_name='SJ_CXLCYJDX' and table_type='BASE') then
    drop table SJ_CXLCYJDX
end if;

if exists(select 1 from sys.systable where table_name='SJ_DZZ' and table_type='BASE') then
    drop table SJ_DZZ
end if;

if exists(select 1 from sys.systable where table_name='SJ_JB' and table_type='BASE') then
    drop table SJ_JB
end if;

if exists(select 1 from sys.systable where table_name='SJ_JBZHGL' and table_type='BASE') then
    drop table SJ_JBZHGL
end if;

if exists(select 1 from sys.systable where table_name='SJ_JBZZGL' and table_type='BASE') then
    drop table SJ_JBZZGL
end if;

if exists(select 1 from sys.systable where table_name='SJ_JTZLGC' and table_type='BASE') then
    drop table SJ_JTZLGC
end if;

if exists(select 1 from sys.systable where table_name='SJ_LCYJ' and table_type='BASE') then
    drop table SJ_LCYJ
end if;

if exists(select 1 from sys.systable where table_name='SJ_LCZL' and table_type='BASE') then
    drop table SJ_LCZL
end if;

if exists(select 1 from sys.systable where table_name='SJ_LCZZ' and table_type='BASE') then
    drop table SJ_LCZZ
end if;

if exists(select 1 from sys.systable where table_name='SJ_QTLF' and table_type='BASE') then
    drop table SJ_QTLF
end if;

if exists(select 1 from sys.systable where table_name='SJ_SYJC' and table_type='BASE') then
    drop table SJ_SYJC
end if;

if exists(select 1 from sys.systable where table_name='SJ_XW' and table_type='BASE') then
    drop table SJ_XW
end if;

if exists(select 1 from sys.systable where table_name='SJ_XYLF' and table_type='BASE') then
    drop table SJ_XYLF
end if;

if exists(select 1 from sys.systable where table_name='SJ_YFLF' and table_type='BASE') then
    drop table SJ_YFLF
end if;

if exists(select 1 from sys.systable where table_name='SJ_YW' and table_type='BASE') then
    drop table SJ_YW
end if;

if exists(select 1 from sys.systable where table_name='SJ_YWCF' and table_type='BASE') then
    drop table SJ_YWCF
end if;

if exists(select 1 from sys.systable where table_name='SJ_ZH' and table_type='BASE') then
    drop table SJ_ZH
end if;

if exists(select 1 from sys.systable where table_name='SJ_ZHZZGL' and table_type='BASE') then
    drop table SJ_ZHZZGL
end if;

if exists(select 1 from sys.systable where table_name='SJ_ZJLF' and table_type='BASE') then
    drop table SJ_ZJLF
end if;

if exists(select 1 from sys.systable where table_name='SJ_ZLGCDXGL' and table_type='BASE') then
    drop table SJ_ZLGCDXGL
end if;

/*==============================================================*/
/* Table: SJ_AMLF                                              */
/*==============================================================*/
create table SJ_AMLF 
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
create unique index ANMLF_PK on SJ_AMLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: SJ_CXLCYJDX                                          */
/*==============================================================*/
create table SJ_CXLCYJDX 
(
    CXDX_ID              integer                        not null,
    LCYJ_ID              integer,
    BZZLX                smallint,
    BZMC                 varchar2(2000),
    primary key (CXDX_ID)
);

/*==============================================================*/
/* Table: SJ_DZZ                                               */
/*==============================================================*/
create table SJ_DZZ 
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
/* Table: SJ_JB                                                */
/*==============================================================*/
create table SJ_JB 
(
    JB_ID                integer                        not null,
    JBMC                 VARCHAR2(2000),
    YFB                  VARCHAR2(2000),
    BFZ                  VARCHAR2(2000),
    primary key (JB_ID)
);

/*==============================================================*/
/* Table: SJ_JBZHGL                                            */
/*==============================================================*/
create table SJ_JBZHGL 
(
    JB_ID                integer,
    ZH_ID                integer
);

/*==============================================================*/
/* Table: SJ_JBZZGL                                            */
/*==============================================================*/
create table SJ_JBZZGL 
(
    ZZ_ID                integer                        not null,
    JB_ID                integer
);

/*==============================================================*/
/* Table: SJ_JTZLGC                                            */
/*==============================================================*/
create table SJ_JTZLGC 
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
create unique index JUTIZLGC_PK on SJ_JTZLGC (
JTZLGC_ID ASC
);

/*==============================================================*/
/* Table: SJ_LCYJ                                              */
/*==============================================================*/
create table SJ_LCYJ 
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
    GCZXB                char(1),
    primary key (LCYJ_ID)
);

/*==============================================================*/
/* Index: LINCYJ2_PK                                            */
/*==============================================================*/
create unique index LINCYJ2_PK on SJ_LCYJ (
LCYJ_ID ASC
);

/*==============================================================*/
/* Table: SJ_LCZL                                              */
/*==============================================================*/
create table SJ_LCZL 
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
/* Table: SJ_LCZZ                                              */
/*==============================================================*/
create table SJ_LCZZ 
(
    ZZ_ID                integer                        not null,
    ZZMC                 VARCHAR2(2000),
    primary key (ZZ_ID)
);

/*==============================================================*/
/* Table: SJ_QTLF                                              */
/*==============================================================*/
create table SJ_QTLF 
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
create unique index QITLF_PK on SJ_QTLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: SJ_SYJC                                              */
/*==============================================================*/
create table SJ_SYJC 
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
/* Table: SJ_XW                                                */
/*==============================================================*/
create table SJ_XW 
(
    XW_ID                integer                        not null,
    ZLGC_ID              integer,
    XWMC                 VARCHAR2(2000),
    XWLX                 smallint,
    primary key (XW_ID)
);

/*==============================================================*/
/* Table: SJ_XYLF                                              */
/*==============================================================*/
create table SJ_XYLF 
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
/* Table: SJ_YFLF                                              */
/*==============================================================*/
create table SJ_YFLF 
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
create unique index YAOWLF_PK on SJ_YFLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: SJ_YW                                                */
/*==============================================================*/
create table SJ_YW 
(
    ZLGC_ID              integer,
    YW_ID                integer                        not null,
    YWMC                 VARCHAR2(2000),
    YWJL                 VARCHAR2(2000),
    JLDW                 VARCHAR2(2000),
    primary key (YW_ID)
);

/*==============================================================*/
/* Table: SJ_YWCF                                              */
/*==============================================================*/
create table SJ_YWCF 
(
    ZLGC_ID              integer,
    YWCF_ID              integer                        not null,
    YWCFMC               VARCHAR2(2000),
    YWCFJL               VARCHAR2(2000),
    JLDW                 VARCHAR2(2000),
    primary key (YWCF_ID)
);

/*==============================================================*/
/* Table: SJ_ZH                                                */
/*==============================================================*/
create table SJ_ZH 
(
    ZH_ID                integer                        not null,
    ZHMC                 VARCHAR2(2000),
    primary key (ZH_ID)
);

/*==============================================================*/
/* Table: SJ_ZHZZGL                                            */
/*==============================================================*/
create table SJ_ZHZZGL 
(
    ZZ_ID                integer                        not null,
    ZH_ID                integer
);

/*==============================================================*/
/* Table: SJ_ZJLF                                              */
/*==============================================================*/
create table SJ_ZJLF 
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
create unique index ZHENJLF_PK on SJ_ZJLF (
ZLGC_ID ASC
);

/*==============================================================*/
/* Table: SJ_ZLGCDXGL                                          */
/*==============================================================*/
create table SJ_ZLGCDXGL 
(
    JTZLGC_ID            integer,
    CXDX_ID              integer
);

alter table SJ_AMLF
   add foreign key FK_SJ_AMLF_OIA_____4_SJ_JTZL (ZLGC_ID)
      references SJ_JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_CXLCYJDX
   add foreign key FK_SJ_CXLC_REF_657_SJ_LCYJ (LCYJ_ID)
      references SJ_LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table SJ_DZZ
   add foreign key FK_SJ_DZZ_REFERENCE_SJ_LCYJ (LCYJ_ID)
      references SJ_LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table SJ_JB
   add foreign key FK_SJ_JB_REFERENCE_SJ_CXLC (JB_ID)
      references SJ_CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

alter table SJ_JBZHGL
   add foreign key FK_SJ_JBZH_REFERENCE_SJ_JB (JB_ID)
      references SJ_JB (JB_ID)
      on update restrict
      on delete restrict;

alter table SJ_JBZHGL
   add foreign key FK_SJ_JBZH_REFERENCE_SJ_ZH (ZH_ID)
      references SJ_ZH (ZH_ID)
      on update restrict
      on delete restrict;

alter table SJ_JBZZGL
   add foreign key FK_SJ_JBZZ_REFERENCE_SJ_JB (JB_ID)
      references SJ_JB (JB_ID)
      on update restrict
      on delete restrict;

alter table SJ_JBZZGL
   add foreign key FK_SJ_JBZZ_REFERENCE_SJ_LCZZ (ZZ_ID)
      references SJ_LCZZ (ZZ_ID)
      on update restrict
      on delete restrict;

alter table SJ_JTZLGC
   add foreign key FK_SJ_JTZL_REFERENCE_SJ_LCYJ (LCYJ_ID)
      references SJ_LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table SJ_LCZL
   add foreign key FK_SJ_LCZL_REF_1231_SJ_LCYJ (LCYJ_ID)
      references SJ_LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table SJ_LCZZ
   add foreign key FK_SJ_LCZZ_REFERENCE_SJ_CXLC (ZZ_ID)
      references SJ_CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

alter table SJ_QTLF
   add foreign key FK_SJ_QTLF_OIA_____2_SJ_JTZL (ZLGC_ID)
      references SJ_JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_SYJC
   add foreign key FK_SJ_SYJC_REF_1224_SJ_LCYJ (LCYJ_ID)
      references SJ_LCYJ (LCYJ_ID)
      on update restrict
      on delete restrict;

alter table SJ_XW
   add foreign key FK_SJ_XW_REFERENCE_SJ_ZJLF (ZLGC_ID)
      references SJ_ZJLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_XW
   add foreign key FK_SJ_XW_REFERENCE_SJ_AMLF (ZLGC_ID)
      references SJ_AMLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_XYLF
   add foreign key FK_SJ_XYLF_REFERENCE_SJ_JTZL (ZLGC_ID)
      references SJ_JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_YFLF
   add foreign key FK_SJ_YFLF_OIA_____3_SJ_JTZL (ZLGC_ID)
      references SJ_JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_YW
   add foreign key FK_SJ_YW_REF_1281_SJ_YFLF (ZLGC_ID)
      references SJ_YFLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_YWCF
   add foreign key FK_SJ_YWCF_REFERENCE_SJ_XYLF (ZLGC_ID)
      references SJ_XYLF (ZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_ZH
   add foreign key FK_SJ_ZH_REFERENCE_SJ_CXLC (ZH_ID)
      references SJ_CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

alter table SJ_ZHZZGL
   add foreign key FK_SJ_ZHZZ_REFERENCE_SJ_ZH (ZH_ID)
      references SJ_ZH (ZH_ID)
      on update restrict
      on delete restrict;

alter table SJ_ZHZZGL
   add foreign key FK_SJ_ZHZZ_REFERENCE_SJ_LCZZ (ZZ_ID)
      references SJ_LCZZ (ZZ_ID)
      on update restrict
      on delete restrict;

alter table SJ_ZJLF
   add foreign key FK_SJ_ZJLF_OIA______SJ_JTZL (ZLGC_ID)
      references SJ_JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_ZLGCDXGL
   add foreign key FK_SJ_ZLGC_REFERENCE_SJ_JTZL (JTZLGC_ID)
      references SJ_JTZLGC (JTZLGC_ID)
      on update restrict
      on delete restrict;

alter table SJ_ZLGCDXGL
   add foreign key FK_SJ_ZLGC_REFERENCE_SJ_CXLC (CXDX_ID)
      references SJ_CXLCYJDX (CXDX_ID)
      on update restrict
      on delete restrict;

