<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>添加诊疗记录</title>
</head>

<body>
<%
	dim YWID
	YWID=request("YWID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	strSQL="insert into C_LCZL( ID,BZZMC,ZDZBFL,ZBQZ,ZBXM,LXBZLY,LXBZ,ZDBZLY,ZDYQ,ZYZDFF,ZYXL,BZ,YW_ID,BJZT ) values"
	strSQL=strSQL&"( -1,'"&request.form("txtBZZMC")&"','"&request.Form("txtZDZBFL")&"','"&request.Form("txtZBQZ")&"','"&request.Form("txtZBXM")&"','"&request.Form("txtLXBZLY")&"','"&request.Form("txtLXBZ")&"','"&request.Form("txtZDBZLY")&"','"&request.Form("txtZDYQ")&"','"&request.Form("txtZYZDFF")&"','"&request.Form("txtZYXL")&"','"&request.Form("txtBZ")&"',"&YWID&","&BJZT&")"
	response.Write(strSQL)
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	
	oraDB.BeginTrans
	oraDB.ExecuteSQL(strSQL)
	oraDB.CommitTrans
	
	oraDB.close
	set oraDB=nothing
	response.Redirect("diagnoseInfo.asp?YWID="&YWID&"&BJZT="&BJZT)
%>
</body>
</html>
