drop sequence seq_HX_CXLCYJDX
/
create sequence seq_HX_CXLCYJDX
/
create or replace trigger HX_CXLCYJDX_insert
	before
	insert
	on HX_CXLCYJDX
	for each row
	when (new.CXDX_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_CXLCYJDX.nextval into v_id from dual;
		:new.CXDX_ID:=v_id;
	end
;
/
drop sequence seq_HX_JTZLGC
/
create sequence seq_HX_JTZLGC
/
create or replace trigger HX_JTZLGC_insert
	before
	insert
	on HX_JTZLGC
	for each row
	when (new.JTZLGC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_JTZLGC.nextval into v_id from dual;
		:new.JTZLGC_ID:=v_id;
	end
;
/
drop sequence seq_HX_LCZL
/
create sequence seq_HX_LCZL
/
create or replace trigger HX_LCZL_insert
	before
	insert
	on HX_LCZL
	for each row
	when (new.LCZL_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_LCZL.nextval into v_id from dual;
		:new.LCZL_ID:=v_id;
	end
;
/
drop sequence seq_HX_SYJC
/
create sequence seq_HX_SYJC
/
create or replace trigger HX_SYJC_insert
	before
	insert
	on HX_SYJC
	for each row
	when (new.SYJC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_SYJC.nextval into v_id from dual;
		:new.SYJC_ID:=v_id;
	end
;
/

drop sequence seq_HX_LCYJ
/
create sequence seq_HX_LCYJ
/
create or replace trigger HX_LCYJ_insert
	before
	insert
	on HX_LCYJ
	for each row
	when (new.LCYJ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_LCYJ.nextval into v_id from dual;
		:new.LCYJ_ID:=v_id;
	end
;
/
drop sequence seq_HX_DZZ
/
create sequence seq_HX_DZZ
/
create or replace trigger HX_DZZ_insert
	before
	insert
	on HX_DZZ
	for each row
	when (new.DZZ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_DZZ.nextval into v_id from dual;
		:new.DZZ_ID:=v_id;
	end
;
/
drop sequence seq_HX_XW
/
create sequence seq_HX_XW
/
create or replace trigger HX_XW_insert
	before
	insert
	on HX_XW
	for each row
	when (new.XW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_XW.nextval into v_id from dual;
		:new.XW_ID:=v_id;
	end
;
/
drop sequence seq_HX_YW
/
create sequence seq_HX_YW
/
create or replace trigger HX_YW_insert
	before
	insert
	on HX_YW
	for each row
	when (new.YW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_YW.nextval into v_id from dual;
		:new.YW_ID:=v_id;
	end
;
/
drop sequence seq_HX_YWCF
/
create sequence seq_HX_YWCF
/
create or replace trigger HX_YWCF_insert
	before
	insert
	on HX_YWCF
	for each row
	when (new.YWCF_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_HX_YWCF.nextval into v_id from dual;
		:new.YWCF_ID:=v_id;
	end
;
/
