<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��֤֢�ӹ���Уҳ��</title>
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function AddNewRecord()
{
	if(confirm("ȷ��Ҫ�����¼�¼ô?"))
	{
		if (document.forms("formCont").txtJBMC.value=="")
		{
			alert("�������Ʋ���Ϊ��!");
			return false;
		}
		var init = document.forms("formCont").txtJBMC.value.indexOf("$")
		if (init !=-1)
		{
			alert("�����ж����������!");
			return false;
		}
		init = document.forms("formCont").txtZHMC.value.indexOf("$")
		if (init !=-1)
		{
			alert("�����ж��֤������!");
			return false;
		}
		return true;
	}
	else
		return false;
}
function UpdateRecord(num)
{
	if(confirm("ȷ��Ҫ���¼�¼ô?"))
	{
		if (document.forms(num).txtJBMC.value=="")
		{
			alert("�������Ʋ���Ϊ��!");
			return false;
		}
		var init = document.forms(num).txtJBMC.value.indexOf("$")
		if (init !=-1)
		{
			alert("�����ж����������!");
			return false;
		}
		init = document.forms(num).txtZHMC.value.indexOf("$")
		if (init !=-1)
		{
			alert("�����ж��֤������!");
			return false;
		}
		return true;
	}
	else
		return false;
}

var standard;
function showStandard(strTable,strPos,txtTarget,strnum)
{
	var num = parseInt(strnum);
	var left;
	
	if (strPos=="left")
		left=screen.width-280;
	else
		left=0;
	document.forms(num).pastefield.value=txtTarget;

	if (standard=='[object]')
		standard.close();
			
	standard=window.open("/starch/wizard.asp?table="+strTable+"&formNum="+num,"standard","width=310,height=500,left="+left+",top=25,toolbar=no,scrollbars=yes");
	
	if ((document.forms(num).window!=null) && (!standard.opener))
		standard.opener=document.forms(num).window;
		
	standard.focus();
}
//-->
</script>
</head>

<body class="body">
<% 
	dim YWID
	YWID=request.QueryString("YWID")
	dim strSQL
	strSQL="select * from C_BZZ where YW_ID="&YWID
	
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
%>
<form>
<INPUT type="hidden" name="pastefield">
</form>
<table width="800" border="0" align="center" class="table2">
<tr>
<td class="title1">������صĲ�֤֢��Ϣ��¼�б�<%=oraRS.RecordCount%>��<br/></td>
</tr>
<%		
	Dim JLNUM
	JLNUM= 0    	
	oraRS.MoveFirst
    Do Until oraRS.EOF
		JLNUM= JLNUM+1
%>
<tr><td class="title1"><%response.Write(JLNUM)%></td></tr>
<tr><td>
	<form action="updateDiseaseInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
    	<tr> 
      		<td height="40"> <div align="right">�������ƣ�</div></td>
      		<td><textarea name="txtJBMC" cols="20" rows="3"><%=oraRS.fields("JBMC")%></textarea> 
        		<input name="button222" type="button" class="button1" onClick="showStandard('JiBing','Right','txtJBMC','<%=JLNUM%>');" value="����ѡ��"></td>
      		<td colspan="2">����˵��:���˼���������֤������<br>֮��,������������д������$�ֿ�</td>
      	</tr>
    	<tr>
      		<td height="40"><div align="right">ԭ������</div></td>
      		<td><textarea name="txtYFB" cols="20" rows="3"><%=oraRS.fields("YFB")%></textarea>
        		<input name="button2222" type="button" class="button1" onClick="showStandard('JiBing','Right','txtYFB','<%=JLNUM%>');" value="����ѡ��"></td>
      		<td><div align="right">����֢��</div></td>
      		<td><textarea name="txtBFZ" cols="20" rows="3"><%=oraRS.fields("BFZ")%></textarea>
        		<input name="button22222" type="button" class="button1" onClick="showStandard('JiBing','Right','txtBFZ','<%=JLNUM%>');" value="����ѡ��"></td>
    	</tr>
    	<tr> 
      		<td height="40"> <div align="right">��Ӧ֤�����ƣ�</div></td>
      		<td><textarea name="txtZHMC" cols="20" rows="3"><%=oraRS.fields("ZHMC")%></textarea>
        		<input type="button" class="button1" onClick="showStandard('ZhengHou','Right','txtZHMC','<%=JLNUM%>');" value="����ѡ��"></td>
      		<td> <div align="right">֢״��Ϣ��</div></td>
      		<td><textarea name="txtZZMC" cols="20" rows="3"><%=oraRS.fields("ZZMC")%></textarea>
        		<input name="button4" type="button" class="button1" onClick="showStandard('ZhengZhuang','Right','txtZZMC','<%=JLNUM%>');" value="����ѡ��"></td>
    	</tr>
		<tr> 
        	<td height="20" ><div align="right">��ע��</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"><%=oraRS.fields("BZ")%></textarea></td>
      	</tr>
    	<tr>
    	  <td height="16" colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸�����֤֢��¼" onClick="return UpdateRecord(<%=JLNUM%>)"> 
		  <input type="button" value="ɾ��������֤֢��¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delDiseaseInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  </div></td>
   	  	</tr>
  	</table>
	</form>
