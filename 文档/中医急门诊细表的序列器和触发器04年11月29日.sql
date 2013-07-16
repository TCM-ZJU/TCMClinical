drop sequence seq_JMZ_CXLCYJDX
/
create sequence seq_JMZ_CXLCYJDX
/
create or replace trigger JMZ_CXLCYJDX_insert
	before
	insert
	on JMZ_CXLCYJDX
	for each row
	when (new.CXDX_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_CXLCYJDX.nextval into v_id from dual;
		:new.CXDX_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_JTZLGC
/
create sequence seq_JMZ_JTZLGC
/
create or replace trigger JMZ_JTZLGC_insert
	before
	insert
	on JMZ_JTZLGC
	for each row
	when (new.JTZLGC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_JTZLGC.nextval into v_id from dual;
		:new.JTZLGC_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_LCZL
/
create sequence seq_JMZ_LCZL
/
create or replace trigger JMZ_LCZL_insert
	before
	insert
	on JMZ_LCZL
	for each row
	when (new.LCZL_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_LCZL.nextval into v_id from dual;
		:new.LCZL_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_SYJC
/
create sequence seq_JMZ_SYJC
/
create or replace trigger JMZ_SYJC_insert
	before
	insert
	on JMZ_SYJC
	for each row
	when (new.SYJC_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_SYJC.nextval into v_id from dual;
		:new.SYJC_ID:=v_id;
	end
;
/

drop sequence seq_JMZ_LCYJ
/
create sequence seq_JMZ_LCYJ
/
create or replace trigger JMZ_LCYJ_insert
	before
	insert
	on JMZ_LCYJ
	for each row
	when (new.LCYJ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_LCYJ.nextval into v_id from dual;
		:new.LCYJ_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_DZZ
/
create sequence seq_JMZ_DZZ
/
create or replace trigger JMZ_DZZ_insert
	before
	insert
	on JMZ_DZZ
	for each row
	when (new.DZZ_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_DZZ.nextval into v_id from dual;
		:new.DZZ_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_XW
/
create sequence seq_JMZ_XW
/
create or replace trigger JMZ_XW_insert
	before
	insert
	on JMZ_XW
	for each row
	when (new.XW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_XW.nextval into v_id from dual;
		:new.XW_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_YW
/
create sequence seq_JMZ_YW
/
create or replace trigger JMZ_YW_insert
	before
	insert
	on JMZ_YW
	for each row
	when (new.YW_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_YW.nextval into v_id from dual;
		:new.YW_ID:=v_id;
	end
;
/
drop sequence seq_JMZ_YWCF
/
create sequence seq_JMZ_YWCF
/
create or replace trigger JMZ_YWCF_insert
	before
	insert
	on JMZ_YWCF
	for each row
	when (new.YWCF_ID=-1)

	declare
		v_id number(38);

	begin
		select seq_JMZ_YWCF.nextval into v_id from dual;
		:new.YWCF_ID:=v_id;
	end
;
/
