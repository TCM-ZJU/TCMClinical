<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>更新病证症记录</title>
</head>

<body>
<%
	dim ID
	ID=request("ID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	strSQL="select * from C_LCZL where ID="&ID
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
	oraRS.Edit
	oraRS.fields("BZZMC").value=request.form("txtBZZMC")
	oraRS.fields("ZDZBFL").value=request.form("txtZDZBFL")
	oraRS.fields("ZBQZ").value=request.form("txtZBQZ")
	oraRS.fields("ZBXM").value=request.form("txtZBXM")
	oraRS.fields("LXBZLY").value=request.form("txtLXBZLY")
	oraRS.fields("LXBZ").value=request.form("txtLXBZ")
	oraRS.fields("ZDBZLY").value=request.form("txtZDBZLY")
	oraRS.fields("ZDYQ").value=request.form("txtZDYQ")
	oraRS.fields("ZYZDFF").value=request.form("txtZYZDFF")
	oraRS.fields("ZYXL").value=request.form("txtZYXL")
	oraRS.fields("BZ").value=request.form("txtBZ")
	oraRS.fields("BJZT").value=BJZT
	
	oraRS.Update
	
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
	response.Redirect("diagnoseInfo.asp?YWID="&request("YWID")&"&BJZT="&BJZT)
%>
</body>
</html>
