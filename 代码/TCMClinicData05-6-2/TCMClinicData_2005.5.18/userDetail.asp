<%@ Language=VBScript %>
<HTML>
<HEAD>
<TITLE>�û���Ϣ</TITLE>
<LINK href="script/table.css" rel="stylesheet" type="text/css">
<link href="common.css" rel="stylesheet" type="text/css">
</HEAD>
<body class="body">
<%
	'intStatus=0  ���
	'intStatus=1  ���
	
	dim intStatus
	intStatus=CInt(Request.QueryString("Status"))
	 
	set OraDatabase=OraSession.GetDatabaseFromPool(60)
	set OraDynaset = OraDatabase.CreateDynaset("select CUSER,PASSWD,CLEVEL,CNAME,DESCRIPTION,TO_CHAR(CDATE,'YYYY-MM-DD') as CCDATE,EDATE,ENABLED,LOCKED from CUSER_LC where CUSER='" & Request("Name") & "'",0)
%>
<CENTER><h1>�û���Ϣ</h1><BR>
<hr color="#0099CC"><br>
<FORM action="UserOperate.asp" method=post name="formUser">
<TABLE WIDTH=* class="table1">
<%
	if intStatus=0 then '����������ݿ��ж�ȡ
%>
<SCRIPT LANGUAGE=JavaScript>
<!--
function buttonUpdate_onclick()
{
	formUser.buttonSubmit.disabled=false;
	formUser.buttonPrivilege.disabled=true;
	formUser.buttonUpdate.disabled=true;
	formUser.buttonDelete.disabled=true;
	formUser.buttonCancel.disabled=false;
	formUser.action.value ="0";

	for(i=0; i<=8; i++)
		formUser(i).disabled=false;

	formUser.CUSER.readOnly=true;
	formUser.CDATE.readOnly=true;
}

function buttonDelete_onclick()
{
	if (window.confirm("�����Ҫɾ��������¼��"))
	{
		formUser.CUSER.disabled=false;
		formUser.action.value="1";
		return true;
	}
	else
		return false;
}

function buttonBack_onclick()
{
	window.location="UserList.asp";
}

function buttonSubmit_onclick()
{
	if (formUser.CUSER.value=="")
	{
		alert("�������û��ʺ�");
		return false;
	}
	else
		return true;
}

function buttonCancel_onclick()
{
	formUser.buttonSubmit.disabled=true;
	formUser.buttonPrivilege.disabled=false;
	formUser.buttonUpdate.disabled=false;
	formUser.buttonDelete.disabled=false;
	formUser.buttonCancel.disabled=true;
	formUser.reset();
	return true;
}

function buttonPrivilege_onclick()
{
	formPrivilege.submit();
}

//-->
</SCRIPT>
<TR><TD class="itd">�û��ʺ�</TD><TD class="itd"><INPUT disabled type=text name=CUSER size=30 value="<% =OraDynaset.Fields("CUSER") %>"></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><INPUT disabled type=text name=PASSWD size=30 value="<% =OraDynaset.Fields("PASSWD") %>"></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><INPUT disabled type=text name=CLEVEL size=30 value="<% =OraDynaset.Fields("CLEVEL") %>"></TD></TR>
<TR><TD class="itd">��������</TD><TD class="itd"><INPUT disabled type=text name=CNAME size=30 value="<% =OraDynaset.Fields("CNAME") %>"></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><INPUT disabled type=text name=DESCRIPTION size=30 value="<% =OraDynaset.Fields("DESCRIPTION") %>"></TD></TR>
<TR><TD class="itd">��������</TD><TD class="itd"><INPUT disabled type=text name=CDATE size=18 value="<% =OraDynaset.Fields("CCDATE") %>"><FONT size=2 color=red>(YYYY-MM-DD)</FONT></TD></TR>
<TR><TD class="itd">ʧЧ����</TD><TD class="itd"><INPUT disabled type=text name=EDATE size=18 value="<% =OraDynaset.Fields("EDATE") %>"><FONT size=2 color=red>(YYYY-MM-DD)</FONT></TD></TR>
<TR><TD class="itd">�ʻ���Ч</TD><TD class="itd"><SELECT disabled name=ENABLED style="width:220px"><OPTION value='1' <% if OraDynaset.Fields("ENABLED").Value=1 then Response.Write "selected" %>>��</OPTION><OPTION value='0' <% if OraDynaset.Fields("ENABLED").Value=0 then Response.Write "selected" %>>��</OPTION></SELECT></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><SELECT disabled name=LOCKED style="width:220px"><OPTION value='1'<% if OraDynaset.Fields("LOCKED").Value=1 then Response.Write "selected" %>>��</OPTION><OPTION value='0' <% if OraDynaset.Fields("LOCKED").Value=0 then Response.Write "selected" %>>��</OPTION></SELECT></TD></TR>

