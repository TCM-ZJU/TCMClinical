<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>工作人员专题权限</title>
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
	function chkALL()
	{
		chkJMZOnclick();
		chkHXOnclick();
		chkSJOnclick();
	}
	function chkJMZOnclick()
	{
		if (document.forms(0).chkJMZ.checked)
			document.forms(0).chkJMZ.value=1;
		else
			document.forms(0).chkJMZ.value=0;
	}
	function chkHXOnclick()
	{
		if (document.forms(0).chkHX.checked)
			document.forms(0).chkHX.value=1;
		else
			document.forms(0).chkHX.value=0;
	}
	function chkSJOnclick()
	{
		if (document.forms(0).chkSJ.checked)
			document.forms(0).chkSJ.value=1;
		else
			document.forms(0).chkSJ.value=0;
	}
	function chkLCOnclick()
	{
		if (document.forms(0).chkLC.checked)
			document.forms(0).chkLC.value=1;
		else
			document.forms(0).chkLC.value=0;
	}
	function chkCRBOnclick()
	{
		if (document.forms(0).chkCRB.checked)
			document.forms(0).chkCRB.value=1;
		else
			document.forms(0).chkCRB.value=0;
	}
//-->
</script>
</head>

<body class="body" onLoad="return chkALL()">
<%
	dim user
	user=Request.QueryString("Name")
	
	dim strSQL
	strSQL="select SUBJECT from CUSER_LC_SUBJECT where CUSER='"&user&"'"
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
%>
<center><h1>专题权限</h1><BR>
<hr color="#0099CC"><br>
</center>
<form action="updateUserSubject.asp?Name=<%=user%>" method="post">
<table width="200" align="center" class="table1">
  <tr>
    <td class="title1"><div align="center">专题权限选择</div></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="chkJMZ" value="0" onClick="return chkJMZOnclick()" 
	<%
		oraRS.MoveFirst
    	Do Until oraRS.EOF
			if oraRS.fields("SUBJECT")="急门诊专题" then
	%>checked
	<%
			end if
			oraRS.movenext
		loop
	%>>
      急门诊专题</td>
  </tr>
  <tr>
    <td><input type="checkbox" name="chkHX" value="0" onClick="return chkHXOnclick()"
	<%
		oraRS.MoveFirst
    	Do Until oraRS.EOF
			if oraRS.fields("SUBJECT")="呼吸专题" then
	%>checked
	<%
			end if
			oraRS.movenext
		loop
	%>>
      呼吸专题</td>
  </tr>
  <tr>
    <td><input type="checkbox" name="chkSJ" value="0" onClick="return chkSJOnclick()"
	<%
		oraRS.MoveFirst
    	Do Until oraRS.EOF
			if oraRS.fields("SUBJECT")="神经专题" then
	%>checked
	<%
			end if
			oraRS.movenext
		loop
	%>>
      神经专题</td>
  </tr>
  <tr>
    <td><input type="checkbox" name="chkLC" value="0" onClick="return chkLCOnclick()"
	<%
		oraRS.MoveFirst
    	Do Until oraRS.EOF
			if oraRS.fields("SUBJECT")="临床专题" then
	%>checked
	<%
			end if
			oraRS.movenext
		loop
	%>>
      临床专题</td>
  </tr>
  <tr>
    <td><input type="checkbox" name="chkCRB" value="0" onClick="return chkCRBOnclick()"
	<%
		oraRS.MoveFirst
    	Do Until oraRS.EOF
			if oraRS.fields("SUBJECT")="传染病专题" then
	%>checked
	<%
			end if
			oraRS.movenext
		loop
	%>>
      传染病专题</td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="Submit" type="submit" value="确定">
    </div></td>
  </tr>
</table>
</form>
<div align="center"><A HREF="UserList.asp">返回列表</A></div>
<hr color="#0099CC" ><BR>
<CENTER><BR><FONT size=2>TCM Online Co. Ltd.</FONT>
</CENTER>
</body>
</html>
