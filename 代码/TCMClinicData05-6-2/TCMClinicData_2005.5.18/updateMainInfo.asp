<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>更新主表记录</title>
</head>

<body>
<%
	dim ID
	ID=request("YJID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	strSQL="select * from C_LCYJ where ID="&ID
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
	'更新临床主表信息

	
	oraRS.Edit
'	oraRS.fields("LCYJMC").value=request.form("txtYJMC")
	oraRS.fields("BLCJSJ").value=request.form("txtCJSJ")
	oraRS.fields("GCZZLS").value=request.form("txtZLS")
	oraRS.fields("MGCLS").value=request.form("txtMLS")
	oraRS.fields("FGCLS").value=request.form("txtFLS")
	oraRS.fields("NLZ").value=request.form("txtNLZ")
	oraRS.fields("YJFF").value=request.form("txtYJFF")
	oraRS.fields("YJFZ").value=request.form("txtYJFZ")
	oraRS.fields("JG").value=request.form("txtJG")
	oraRS.fields("LCYJDW").value=request.form("txtYJDW")
	oraRS.fields("BZ").value=request.form("txtBZ")
	if request.form("chkUrgency")=1 then
		oraRS.fields("J_BY").value=request.form("txtBY")
		oraRS.fields("J_CRY").value=request.form("txtCRY")
		oraRS.fields("J_CRTJ").value=request.form("txtCRTJ")
		oraRS.fields("J_XGYS").value=request.form("txtXGYS")
		oraRS.fields("J_DQ").value=request.form("txtDQ")
	end if
	if request.form("chkDZZ")=1 then
		oraRS.fields("DZZXX").value=request.form("txtDZZXX")
	end if
	oraRS.fields("BJZT").value=BJZT
	oraRS.Update
	
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
	response.Redirect("mainInfo.asp?YJID="&ID&"&YWID="&request("YWID")&"&BJZT="&BJZT)
%>
</body>
</html>
