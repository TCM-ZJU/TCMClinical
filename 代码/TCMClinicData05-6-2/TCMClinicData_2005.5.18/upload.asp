<HTML>
<HEAD>
<TITLE>�ϴ�����ԭ��</TITLE>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<LINK href="common.css" rel="stylesheet" type="text/css">
<SCRIPT language="JavaScript">
function setid()
{
	str='<BR>';
	if(!window.uploadform.upcount.value)
		window.uploadform.upcount.value=1;
 	for (i=1; i<=window.uploadform.upcount.value; i++)
		str+='��'+i+'ҳ��<INPUT type=file name=page'+i+' size=40><BR>';
	window.upid.innerHTML=str+'<BR>';
}
function judge()
{	
	for (i=1; i<=window.uploadform.upcount.value; i++)
	{
		strID='page'+i;
		if (document.forms("uploadform").elements(strID).value=="")
		{
			alert("ȱ�����׵�"+i+"ҳ��");
			return false;
		}
	}
	return true;
}
</SCRIPT>
</HEAD>
<BODY bgcolor=#E5F0FF>
<CENTER>
<BR><H1>�ϴ�����ԭ��</H1>
<HR color=fuchsia>
<FORM name=uploadform method=post action="savefile.asp" enctype="multipart/form-data" >
<INPUT type="hidden" name="CopyrightInfo" value="http://www.chinaasp.com">
  <TABLE width=100% border=1 cellpadding=3 cellspacing=0 class="table2">
    <TR> 
      <TD width=* align=right>�������ƣ�</TD>
      <TD><% =Request("YJMC") %></TD>
    </TR>
    <TR> 
      <TD align=right>����ԭ��ҳ����</TD>
      <TD> <INPUT type=text name=upcount size=40 value=1> <INPUT type=button name=Button onclick="setid();" value=�趨> 
        <INPUT type=hidden name=ID value=<% =Request("YJID")%>></TD>
    </TR>
    <TR> 
      <TD colspan=2 align=center id=upid>��1ҳ�� <INPUT type=file name=page1 size=40> 
      </TD>
    </TR>
    <TR align=center valign=middle> 
      <TD colspan=2> <INPUT type=submit name=submit value=�ύ onclick="return judge();"> 
        <INPUT type=reset value=��ԭ> </TD>
    </TR>
  </TABLE>
</FORM>
<HR color=fuchsia align=center>
</BODY>
</HTML>
<SCRIPT language="javascript">
setid();
</SCRIPT>