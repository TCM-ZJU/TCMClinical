<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>更新治疗步骤信息</title>
</head>

<body>
<%
	dim ID
	ID=request("ID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	
	'药方疗法
	if request("Type")=0 then
		strSQL="select * from C_YFLF where ID="&ID
		set oraRS=oraDB.CreateDynaset(strSQL,0)
		oraRS.Edit
		oraRS.fields("BZMC").value=request.form("txtBZMC")
		oraRS.fields("ZLBZ").value=request.form("txtZLBZ")
		oraRS.fields("GYFS").value=request.form("txtGYFS")
		oraRS.fields("YFMC").value=request.form("txtYFMC")
		oraRS.fields("YFJX").value=request.form("txtYFJX")
		oraRS.fields("ZZ").value=request.form("txtZZ")
		oraRS.fields("BZ").value=request.form("txtBZ")
		oraRS.fields("YWXX").value=request.form("txtYWXX")
		oraRS.fields("BJZT").value=BJZT
		oraRS.Update
	end if
	'针灸疗法,按摩疗法
	if request("Type")=1 or request("Type")=2 then
		strSQL="select * from C_ZTLF where ID="&ID
		set oraRS=oraDB.CreateDynaset(strSQL,0)
		oraRS.Edit
		oraRS.fields("BZMC").value=request.form("txtBZMC")
		oraRS.fields("ZLBZ").value=request.form("txtZLBZ")
		oraRS.fields("XWXX").value=request.form("txtXWXX")
		oraRS.fields("FF").value=request.form("txtFF")
		oraRS.fields("QXSJ").value=request.form("txtQXSJ")
		oraRS.fields("SF").value=request.form("txtSF")
		oraRS.fields("CS").value=request.form("txtCS")
		oraRS.fields("JL").value=request.form("txtJL")
		oraRS.fields("ZZ").value=request.form("txtZZ")
		oraRS.fields("BJZT").value=BJZT
		oraRS.Update
	end if
	'西药疗法
	if request("Type")=3 then
		strSQL="select * from C_XYLF where ID="&ID
		set oraRS=oraDB.CreateDynaset(strSQL,0)
		oraRS.Edit
		oraRS.fields("BZMC").value=request.form("txtBZMC")
		oraRS.fields("ZLBZ").value=request.form("txtZLBZ")
		oraRS.fields("GYFS").value=request.form("txtGYFS")
		oraRS.fields("YWMC").value=request.form("txtYWMC")
		oraRS.fields("YWJX").value=request.form("txtYWJX")
		oraRS.fields("GYSJ").value=request.form("txtGYSJ")
		oraRS.fields("ZLYZ").value=request.form("txtZLYZ")
		oraRS.fields("BZ").value=request.form("txtBZ")
		oraRS.fields("YWCFXX").value=request.form("txtYWCFXX")
		oraRS.fields("BJZT").value=BJZT
		oraRS.Update
	end if
	'其它疗法
	if request("Type")=4 then
		strSQL="select * from C_QTLF where ID="&ID
		set oraRS=oraDB.CreateDynaset(strSQL,0)
		oraRS.Edit
		oraRS.fields("BZMC").value=request.form("txtBZMC")
		oraRS.fields("ZLBZ").value=request.form("txtZLBZ")
		oraRS.fields("FFMC").value=request.form("txtFFMC")
		oraRS.fields("FFMS").value=request.form("txtFFMS")
		oraRS.fields("BJZT").value=BJZT
		oraRS.Update
	end if
	
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
	response.Redirect("cureInfo.asp?YWID="&request("YWID")&"&BJZT="&BJZT)
%>
</body>
</html>
