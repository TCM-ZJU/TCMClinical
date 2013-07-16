drop sequence seq_SJ_CXLCYJDX
/
create sequence seq_SJ_CXLCYJDX
/
create or replace trigger SJ_CXLCYJDX_insert
	before
	insert
	on SJ_CXLCYJDX
	for each row
	when (new.CXDX_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_CXLCYJDX.nextval into v_id from dual;
		:new.CXDX_ID:=v_id;
	end
;
/
drop sequence seq_SJ_JTZLGC
/
create sequence seq_SJ_JTZLGC
/
create or replace trigger SJ_JTZLGC_insert
	before
	insert
	on SJ_JTZLGC
	for each row
	when (new.JTZLGC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_JTZLGC.nextval into v_id from dual;
		:new.JTZLGC_ID:=v_id;
	end
;
/
drop sequence seq_SJ_LCZL
/
create sequence seq_SJ_LCZL
/
create or replace trigger SJ_LCZL_insert
	before
	insert
	on SJ_LCZL
	for each row
	when (new.LCZL_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_LCZL.nextval into v_id from dual;
		:new.LCZL_ID:=v_id;
	end
;
/
drop sequence seq_SJ_SYJC
/
create sequence seq_SJ_SYJC
/
create or replace trigger SJ_SYJC_insert
	before
	insert
	on SJ_SYJC
	for each row
	when (new.SYJC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_SYJC.nextval into v_id from dual;
		:new.SYJC_ID:=v_id;
	end
;
/

drop sequence seq_SJ_LCYJ
/
create sequence seq_SJ_LCYJ
/
create or replace trigger SJ_LCYJ_insert
	before
	insert
	on SJ_LCYJ
	for each row
	when (new.LCYJ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_LCYJ.nextval into v_id from dual;
		:new.LCYJ_ID:=v_id;
	end
;
/
drop sequence seq_SJ_DZZ
/
create sequence seq_SJ_DZZ
/
create or replace trigger SJ_DZZ_insert
	before
	insert
	on SJ_DZZ
	for each row
	when (new.DZZ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_DZZ.nextval into v_id from dual;
		:new.DZZ_ID:=v_id;
	end
;
/
drop sequence seq_SJ_XW
/
create sequence seq_SJ_XW
/
create or replace trigger SJ_XW_insert
	before
	insert
	on SJ_XW
	for each row
	when (new.XW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_XW.nextval into v_id from dual;
		:new.XW_ID:=v_id;
	end
;
/
drop sequence seq_SJ_YW
/
create sequence seq_SJ_YW
/
create or replace trigger SJ_YW_insert
	before
	insert
	on SJ_YW
	for each row
	when (new.YW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_YW.nextval into v_id from dual;
		:new.YW_ID:=v_id;
	end
;
/
drop sequence seq_SJ_YWCF
/
create sequence seq_SJ_YWCF
/
create or replace trigger SJ_YWCF_insert
	before
	insert
	on SJ_YWCF
	for each row
	when (new.YWCF_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_SJ_YWCF.nextval into v_id from dual;
		:new.YWCF_ID:=v_id;
	end
;
/
