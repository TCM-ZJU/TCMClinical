drop sequence seq_CXLCYJDX
/
create sequence seq_CXLCYJDX
/
create or replace trigger CXLCYJDX_insert
	before
	insert
	on CXLCYJDX
	for each row
	when (new.CXDX_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_CXLCYJDX.nextval into v_id from dual;
		:new.CXDX_ID:=v_id;
	end
;
/
drop sequence seq_JTZLGC
/
create sequence seq_JTZLGC
/
create or replace trigger JTZLGC_insert
	before
	insert
	on JTZLGC
	for each row
	when (new.JTZLGC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JTZLGC.nextval into v_id from dual;
		:new.JTZLGC_ID:=v_id;
	end
;
/
drop sequence seq_LCZL
/
create sequence seq_LCZL
/
create or replace trigger LCZL_insert
	before
	insert
	on LCZL
	for each row
	when (new.LCZL_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_LCZL.nextval into v_id from dual;
		:new.LCZL_ID:=v_id;
	end
;
/
drop sequence seq_SYJC
/
create sequence seq_SYJC
/
create or replace trigger SYJC_insert
	before
	insert
	on SYJC
	for each row
	when (new.SYJC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_C_SYJC.nextval into v_id from dual;
		:new.SYJC_ID:=v_id;
	end
;
/

drop sequence seq_LCYJ
/
create sequence seq_LCYJ
/
create or replace trigger LCYJ_insert
	before
	insert
	on LCYJ
	for each row
	when (new.LCYJ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_LCYJ.nextval into v_id from dual;
		:new.LCYJ_ID:=v_id;
	end
;
/
drop sequence seq_DZZ
/
create sequence seq_DZZ
/
create or replace trigger DZZ_insert
	before
	insert
	on DZZ
	for each row
	when (new.DZZ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_DZZ.nextval into v_id from dual;
		:new.DZZ_ID:=v_id;
	end
;
/
drop sequence seq_XW
/
create sequence seq_XW
/
create or replace trigger XW_insert
	before
	insert
	on XW
	for each row
	when (new.XW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_XW.nextval into v_id from dual;
		:new.XW_ID:=v_id;
	end
;
/
drop sequence seq_YW
/
create sequence seq_YW
/
create or replace trigger YW_insert
	before
	insert
	on YW
	for each row
	when (new.YW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_YW.nextval into v_id from dual;
		:new.YW_ID:=v_id;
	end
;
/
drop sequence seq_YWCF
/
create sequence seq_YWCF
/
create or replace trigger YWCF_insert
	before
	insert
	on YWCF
	for each row
	when (new.YWCF_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_YWCF.nextval into v_id from dual;
		:new.YWCF_ID:=v_id;
	end
;
/
