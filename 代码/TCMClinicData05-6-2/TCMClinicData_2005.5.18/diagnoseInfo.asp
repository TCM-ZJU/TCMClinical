<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���Ƽӹ���Уҳ��</title>
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function AddNewRecord()
{
	if(confirm("ȷ��Ҫ�����¼�¼ô?"))
	{
		if(document.forms("formCont").txtBZZMC.value=="")
		{
			alert("��֤���Ʋ���Ϊ��!");
			return false;
		}
		var init = document.forms("formCont").txtZDZBFL.value.indexOf("$")
		if (init !=-1)
		{
			alert("�����ж�����ָ�����!");
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
		if(document.forms(num).txtBZZMC.value=="")
		{
			alert("��֤���Ʋ���Ϊ��!");
			return false;
		}
		var init = document.forms(num).txtZDZBFL.value.indexOf("$")
		if (init !=-1)
		{
			alert("�����ж�����ָ�����!");
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
	strSQL="select * from C_LCZL where YW_ID="&YWID
	
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
%>
<form>
<INPUT type="hidden" name="pastefield">
</form>
<table width="800" height="282" border="0" align="center" class="table2">
<tr>
<td class="title1">������ص�������Ϣ��¼�б�<%=oraRS.RecordCount%>��<br/></td>
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
	<div align="center"style="width: 790px;">
	<form action="updateDiagnoseInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" border="0" class="table3">
      	<tr> 
        	<td><div align="right">��֤���ƣ�</div></td>        
  			<td><textarea name="txtBZZMC" cols="30" rows="5"><%=oraRS.fields("BZZMC")%></textarea></td>
        	<td><div align="right">���ָ����ࣺ</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDZBFL" cols="30" rows="5"><%=oraRS.fields("ZDZBFL")%></textarea>
        		  <input name="button2223" type="button" class="button1" onClick="showStandard('zhendzbfl','Right','txtZDZBFL','<%=JLNUM%>');" value="����ѡ��">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">ָ��Ȩ�أ�</div></td>
        	<td><textarea name="txtZBQZ" cols="30" rows="5"><%=oraRS.fields("ZBQZ")%></textarea></td>
        	<td><div align="right">ָ����Ŀ��</div></td>
        	<td><div align="left">
        		  <textarea name="txtZBXM" cols="30" rows="5"><%=oraRS.fields("ZBXM")%></textarea>
        		  <input name="button2224" type="button" class="button1" onClick="showStandard('XUEY','Right','txtZBXM','<%=JLNUM%>');" value="����ѡ��">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">��Ч��׼��Դ��</div></td>
        	<td><textarea name="txtLXBZLY" cols="30" rows="5"><%=oraRS.fields("LXBZLY")%></textarea></td>
        	<td><div align="right">��Ч��׼��</div></td>
        	<td><div align="left">
        	  <textarea name="txtLXBZ" cols="30" rows="5"><%=oraRS.fields("LXBZ")%></textarea>
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">��ϱ�׼��Դ��</div></td>
        	<td><textarea name="txtZDBZLY" cols="30" rows="5"><%=oraRS.fields("ZDBZLY")%></textarea></td>
        	<td><div align="right">���������</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDYQ" cols="30" rows="5"><%=oraRS.fields("ZDYQ")%></textarea>
        		  <input name="button2227" type="button" class="button1" onClick="showStandard('zhendyq','Right','txtZDYQ','<%=JLNUM%>');" value="����ѡ��">
      	  </div></td>
      	</tr>
      	<tr>
			<td><div align="right">��ҽ��Ϸ�����</div></td>
        	<td><textarea name="txtZYZDFF" cols="30" rows="5"><%=oraRS.fields("ZYZDFF")%></textarea></td>
        	<td><div align="right">����Ч�ʣ�</div></td>
        	<td><div align="left">
        	  <textarea name="txtZYXL" cols="30" rows="5"><%=oraRS.fields("ZYXL")%></textarea>
      	  </div></td>
      	</tr>
		<tr> 
        	<td height="20" ><div align="right">��ע��</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"><%=oraRS.fields("BZ")%></textarea></td>
      	</tr>
	  	<tr>
	  		<td colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸������Ƽ�¼" onClick="return UpdateRecord(<%=JLNUM%>)"> 
    	  	<input type="button" value="ɾ���������Ƽ�¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delDiagnoseInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
			</div></td>
	  	</tr>
	</table>
	</form>
	</div>
</td><tr>
<%
		oraRS.movenext
	loop
	JLNUM=JLNUM+1
%>
<tr>
<td class="title1"><div align="center">���һ���µ����Ƽ�¼</div></td>
</tr>
<tr>
<td>
	<form name="formCont" action="insertDiagnoseInfo.asp?YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" border="0" class="table3">
      	<tr> 
        	<td><div align="right">��֤���ƣ�</div></td>        
  			<td><select name='txtBZZMC'>
<%
	
	strSQL="select JBMC,ZHMC from C_BZZ where YW_ID="&YWID
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	dim JBMING
	oraRS.MoveFirst	
	Do Until oraRS.EOF
		if JBMING<>oraRS.fields("JBMC") then
			JBMING=oraRS.fields("JBMC")
%>
            <option value="<%=JBMING%>"><%=JBMING%></option>
<%	
		end if 
%>
            <option value="<%=oraRS.fields("ZHMC")%>"><%=oraRS.fields("ZHMC")%></option>
<%  
		oraRS.MoveNext
	loop
	oraRS.close
	set oraRS=nothing
	oraDB.close
	set oraDB=nothing
%>
			</select></td>
        	<td><div align="right">���ָ����ࣺ</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDZBFL" cols="30" rows="5"></textarea>
        		  <input name="button2223" type="button" class="button1" onClick="showStandard('zhendzbfl','Right','txtZDZBFL','<%=JLNUM%>');" value="����ѡ��">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">ָ��Ȩ�أ�</div></td>
        	<td><textarea name="txtZBQZ" cols="30" rows="5"></textarea></td>
        	<td><div align="right">ָ����Ŀ��</div></td>
        	<td><div align="left">
        		  <textarea name="txtZBXM" cols="30" rows="5"></textarea>
        		  <input name="button2224" type="button" class="button1" onClick="showStandard('XUEY','Right','txtZBXM','<%=JLNUM%>');" value="����ѡ��">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">��Ч��׼��Դ��</div></td>
        	<td><textarea name="txtLXBZLY" cols="30" rows="5"></textarea></td>
        	<td><div align="right">��Ч��׼��</div></td>
        	<td><div align="left">
        	  <textarea name="txtLXBZ" cols="30" rows="5"></textarea>
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">��ϱ�׼��Դ��</div></td>
        	<td><textarea name="txtZDBZLY" cols="30" rows="5"></textarea></td>
        	<td><div align="right">���������</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDYQ" cols="30" rows="5"></textarea>
        		  <input name="button2227" type="button" class="button1" onClick="showStandard('zhendyq','Right','txtZDYQ','<%=JLNUM%>');" value="����ѡ��">
      	  </div></td>
      	</tr>
      	<tr>
			<td><div align="right">��ҽ��Ϸ�����</div></td>
        	<td><textarea name="txtZYZDFF" cols="30" rows="5"></textarea></td>
        	<td><div align="right">����Ч�ʣ�</div></td>
        	<td><div align="left">
        	  <textarea name="txtZYXL" cols="30" rows="5"></textarea>
      	  </div></td>
      	</tr>
		<tr> 
        	<td height="20" ><div align="right">��ע��</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"></textarea></td>
      	</tr>
	  	<tr>
	  		<td colspan="4"><div align="center"><input type="submit" name="Submit" value="��Ӹ������Ƽ�¼" onClick="return AddNewRecord()"></div></td> 
	  	</tr>
	</table>
	</form>
</td>
</tr>
</table>
<center>
<a href="javascript:history.go(-1)">����</a>
</center
></body>
</html>
