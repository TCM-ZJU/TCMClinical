<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<body bgcolor=f4faed>
<script language="JavaScript">
<!--
<%
	on error resume next

	dim OraDatabase
	set OraDatabase = OraSession.GetDatabaseFromPool(10)
	
	dim strSQL
	strSQL="select TPZT from C_LCYJ where ID="&CLng(Request("value"))
	dim oraRS
	set oraRS = OraDatabase.CreateDynaset(strSQL,0)
	oraRS.Edit
	oraRS.Fields("TPZT")=0
	oraRS.Update

	dim strClear
	strClear="delete from " & Request("table") & " where " & Request("field") & "='" & Request("value") & "'"
	OraDatabase.BeginTrans
	OraDatabase.ExecuteSQL(strClear)
	
	if Err.Number=0 then
		OraDatabase.CommitTrans
%>
//	alert("<%=strClear%>");
	alert("删除成功！");
	history.back();
<%
	else
		OraDatabase.Rollback
%>
	alert("删除失败！\n错误原因：<%=Err.Description%>");
	history.back();
<%
	end if
%>
-->
</script>
<CENTER>
<a href="javascript:history.go(-2)">返回</a>
<BR><FONT size=2>TCM Online Co. Ltd.</FONT></CENTER></BODY>
</HTML>