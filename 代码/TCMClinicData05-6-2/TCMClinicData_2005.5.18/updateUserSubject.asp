<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>更新用户专题权限</title>
<link href="common.css" rel="stylesheet" type="text/css">
</head>

<body>
<%
	dim user
	user=Request.QueryString("Name")
	
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	
	oraDB.BeginTrans
	oraDB.ExecuteSQL("delete from CUSER_LC_SUBJECT where CUSER='"&user&"'")
	
	if request.form("chkJMZ")=1 then
		oraDB.ExecuteSQL("insert into CUSER_LC_SUBJECT(CUSER,SUBJECT) values('"&user&"','急门诊专题')")
	end if
	if request.form("chkHX")=1 then
		oraDB.ExecuteSQL("insert into CUSER_LC_SUBJECT(CUSER,SUBJECT) values('"&user&"','呼吸专题')")
	end if
	if request.form("chkSJ")=1 then
		oraDB.ExecuteSQL("insert into CUSER_LC_SUBJECT(CUSER,SUBJECT) values('"&user&"','神经专题')")
	end if
	if request.form("chkLC")=1 then
		oraDB.ExecuteSQL("insert into CUSER_LC_SUBJECT(CUSER,SUBJECT) values('"&user&"','临床专题')")
	end if
	if request.form("chkCRB")=1 then
		oraDB.ExecuteSQL("insert into CUSER_LC_SUBJECT(CUSER,SUBJECT) values('"&user&"','传染病专题')")
	end if
	
	if Err.Number=0 then
		oraDB.CommitTrans
	else
		oraDB.Rollback
	end if
	
	oraDB.close
	set oraDB=nothing
	response.Redirect("UserDetail.asp?Name="&user&"&Status=0")	
%>
</body>
</html>
