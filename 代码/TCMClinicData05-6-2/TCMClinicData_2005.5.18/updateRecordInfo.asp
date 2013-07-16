<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>更新记录状态信息</title>
</head>

<body>
<%
	dim ID
	ID=request("YJID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	strSQL="select LCYJMC,LRRY,JGDW,YW_ID,ZTBZ from C_LCYJ where ID="&ID
	
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
	dim LCWT
	dim LRuser
	dim LRUnit
	dim YWID
	dim ZTBZ
	
	LCWT=oraRS.fields("LCYJMC").value
	LRuser=request.form("txtLRRY")
	LRUnit=oraRS.fields("JGDW").value
	YWID=oraRS.fields("YW_ID").value
	ZTBZ=request.form("txtGDZT")&request.form("txtZYZT")
	
	oraRS.Edit
	oraRS.fields("LRRY").value=LRuser
	oraRS.fields("ZTBZ").value=ZTBZ
	oraRS.Update
	
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
	response.Redirect("recordInfo.asp?YJID="&ID&"&YWID="&YWID&"&BJZT="&BJZT&"&JGDW="&LRUnit&"&LCWT="&LCWT&"&LRRY="&LRuser&"&ZTBZ="&ZTBZ)
	
%>
</body>
</html>