<%
	else  '�������
%>
<SCRIPT language=JavaScript>
<!--
function buttonBack_onclick()
{
	window.location="UserList.asp";
}

function buttonSubmit_onclick()
{
	if (formUser.CUSER.value=="")
	{
		alert("�������û��ʺ�");
		return false;
	}
	else
		return true;
}
-->
</SCRIPT>
<TR><TD class="itd">�û��ʺ�</TD><TD class="itd"><INPUT type=text name=CUSER size=30 value=""></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><INPUT type=text name=PASSWD size=30 value=""></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><INPUT type=text name=CLEVEL size=30 value=""></TD></TR>
<TR><TD class="itd">��������</TD><TD class="itd"><INPUT type=text name=CNAME size=30 value=""></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><INPUT type=text name=DESCRIPTION size=30 value=""></TD></TR>
<TR><TD class="itd">��������</TD><TD class="itd"><INPUT type=text name=CDATE size=18 value="<% =Date() %>" readonly><FONT size=2 color=red>(YYYY-MM-DD)</FONT></TD></TR>
<TR><TD class="itd">ʧЧ����</TD><TD class="itd"><INPUT type=text name=EDATE size=18 value=""><FONT size=2 color=red>(YYYY-MM-DD)</FONT></TD></TR>
<TR><TD class="itd">�ʻ���Ч</TD><TD class="itd"><SELECT name=ENABLED style="width:220px"><OPTION value='1' selected>��</OPTION><OPTION value='0'>��</OPTION></SELECT></TD></TR>
<TR><TD class="itd">�û�����</TD><TD class="itd"><SELECT name=LOCKED style="width:220px"><OPTION value='1'>��</OPTION><OPTION value='0' selected>��</OPTION></SELECT></TD></TR>

<%
 	end if
%>
</TABLE><BR>
</CENTER>

<CENTER>
<%
	if intStatus=0 then '���
%>
<INPUT type=button value=" ���� " name=buttonBack onclick="return buttonBack_onclick();">
<INPUT type=button value=" �޸� " name=buttonUpdate onclick="return buttonUpdate_onclick();">
<INPUT type=submit value=" ɾ�� " name=buttonDelete onclick="return buttonDelete_onclick();">
<INPUT type=submit value=" �ύ " name=buttonSubmit disabled onclick="return buttonSubmit_onclick();">
<INPUT type=reset  value=" ȡ�� " name=buttonCancel disabled onclick="return buttonCancel_onclick();">
<INPUT type=button value=" Ȩ�� " name=buttonPrivilege onclick="return buttonPrivilege_onclick();">
<INPUT type=hidden name=action value="0">
<%
	else '��� 
%>
<INPUT type=button value=" ���� " name=buttonBack onclick="return buttonBack_onclick();">	    
<INPUT type=submit value=" �ύ " name=buttonSubmit onclick="return buttonSubmit_onclick();">			 
<INPUT type=hidden name=action value="2">
<%
	end if
%>
</CENTER>
</FORM>
<table width=* align="center" class="table3">
<tr>
<td><A href="Login.htm">��������½</A></td>
</tr>
</table>

<FORM action="UserDetail.asp?Name=<%=Request.QueryString("Name")%>"  method=post name=formReload>
</FORM>
<FORM action="userSubject.asp?Name=<%=Request.QueryString("Name")%>" name=formPrivilege method=post>
</FORM>
<hr color="#0099CC" ><BR>
<CENTER><BR><FONT size=2>TCM Online Co. Ltd.</FONT>
</CENTER>
</BODY>
</HTML>