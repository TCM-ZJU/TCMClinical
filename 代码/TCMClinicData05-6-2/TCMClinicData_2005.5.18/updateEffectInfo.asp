<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>更新疗效记录</title>
</head>

<body>
<%
	dim ID
	ID=request("ID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	strSQL="select * from C_SYJC where ID="&ID
	
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
	oraRS.Edit
	oraRS.fields("JCXM").value=request.form("txtJCXM")
	oraRS.fields("JCSJ").value=request.form("txtJCSJ")
	oraRS.fields("BHZB").value=request.form("txtBHZB")
	oraRS.fields("GCFZ").value=request.form("txtGCFZ")
	oraRS.fields("BZ").value=request.Form("txtBZ")
	oraRS.fields("BJZT").value=BJZT
	
	oraRS.Update
	
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
	response.Redirect("effectInfo.asp?YWID="&request("YWID")&"&BJZT="&BJZT)
%>
</body>
</html>
