<%@ Language=VBScript %>
<HTML>
<HEAD>
<TITLE>�����ϴ���...</TITLE>
<LINK href="common.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY bgcolor=#E5F0FF>
<CENTER>
<BR><H1>����ԭ���ϴ���...</H1>
<HR color=fuchsia>
<BR><TABLE width=62% border=1 cellPadding=3 cellSpacing=0 class="itable">
<TR><TD width=25% class="itd"><B>Դ�ļ�</B></TD><TD width=25% class="itd"><B>Ŀ���ļ�</B></TD><TD width=12% class="itd"><B>�ļ���С</B></TD></TR>
<%	
	set upload=Server.CreateObject("ChinaASP.UpLoad")

	dim OraDatabase
	set OraDatabase = OraSession.getDatabaseFromPool(10)

	dim OraDynaset
	set OraDynaset = OraDatabase.CreateDynaset("select * from PIC_LCYJ where 0<>0",0)
	
	strID=upload.Form("ID")
	intCount=upload.Files.Count
	
	for i=1 to intCount
 		set file=upload.Files(i)
		strFilename=strID & "." & i
		file.SaveAs Server.MapPath("upload/") & "\" & strFilename
		
		OraDynaset.AddNew
		OraDynaset.Fields("ID")=-1
		OraDynaset.Fields("CHUCHU")=CLng(strID)
		OraDynaset.Fields("PICNO")=i
		OraDynaset.Fields("PIC")=Empty
		OraDynaset.Update
		OraDynaset.MoveLast
		
		set OraBlob=OraDynaset.Fields("PIC").value
		OraDynaset.Edit
		OraBlob.CopyFromFile Server.MapPath("upload/") & "\" & strFilename
		OraDynaset.Update
		set OraBlob=Nothing

		Response.Write "<TR><TD class=itd>" & file.FileName & "</TD><TD class=itd>" & strFilename & "</TD><TD class=itd>" & file.FileSize & "</TD></TR>"
		set file=nothing
	next
	set upload=Nothing  'ɾ���˶���
	
	OraDynaset.close
	set OraDynaset=nothing
	set OraDynaset = OraDatabase.CreateDynaset("select TPZT from C_LCYJ where ID="&strID,0)
	OraDynaset.Edit
	OraDynaset.Fields("TPZT")=1
	OraDynaset.Update
	
	OraDynaset.close
	set OraDynaset=nothing
	OraDatabase.close
	set OraDatabase=nothing
	
response.write err.description
%>
</TABLE><H3>�����ϴ��ɹ�������<% =intCount %>ҳ��</H3><br>
<center>
<a href="javascript:history.go(-2)">����</a>
</center>
<HR color=fuchsia align=center>
<BR><FONT size=2>TCM Online Co. Ltd.</FONT>
</BODY>
</HTML>