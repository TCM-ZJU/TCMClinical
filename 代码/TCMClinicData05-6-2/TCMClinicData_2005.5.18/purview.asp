<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<title>权限检查</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body>
<%
	dim ID
	ID=request.Form("YJID")
	dim user
	user=Session("UserAccount")
	dim strSQL
	strSQL="select LCYJMC,YJFL,BJZT,LRRY,LRRQ,JGDW,YW_ID,ZTBZ from C_LCYJ where ID="&ID
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
	LRuser=oraRS.fields("LRRY").value
	LRUnit=oraRS.fields("JGDW").value
	YWID=oraRS.fields("YW_ID").value
	ZTBZ=oraRS.fields("ZTBZ").value
	
	dim strSQLT
	dim oraRST
	strSQLT="select CLEVEL,DESCRIPTION from CUSER_LC where CUSER='"&user&"'"
	set oraRST=oraDB.CreateDynaset(strSQLT,0)
	dim Unit
	dim Authority
	Unit=oraRST.fields("DESCRIPTION").value
	Authority=oraRST.fields("CLEVEL").value
	oraRST.close
	set oraRST=nothing
	
	if request.Form("Type")=0 then 
		if oraRS.fields("BJZT").value>=2 then
			oraRS.close
			set oraRS=nothing
			oraDB.close
			set oraDB=nothing
%>
	您无权加工已审校的数据记录
	<a href="javascript:history.go(-1)">返回</a>	
<%		
		else 
			if Unit<>LRUnit and Unit<>"中研信" then
				oraRS.close
				set oraRS=nothing
				oraDB.close
				set oraDB=nothing
%>
	您无权加工其它单位加工的数据记录
	<a href="javascript:history.go(-1)">返回</a>
<%
			else
			'2005-5-30增加专题的权限检查
				strSQLT="select * from CUSER_LC_SUBJECT where CUSER='"&user&"' and SUBJECT='"&oraRS.fields("YJFL")&"'"
				set oraRST=oraDB.CreateDynaset(strSQLT,0)
				if oraRST.RecordCount=0 then
					oraRST.close
					set oraRST=nothing
					oraRS.close
					set oraRS=nothing
					oraDB.close
					set oraDB=nothing
%>
	您无该专题的加工权限
	<a href="javascript:history.go(-1)">返回</a>
<%		
				else	
					oraRST.close
					set oraRST=nothing
					
					if  not IsNull(oraRS.fields("LRRY").value) then
						if oraRS.fields("LRRY").value=user then
							oraRS.close
							set oraRS=nothing
							oraDB.close
							set oraDB=nothing
							response.Redirect("recordInfo.asp?YJID="&ID&"&YWID="&YWID&"&BJZT=1&JGDW="&LRUnit&"&LCWT="&LCWT&"&LRRY="&LRuser&"&ZTBZ="&ZTBZ)
						else
							oraRS.close
							set oraRS=nothing
							oraDB.close
							set oraDB=nothing
%>
	您无权加工别人加工的数据记录
	<a href="javascript:history.go(-1)">返回</a>
<%					
						end if
					else
						oraRS.close
						set oraRS=nothing
						oraDB.close
						set oraDB=nothing
						response.Redirect("recordInfo.asp?YJID="&ID&"&YWID="&YWID&"&BJZT=1&JGDW="&LRUnit&"&LCWT="&LCWT&"&LRRY="&LRuser&"&ZTBZ="&ZTBZ)
					end if
				end if
			end if
		end if
	else
		if Authority=0 then
			oraRS.close
			set oraRS=nothing
			oraDB.close
			set oraDB=nothing
%>
	您无权审校数据记录
	<a href="javascript:history.go(-1)">返回</a>
<%
		else
			if oraRS.fields("BJZT").value>=3 then
				oraRS.close
				set oraRS=nothing
				oraDB.close
				set oraDB=nothing
%>
	您无权审校已终审的数据记录
	<a href="javascript:history.go(-1)">返回</a>
<%
			else
				if Unit<>LRUnit and Unit<>"中研信" then	
					oraRS.close
					set oraRS=nothing
					oraDB.close
					set oraDB=nothing
%>
	您无权审校其它单位加工的数据记录
	<a href="javascript:history.go(-1)">返回</a>
<%
				else
					oraRS.close
					set oraRS=nothing
					oraDB.close
					set oraDB=nothing
					response.Redirect("recordInfo.asp?YJID="&ID&"&YWID="&YWID&"&BJZT=2&JGDW="&LRUnit&"&LCWT="&LCWT&"&LRRY="&LRuser&"&ZTBZ="&ZTBZ)
				end if
			end if
		end if
	end if	
%>
</body>
</html>
