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
	dim intAction  '0-------�޸� 1����ɾ�� 2�������
	intAction=Request.Form("action")

 	dim OraDatabase
	set OraDatabase=OraSession.GetDatabaseFromPool(60)
	
	set OraDynaset=OraDatabase.CreateDynaset("select CUSER,PASSWD,CLEVEL,CNAME,DESCRIPTION,ENABLED,LOCKED,EDATE,CDATE from CUSER_LC where CUSER='" & Request("CUSER") & "'",0)
	


'	for each obj in request.form
'		response.write obj & "=" & request(obj) & "<br>"
'	next
'	response.end
%>
<CENTER><h1>��Ϣ��ʾ</h1><BR><BR></CENTER>
<hr color="#0099CC"><BR>
<%
    if intAction=0 then  '�޸�
    	OraDynaset.Edit

		for i=0 to OraDynaset.Fields.Count-3 'skip EDATE and CDATE
			OraDynaset.Fields(i).Value=Request(OraDynaset.Fields(i).Name)
		next

		OraDynaset.Update
		OraDatabase.ExecuteSQL("update CUSER_LC set EDATE=TO_DATE('" & Request("EDATE") & "','YYYY-MM-DD') where CUSER='" & Request("CUSER") & "'")
    	
%> 	
<CENTER><FONT color=blue>���³ɹ����뷵�أ�</FONT></CENTER>
<BR><A HREF="UserDetail.asp?Name=<%=Request.Form(1)%>&Status=0">������ҳ</A></CENTER>
<% 
	elseif intAction=1 then  'ɾ��
		OraDynaset.Delete
		OraDatabase.ExecuteSQL("delete from CUSER_LC_SUBJECT where CUSER='"&Request("CUSER")&"'")
%>		
<CENTER><FONT color=blue>ɾ���ɹ����뷵�أ�</FONT>
<BR><A HREF="UserList.asp">������ҳ</A></CENTER>
<%
	elseif intAction=2 then   '���
		OraDynaset.AddNew
		
		for i=0 to OraDynaset.Fields.Count-3 'skip EDATE and CDATe
			OraDynaset.Fields(i).Value=Request(OraDynaset.Fields(i).Name)
		next

		OraDynaset.Update
		OraDatabase.ExecuteSQL("update CUSER_LC set CDATE=SYSDATE")
		OraDatabase.ExecuteSQL("update CUSER_LC set EDATE=TO_DATE('" & Request("EDATE") & "','YYYY-MM-DD') where CUSER='" & Request("CUSER") & "'")
		
	    if Err.Number<>0  then
%>
<CENTER><FONT color=blue>����<% =Err.Description %></FONT></CENTER>
<BR><CENTER><INPUT type=button value=" ���� " name=buttonBack onclick="return buttonBack_onclick()"></CENTER>
<% 
		else
%>
<CENTER><FONT color=blue>�û�������Ϣ��ӳɹ���</FOMR></CENTER>
<CENTER><BR><A HREF="UserDetail.asp?Name=<%=Request.Form("CUSER")%>&Status=0">������ҳ</A>
<A HREF="userSubject.asp?Name=<%=Request.Form("CUSER")%>">����Ϊ���û�ָ��ר��Ȩ��</A></CENTER>
<%	
		end if

	end if
%> 
<A href="login.htm">��������½</A> 
<BR><hr color="#0099CC"><BR>
<CENTER><BR><FONT size=2>TCM Online Co. Ltd.</FONT></CENTER></BODY>
</HTML>