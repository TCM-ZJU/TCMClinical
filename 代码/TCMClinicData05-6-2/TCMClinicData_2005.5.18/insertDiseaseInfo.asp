<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>添加病证症记录</title>
</head>

<body>
<%
	dim YWID
	YWID=request("YWID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	strSQL="insert into C_BZZ( ID,JBMC,YFB,BFZ,ZHMC,ZZMC,BZ,YW_ID,BJZT ) values"
	strSQL=strSQL&"( -1,'"&request.form("txtJBMC")&"','"&request.Form("txtYFB")&"','"&request.Form("txtBFZ")&"','"&request.Form("txtZHMC")&"','"&request.Form("txtZZMC")&"','"&request.Form("txtBZ")&"',"&YWID&","&BJZT&")"
	response.Write(strSQL)
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	
	oraDB.BeginTrans
	oraDB.ExecuteSQL(strSQL)
	oraDB.CommitTrans
	
	oraDB.close
	set oraDB=nothing
	response.Redirect("diseaseInfo.asp?YWID="&YWID&"&BJZT="&BJZT)
%>
</body>
</html>
