<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>插入治疗步骤信息</title>
</head>

<body>
<%
	dim YWID
	YWID=request("YWID")
	dim BJZT
	BJZT=request("BJZT")
	
	dim strSQL
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	
	dim colfield
	dim colvalue
	'药方疗法
	if request.form("ZLLX")=0 then
		colfield=" ( ID,ZLBZ,GYFS,BZMC,YFMC,YFJX,ZZ,BZ,YWXX,YW_ID,BJZT) "
		colvalue=" ( -1,"&request.form("txtZLBZ")&",'"&request.form("txtGYFS")&"'"
		colvalue=colvalue&",'"&request.form("txtBZMC")&"'"
		colvalue=colvalue&",'"&request.form("txtYFMC")&"'"
		colvalue=colvalue&",'"&request.form("txtYFJX")&"'"
		colvalue=colvalue&",'"&request.form("txtZZ")&"'"
		colvalue=colvalue&",'"&request.form("txtBZ")&"'"
		colvalue=colvalue&",'"&request.form("txtYWXX")&"',"&YWID&","&BJZT&") "
		strSQL="insert into C_YFLF"&colfield&" values"&colvalue
	end if
	'针灸疗法
	if request.form("ZLLX")=1 then
		colfield=" ( ID,ZLBZ,LB,XWXX,BZMC,FF,QXSJ,SF,CS,JL,ZZ,YW_ID,BJZT) "
		colvalue=" ( -1,"&request.form("txtZLBZ")&",0,'"&request.form("txtXWXX")&"'"
		colvalue=colvalue&",'"&request.form("txtBZMC")&"'"
		colvalue=colvalue&",'"&request.form("txtFF")&"'"
		colvalue=colvalue&",'"&request.form("txtQXSJ")&"'"
		colvalue=colvalue&",'"&request.form("txtSF")&"'"
		colvalue=colvalue&",'"&request.form("txtCS")&"'"
		colvalue=colvalue&",'"&request.form("txtJL")&"'"
		colvalue=colvalue&",'"&request.form("txtZZ")&"',"&YWID&","&BJZT&") "
		strSQL="insert into C_ZTLF"&colfield&"values"&colvalue
	end if
	'按摩疗法
	if request.form("ZLLX")=2 then
		colfield=" ( ID,ZLBZ,LB,XWXX,BZMC,FF,QXSJ,SF,CS,JL,ZZ,YW_ID,BJZT) "
		colvalue=" ( -1,"&request.form("txtZLBZ")&",1,'"&request.form("txtXWXX")&"'"
		colvalue=colvalue&",'"&request.form("txtBZMC")&"'"
		colvalue=colvalue&",'"&request.form("txtFF")&"'"
		colvalue=colvalue&",'"&request.form("txtQXSJ")&"'"
		colvalue=colvalue&",'"&request.form("txtSF")&"'"
		colvalue=colvalue&",'"&request.form("txtCS")&"'"
		colvalue=colvalue&",'"&request.form("txtJL")&"'"
		colvalue=colvalue&",'"&request.form("txtZZ")&"',"&YWID&","&BJZT&") "
		strSQL="insert into C_ZTLF"&colfield&"values"&colvalue
	end if
	'西药疗法
	if request.form("ZLLX")=3 then
		colfield=" ( ID,ZLBZ,GYFS,BZMC,YWMC,YWJX,GYSJ,ZLYZ,BZ,YWCFXX,YW_ID,BJZT) "
		colvalue=" ( -1,"&request.form("txtZLBZ")&",'"&request.form("txtGYFS")&"'"
		colvalue=colvalue&",'"&request.form("txtBZMC")&"'"
		colvalue=colvalue&",'"&request.form("txtYWMC")&"'"
		colvalue=colvalue&",'"&request.form("txtYWJX")&"'"
		colvalue=colvalue&",'"&request.form("txtGYSJ")&"'"
		colvalue=colvalue&",'"&request.form("txtZLYZ")&"'"
		colvalue=colvalue&",'"&request.form("txtBZ")&"'"
		colvalue=colvalue&",'"&request.form("txtYWCFXX")&"',"&YWID&","&BJZT&") "
		strSQL="insert into C_XYLF"&colfield&"values"&colvalue
	end if
	'其他疗法
	if request.form("ZLLX")=4 then
		colfield=" ( ID,ZLBZ,FFMC,BZMC,FFMS,YW_ID,BJZT) "
		colvalue=" ( -1,"&request.form("txtZLBZ")&",'"&request.form("txtFFMC")&"'"
		colvalue=colvalue&",'"&request.form("txtBZMC")&"'"
		colvalue=colvalue&",'"&request.form("txtFFMS")&"',"&YWID&","&BJZT&") "
		strSQL="insert into C_QTLF"&colfield&"values"&colvalue
	end if
	
	oraDB.BeginTrans
	oraDB.ExecuteSQL(strSQL)
	oraDB.CommitTrans
	
	oraDB.close
	set oraDB=nothing
	
	response.Redirect("cureInfo.asp?YWID="&YWID&"&BJZT="&BJZT)
%>
</body>
</html>
