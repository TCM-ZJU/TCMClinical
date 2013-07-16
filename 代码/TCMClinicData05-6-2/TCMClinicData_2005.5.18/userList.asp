<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<LINK href="script/table.css" rel="stylesheet" type="text/css">
<!--

function buttonQuit_onclick() {
	window.location="Login.htm"
}

//-->
</SCRIPT>
<link href="common.css" rel="stylesheet" type="text/css">
</HEAD>
<body class="body">
<%
 
 %>
<%
	Response.Expires=0
	dim OraDB
    set OraDB=OraSession.GetDatabaseFromPool(60)
    dim strSQL
    strSQL="select CUSER,description from CUSER_LC"
    dim oraRS
    Set oraRS = OraDB.CreateDynaset(strSQL,0)
    
%>
    <center><h1>用户管理</h1><BR><BR></center>
    <hr color="#0099CC"><br><br> 
<%  
	if oraRS.recordcount<>0 then
%> 
<FORM action="UserDetail.asp?Name= &amp;Status=1" method=post id=formAdd name=formAdd>	<center><INPUT type="submit" value=" 添加 " id=submitAdd name=submitAdd></center>		 
</FORM>
<CENTER>
<TABLE WIDTH="60%" class="table1">
<tr><td align="center" colspan="2" class="title1">临床工作人员列表</td></tr>
<tr>
	<td align="center" class="title1">人员帐号</td>
	<td align="center" class="title1">单位代码</td>
</tr>
<tr><td colspan="2">
<table width="100%" class="table2">
<%	
	for i=0 to oraRS.recordcount-1
		dim strUser
		strUser=oraRS.fields("CUSER").value
		dim strDESC
		strDESC=oraRS.fields("description").value

%>
<TR>
<TD align=center width="40%"><A HREF="UserDetail.asp?Name=<%= strUser %>&Status=0"><%= strUser %></A></TD>
<TD align=center width="40%"><%=strDESC%></TD>
</TR>
<%
		oraRS.movenext
	next
%>
</table>
</td></tr>
</TABLE></CENTER>
<%
	end if
%>
<FORM action="UserDetail.asp?Name= &amp;Status=1" method=post id=formAdd name=formAdd>	<center><INPUT type="submit" value=" 添加 " id=submitAdd name=submitAdd></center>		 
</FORM>
<table width="60%" align="center" class="table3">
<tr>
<td><A href="Login.htm">返回至登陆</A></td>
<td><div align=right><A href="manageSubject.asp">至专题查看</A></div></td>
</tr>
</table>

<hr color="#0099CC">
<CENTER><BR><FONT size=2>TCM Online Co. Ltd.</FONT></CENTER></BODY>
</HTML>
