<%@ Language=VBScript %>
<html>
<title>ͼƬ�����ʾ</title>
<style type="text/css">
<!--
a:link {
	text-decoration: none;
	color: blue;
}
a:visited {
	text-decoration: none;
	color: blue;
}
a:hover {
	text-decoration: none;
	color: red;
}
-->
</style>
<LINK href="common.css" rel="stylesheet" type="text/css">
<%
	dim intCHUCHU
	intCHUCHU=Request("ID")

	Dim OraDatabase
	set OraDatabase = OraSession.getDatabaseFromPool(10)
	Dim part
	set part = OraDatabase.CreateDynaset("select ID from PIC_LCYJ where CHUCHU=" & intCHUCHU & "order by ID",&0)
%>
</head>
<body bgcolor=#e5f0ff>
<%
        if part.RecordCount=0 then
                Response.Write "<font color=red><b>������û<br>��ͼƬ��<br>����ʾ��</b></font>"
        else
%>
<table width=100% border=1 cellPadding=3 cellSpacing=0 class="itable">
<tr><td align=center class="itd">ͼƬ�б�</td></tr>
<%
            for i=0 to part.recordcount-1
			'dim strID
			'strID=part.Fields("PICNO").Value
%>
<tr><td align=center class="itd">
<a href="viewpic.asp?ID=<% =part.Fields("ID").Value %>" target="content">��<% =i+1 %>ҳ</a></center>
</td></tr>
<%
			part.MoveNext
        	next
%>
<TR>
<TD align=center>
<FORM name=viewpic action="clear.asp" method="POST">
<INPUT type=submit value="���ͼƬ" onclick="javascript:return confirm('Ϊ�˱���ͼƬ������ң���������ɾ����������ٴ��о�������ͼƬ��\n����Ҫ�����ϴ�����ͼƬ��ȷ����');">
<INPUT type=hidden name="table" value="PIC_LCYJ">
<INPUT type=hidden name="field" value="CHUCHU">
<INPUT type=hidden name="value" value="<%=intCHUCHU%>">
</FORM>
</TD></TR>
</table>
<center>
<a href="javascript:history.go(-1)">����</a>
</center>
<%
        end if	
	part.close
	set part=nothing
	OraDatabase.close
	set OraDatabase=nothing
%>	
</body> 
</html>