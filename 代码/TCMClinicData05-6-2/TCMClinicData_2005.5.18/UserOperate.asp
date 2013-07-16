<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<LINK href="script/table.css" rel="stylesheet" type="text/css">
<link href="common.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE=javascript>
<!--
function buttonBack_onclick() {
	window.history.go(-1)
}
//-->
</SCRIPT>
</HEAD>
<body class="body">
<CENTER>
<%
	dim intAction  '0-------修改 1－－删除 2－－添加
	intAction=Request.Form("action")

 	dim OraDatabase
	set OraDatabase=OraSession.GetDatabaseFromPool(60)
	
	set OraDynaset=OraDatabase.CreateDynaset("select CUSER,PASSWD,CLEVEL,CNAME,DESCRIPTION,ENABLED,LOCKED,EDATE,CDATE from CUSER_LC where CUSER='" & Request("CUSER") & "'",0)
	


'	for each obj in request.form
'		response.write obj & "=" & request(obj) & "<br>"
'	next
'	response.end
%>
<CENTER><h1>信息提示</h1><BR><BR></CENTER>
<hr color="#0099CC"><BR>
<%
    if intAction=0 then  '修改
    	OraDynaset.Edit

		for i=0 to OraDynaset.Fields.Count-3 'skip EDATE and CDATE
			OraDynaset.Fields(i).Value=Request(OraDynaset.Fields(i).Name)
		next

		OraDynaset.Update
		OraDatabase.ExecuteSQL("update CUSER_LC set EDATE=TO_DATE('" & Request("EDATE") & "','YYYY-MM-DD') where CUSER='" & Request("CUSER") & "'")
    	
%> 	
<CENTER><FONT color=blue>更新成功，请返回！</FONT></CENTER>
<BR><A HREF="UserDetail.asp?Name=<%=Request.Form(1)%>&Status=0">返回上页</A></CENTER>
<% 
	elseif intAction=1 then  '删除
		OraDynaset.Delete
		OraDatabase.ExecuteSQL("delete from CUSER_LC_SUBJECT where CUSER='"&Request("CUSER")&"'")
%>		
<CENTER><FONT color=blue>删除成功，请返回！</FONT>
<BR><A HREF="UserList.asp">返回上页</A></CENTER>
<%
	elseif intAction=2 then   '添加
		OraDynaset.AddNew
		
		for i=0 to OraDynaset.Fields.Count-3 'skip EDATE and CDATe
			OraDynaset.Fields(i).Value=Request(OraDynaset.Fields(i).Name)
		next

		OraDynaset.Update
		OraDatabase.ExecuteSQL("update CUSER_LC set CDATE=SYSDATE")
		OraDatabase.ExecuteSQL("update CUSER_LC set EDATE=TO_DATE('" & Request("EDATE") & "','YYYY-MM-DD') where CUSER='" & Request("CUSER") & "'")
		
	    if Err.Number<>0  then
%>
<CENTER><FONT color=blue>错误：<% =Err.Description %></FONT></CENTER>
<BR><CENTER><INPUT type=button value=" 返回 " name=buttonBack onclick="return buttonBack_onclick()"></CENTER>
<% 
		else
%>
<CENTER><FONT color=blue>用户基本信息添加成功！</FOMR></CENTER>
<CENTER><BR><A HREF="UserDetail.asp?Name=<%=Request.Form("CUSER")%>&Status=0">返回上页</A>
<A HREF="userSubject.asp?Name=<%=Request.Form("CUSER")%>">继续为该用户指定专题权限</A></CENTER>
<%	
		end if

	end if
%> 
<A href="login.htm">返回至登陆</A> 
<BR><hr color="#0099CC"><BR>
<CENTER><BR><FONT size=2>TCM Online Co. Ltd.</FONT></CENTER></BODY>
</HTML>