</td></tr>
<%
		oraRS.movenext
	loop
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
	JLNUM=JLNUM+1
%>
<tr>
<td class="title1"><div align="center">���һ���µĲ�֤֢��¼</div></td>
</tr>
<tr>
<td>
	<form name="formCont" action="insertDiseaseInfo.asp?YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
    	<tr> 
      		<td height="40"> <div align="right">�������ƣ�</div></td>
      		<td><textarea name="txtJBMC" cols="20" rows="3"></textarea> 
        		<input name="button222" type="button" class="button1" onClick="showStandard('JiBing','Right','txtJBMC','<%=JLNUM%>');" value="����ѡ��"></td>
      		<td colspan="2">����˵��:���˼���������֤������<br>֮��,������������д������$�ֿ�</td>
      	</tr>
    	<tr>
      		<td height="40"><div align="right">ԭ������</div></td>
      		<td><textarea name="txtYFB" cols="20" rows="3"></textarea>
        		<input name="button2222" type="button" class="button1" onClick="showStandard('JiBing','Right','txtYFB','<%=JLNUM%>');" value="����ѡ��"></td>
      		<td><div align="right">����֢��</div></td>
      		<td><textarea name="txtBFZ" cols="20" rows="3"></textarea>
        		<input name="button22222" type="button" class="button1" onClick="showStandard('JiBing','Right','txtBFZ','<%=JLNUM%>');" value="����ѡ��"></td>
    	</tr>
    	<tr> 
      		<td height="40"> <div align="right">��Ӧ֤�����ƣ�</div></td>
      		<td><textarea name="txtZHMC" cols="20" rows="3"></textarea>
        		<input type="button" class="button1" onClick="showStandard('ZhengHou','Right','txtZHMC','<%=JLNUM%>');" value="����ѡ��"></td>
      		<td> <div align="right">֢״��Ϣ��</div></td>
      		<td><textarea name="txtZZMC" cols="20" rows="3"></textarea>
        		<input name="button4" type="button" class="button1" onClick="showStandard('ZhengZhuang','Right','txtZZMC','<%=JLNUM%>');" value="����ѡ��"></td>
    	</tr>
		<tr> 
        	<td height="20" ><div align="right">��ע��</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"></textarea></td>
      	</tr>
    	<tr>
    	  <td height="16" colspan="4"><div align="center"><input type="submit" name="Submit" value="��Ӹ�����֤֢��¼" onClick="return AddNewRecord()"></div></td>
   	  	</tr>
  	</table>
	</form></td>
</tr>
</table>
<center>
<a href="javascript:history.go(-1)">����</a>
</center>
</body>
</html>
