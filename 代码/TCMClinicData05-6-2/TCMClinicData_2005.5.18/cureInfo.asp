<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������Ϣ�ӹ�ҳ��</title>
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
<!--
	function windowOnload(stepnum) 
    {			 
		inputShow(stepnum);		
	}
	function inputShow(stepnum)
	{
		var str;
		if (stepnum !=-1)
			str="div"+stepnum;
		else
			str="div" + document.forms("formCont").ZLLX[document.forms("formCont").ZLLX.selectedIndex].value;
		eval("inputCont.innerHTML="+str+".innerHTML");
	}
	function btnYWXXOnclick(num)
	{
		var init = document.forms(num).txtYWMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��ҩ������!");
			return false;
		}
		else
		{
			var temp;
			temp=document.forms(num).txtYWXX.value;
			temp=temp+"("+document.forms(num).txtYWMC.value+";";
			temp=temp+document.forms(num).txtYWJL.value+";";
			temp=temp+document.forms(num).txtJLDW.value+";";
			temp=temp+document.forms(num).txtPZFF.value+")";
			document.forms(num).txtYWXX.value=temp;
			document.forms(num).txtYWMC.value="";
			document.forms(num).txtYWJL.value="";
			document.forms(num).txtJLDW.value="";
			document.forms(num).txtPZFF.value="";
			return  true;
		}
	}
	function btnXWXXOnclick(num)
	{
		var init = document.forms(num).txtXWMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��Ѩλ����!");
			return false;
		}
		else
		{
			var temp;
			temp=document.forms(num).txtXWXX.value;
			temp=temp+"("+document.forms(num).txtXWMC.value+";";
			temp=temp+document.forms(num).txtXWLX.value+")";
			document.forms(num).txtXWXX.value=temp;
			document.forms(num).txtXWMC.value="";
			document.forms(num).txtXWLX.value="";
			return true;
		}
	}
	function btnYWCFXXOnclick(num)
	{
		var init = document.forms(num).txtYWCFMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��ҩ��ɷ�!");
			return false;
		}
		else
		{
			var temp;
			temp=document.forms(num).txtYWCFXX.value;
			temp=temp+"("+document.forms(num).txtYWCFMC.value+";";
			temp=temp+document.forms(num).txtYWCFJL.value+";";
			temp=temp+document.forms(num).txtJLDW.value+")";
			document.forms(num).txtYWCFXX.value=temp;
			document.forms(num).txtYWCFMC.value="";
			document.forms(num).txtYWCFJL.value="";
			document.forms(num).txtJLDW.value="";
			return true;
		}
	}
	
	function newbtnYWXXOnclick()
	{
		var init = document.forms("formCont").txtYWMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��ҩ������!");
			return false;
		}
		else
		{
			var temp;
			temp=document.forms("formCont").txtYWXX.value;
			temp=temp+"("+document.forms("formCont").txtYWMC.value+";";
			temp=temp+document.forms("formCont").txtYWJL.value+";";
			temp=temp+document.forms("formCont").txtJLDW.value+";";
			temp=temp+document.forms("formCont").txtPZFF.value+")";
			document.forms("formCont").txtYWXX.value=temp;
			document.forms("formCont").txtYWMC.value="";
			document.forms("formCont").txtYWJL.value="";
			document.forms("formCont").txtJLDW.value="";
			document.forms("formCont").txtPZFF.value="";
			return true;
		}
	}
	function newbtnXWXXOnclick()
	{
		var init = document.forms("formCont").txtXWMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��Ѩλ����!");
			return false;
		}
		else
		{
			var temp;
			temp=document.forms("formCont").txtXWXX.value;
			temp=temp+"("+document.forms("formCont").txtXWMC.value+";";
			temp=temp+document.forms("formCont").txtXWLX.value+")";
			document.forms("formCont").txtXWXX.value=temp;
			document.forms("formCont").txtXWMC.value="";
			document.forms("formCont").txtXWLX.value="";
			return true;
		}
	}
	function newbtnYWCFXXOnclick()
	{
		var init = document.forms("formCont").txtYWCFMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��ҩ��ɷ�!");
			return false;
		}
		else
		{
			var temp;
			temp=document.forms("formCont").txtYWCFXX.value;
			temp=temp+"("+document.forms("formCont").txtYWCFMC.value+";";
			temp=temp+document.forms("formCont").txtYWCFJL.value+";";
			temp=temp+document.forms("formCont").txtJLDW.value+")";
			document.forms("formCont").txtYWCFXX.value=temp;
			document.forms("formCont").txtYWCFMC.value="";
			document.forms("formCont").txtYWCFJL.value="";
			document.forms("formCont").txtJLDW.value="";
			return true;
		}
	}

function AddNewRecord()
{
	if(confirm("ȷ��Ҫ�����¼�¼ô?"))
	{
		if (document.forms("formCont").txtBZMC.value=="")
		{
			alert("��֤���Ʋ���Ϊ��!");
			return false;
		}
		if (document.forms("formCont").txtZLBZ.value=="")
		{
			alert("���Ʋ��費��Ϊ��!");
			return false;
		}
		if(document.forms("formCont").ZLLX.value==0)
		{
			var init = document.forms("formCont").txtYFMC.value.indexOf("$");
			if (init !=-1)
			{
				alert("�����ж��ҩ������!");
				return false;
			}
		}
		if(document.forms("formCont").ZLLX.value==3)
		{
			var init = document.forms("formCont").txtYWMC.value.indexOf("$");
			if (init !=-1)
			{
				alert("�����ж��ҩ������!");
				return false;
			}
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
		if (document.forms(num).txtBZMC.value=="")
		{
			alert("��֤���Ʋ���Ϊ��!");
			return false;
		}
		if (document.forms(num).txtZLBZ.value=="")
		{
			alert("���Ʋ��費��Ϊ��!");
			return false;
		}
		return true;
	}
	else
		return false;
}
function UpdateYFRecord(num)
{
	if(confirm("ȷ��Ҫ���¼�¼ô?"))
	{
		var init = document.forms(num).txtYFMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��ҩ������!");
			return false;
		}
		return UpdateRecord(num);
	}
	else
		return false;
}
function UpdateXYRecord(num)
{
	if(confirm("ȷ��Ҫ���¼�¼ô?"))
	{
		var init = document.forms(num).txtYWMC.value.indexOf("$");
		if (init !=-1)
		{
			alert("�����ж��ҩ������!");
			return false;
		}
		return UpdateRecord(num);
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

-->
</script>
</head>

<body class="body" onLoad="return windowOnload(0)" onUnload="if (standard=='[object]') standard.close();">
<%
	dim YWID
	YWID=request.QueryString("YWID")
	
	dim strSQL
	strSQL="select * from C_YFLF where YW_ID="&YWID
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
	Dim JLSUM
	JLSUM= 0
%>
<form>
<INPUT type="hidden" name="pastefield">
</form>
<table width="800" border="0" align="center" class="table2">
<tr>
<td class="title1">���е�ҩ���Ʒ���¼�б�<%=oraRS.RecordCount%>��</td>
</tr>
<%		
	Dim JLNUM
	JLNUM= 0    	
	oraRS.MoveFirst
    Do Until oraRS.EOF
		JLNUM= JLNUM+1
		JLSUM= JLSUM+1
%>
<tr><td class="title1"><%response.Write(JLNUM)%></td></tr>
<tr><td>
	<form action="updateCureInfo.asp?Type=0&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
	<tr> 
      <td><div align="right">��֤���ƣ�</div></td>
      <td><div align="left"><textarea name="txtBZMC"><%=oraRS.fields("BZMC")%></textarea>
	  </div></td>
      <td><div align="right">���Ʋ�����ţ�</div></td>
      <td><input type="text" name="txtZLBZ" value="<%=oraRS.fields("ZLBZ")%>"></td>
	</tr>
    <tr> 
      <td width="130"><div align="right">��ҩ��ʽ��</div></td>
      <td width="251"><div align="left">
          <textarea name="txtGYFS" cols="20" rows="3"><%=oraRS.fields("GYFS")%></textarea>
          <input name="button5" type="button" class="button1" onClick="showStandard('GEIYFS','Right','txtGYFS','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td width="134"><div align="right">ҩ�����ƣ�</div></td>
      <td width="247"><div align="left">
          <textarea name="txtYFMC" rows="3"><%=oraRS.fields("YFMC")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">ҩ�����ͣ�</div></td>
      <td><div align="left">
          <textarea name="txtYFJX" cols="20" rows="3"><%=oraRS.fields("YFJX")%></textarea>
          <input name="button" type="button" class="button1" onClick="showStandard('JiXing','Right','txtYFJX','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">����</div></td>
      <td><div align="left">
          <textarea name="txtZZ" cols="20" rows="3"><%=oraRS.fields("ZZ")%></textarea>
          <input name="button3" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">��ע��</div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtBZ" cols="60" rows="3"><%=oraRS.fields("BZ")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"><em>ҩ����ҩ����Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td><div align="right">��ζҩ��</div></td>
      <td><div align="left">
          <textarea name="txtYWMC" cols="20" rows="3"></textarea>
          <input name="button4" type="button" class="button1" onClick="showStandard('Danwy','Right','txtYWMC');" value="����ѡ��" />
        </div></td>
      <td></td>
	  <td></td>
    </tr>
    <tr>
	  <td><div align="right">ҩ�������</div></td>
      <td><div align="left">
          <input type="text" name="txtYWJL" />
        </div></td>	 
      <td><div align="right">������λ��</div></td>
      <td><div align="left">
          <input type="text" name="txtJLDW" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnYWXX" type="button" class="button1" value="==&gt;" onClick="return btnYWXXOnclick(<%=JLSUM%>)"/>
        </div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtYWXX" cols="60" rows="4"><%=oraRS.fields("YWXX")%></textarea>
        </div></td>
    </tr>
	<tr>
    	  <td colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸���ҩ���Ʒ���¼" onClick="return UpdateYFRecord(<%=JLSUM%>)">
		  <input type="button" value="ɾ������ҩ���Ʒ���¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delCureInfo.asp?Type=0&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  </div></td>
	</tr>	  
	</table>
	</form>
</td></tr>
<%
		oraRS.movenext
	loop
	oraRS.close
	
	strSQL="select * from C_ZTLF where LB=0 and YW_ID="&YWID
	set oraRS=oraDB.CreateDynaset(strSQL,0)
%>
<tr>
<td class="title1">���е�����Ʒ���¼�б�<%=oraRS.RecordCount%>��</td>
</tr>
<%	
	JLNUM= 0    	
	oraRS.MoveFirst
    Do Until oraRS.EOF
		JLNUM= JLNUM+1
		JLSUM= JLSUM+1
%>
<tr><td class="title1"><%response.Write(JLNUM)%></td></tr>
<tr><td>
	<form action="updateCureInfo.asp?Type=1&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
    <tr> 
      <td><div align="right">��֤���ƣ�</div></td>
      <td><div align="left"><textarea name="txtBZMC"><%=oraRS.fields("BZMC")%></textarea></div></td>
      <td><div align="right">���Ʋ�����ţ�</div></td>
      <td><input type="text" name="txtZLBZ" value="<%=oraRS.fields("ZLBZ")%>"></td>
    </tr>
    <tr> 
      <td width="17%"><div align="right">��ķ�����</div></td>
      <td width="33%"><div align="left">
          <textarea name="txtFF" cols="20" rows="3"><%=oraRS.fields("FF")%></textarea>
          <input name="button424" type="button" class="button1" onClick="showStandard('ZHENJFF','Right','txtFF','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td width="17%"><div align="right">�����е�� </div></td>
      <td width="33%"><div align="left">
          <textarea name="txtQXSJ" rows="3"><%=oraRS.fields("QXSJ")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">����ַ���</div></td>
      <td><div align="left">
          <textarea name="txtSF" cols="20" rows="3"><%=oraRS.fields("SF")%></textarea>
          <input name="button425" type="button" class="button1" onClick="showStandard('zhencsf','Right','txtSF','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">��̴�����</div></td>
      <td><div align="left">
          <textarea name="txtCS" rows="3"><%=oraRS.fields("CS")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">���磺</div></td>
      <td><div align="left">
          <textarea name="txtJL" cols="20" rows="3"><%=oraRS.fields("JL")%></textarea>
          <input name="button42" type="button" class="button1" onClick="showStandard('jingluo','Right','txtJL','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">����</div></td>
      <td><div align="left">
          <textarea name="txtZZ" cols="20" rows="3"><%=oraRS.fields("ZZ")%></textarea>
          <input name="button32" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td height="18"> <div align="right"><em>��ĵ�Ѩλ��Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td><div align="right">Ѩλ���ƣ�</div></td>
      <td><div align="left">
          <textarea name="txtXWMC" cols="20"></textarea>
          <input name="button423" type="button" class="button1" onClick="showStandard('xuewei','Right','txtXWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">Ѩλ���ͣ�</div></td>
      <td><div align="left">
          <select name="txtXWLX">
		  	<option value="0" selected></option>
            <option value="1" >��Ѩ</option>
            <option value="2">��Ѩ</option>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnXWXX" type="button" class="button1" value="==&gt;" onClick="return btnXWXXOnclick(<%=JLSUM%>)"/>
        </div></td>
      <td colspan="3"> <div align="left">
          <textarea name="txtXWXX" cols="60" rows="4"><%=oraRS.fields("XWXX")%></textarea>
        </div></td>
    </tr>
	<tr>
    	  <td colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸�������Ʒ���¼" onClick="return UpdateRecord(<%=JLSUM%>)">
		  <input type="button" value="ɾ����������Ʒ���¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delCureInfo.asp?Type=1&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  </div></td>
	</tr>	
  </table>
  </form>
</td></tr>
<%
		oraRS.movenext
	loop
	oraRS.close
	
	strSQL="select * from C_ZTLF where LB=1 and YW_ID="&YWID
	set oraRS=oraDB.CreateDynaset(strSQL,0)
%>
<tr>
<td class="title1">���еİ�Ħ�Ʒ���¼�б�<%=oraRS.RecordCount%>��</td>
</tr>
<%	
	JLNUM= 0    	
	oraRS.MoveFirst
    Do Until oraRS.EOF
		JLNUM= JLNUM+1
		JLSUM= JLSUM+1
%>
<tr><td class="title1"><%response.Write(JLNUM)%></td></tr>
<tr><td>
	<form action="updateCureInfo.asp?Type=2&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
    <tr> 
      <td><div align="right">��֤���ƣ�</div></td>
      <td><div align="left"><textarea name="txtBZMC"><%=oraRS.fields("BZMC")%></textarea></div></td>
      <td><div align="right">���Ʋ�����ţ�</div></td>
      <td><input type="text" name="txtZLBZ" value="<%=oraRS.fields("ZLBZ")%>"></td>
    </tr>
    <tr> 
      <td width="15%"><div align="right">��Ħ������</div></td>
      <td width="35%"><div align="left">
          <textarea name="txtFF" rows="3"><%=oraRS.fields("FF")%></textarea>
        </div></td>
      <td width="16%"><div align="right">��Ħ�ַ���</div></td>
      <td width="34%"><div align="left">
          <textarea name="txtSF" rows="3"><%=oraRS.fields("SF")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">��Ħʱ�䣺</div></td>
      <td><div align="left">
          <textarea name="txtQXSJ" rows="3"><%=oraRS.fields("QXSJ")%></textarea>
        </div></td>
      <td><div align="right">��Ħ������</div></td>
      <td><div align="left">
          <textarea name="txtCS" rows="3"><%=oraRS.fields("CS")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">���磺</div></td>
      <td><div align="left">
          <textarea name="txtJL" cols="20" rows="3"><%=oraRS.fields("JL")%></textarea>
          <input name="button422" type="button" class="button1" onClick="showStandard('jingluo','Right','txtJL','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">����</div></td>
      <td><div align="left">
          <textarea name="txtZZ" cols="20" rows="3"><%=oraRS.fields("ZZ")%></textarea>
          <input name="button33" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"><em>��Ħ��Ѩλ��Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td><div align="right">Ѩλ���ƣ�</div></td>
      <td><div align="left">
          <textarea name="txtXWMC" cols="20" rows="3"></textarea>
          <input name="button4232" type="button" class="button1" onClick="showStandard('xuewei','Right','txtXWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">Ѩλ���ͣ�</div></td>
      <td><div align="left">
          <select name="txtXWLX">
		  	<option value="0" selected></option>
            <option value="1">��Ѩ</option>
            <option value="2">��Ѩ</option>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnXWXX" type="button" class="button1" value="==&gt;"  onclick="return btnXWXXOnclick(<%=JLSUM%>)"/>
        </div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtXWXX" cols="60" rows="4"><%=oraRS.fields("XWXX")%></textarea>
        </div></td>
    </tr>
	<tr>
    	  <td colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸�����Ħ�Ʒ���¼" onClick="return UpdateRecord(<%=JLSUM%>)">
		  <input type="button" value="ɾ��������Ħ�Ʒ���¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delCureInfo.asp?Type=2&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  </div></td>
	</tr>
  </table>
  </form>	
</td></tr>
<%
		oraRS.movenext
	loop
	oraRS.close
	
	strSQL="select * from C_XYLF where YW_ID="&YWID
	set oraRS=oraDB.CreateDynaset(strSQL,0)
%>
<tr>
<td class="title1">���е���ҩ�Ʒ���¼�б�<%=oraRS.RecordCount%>��</td>
</tr>
<%	
	JLNUM= 0    	
	oraRS.MoveFirst
    Do Until oraRS.EOF
		JLNUM= JLNUM+1
		JLSUM= JLSUM+1
		
%>
<tr><td class="title1"><%response.Write(JLNUM)%></td></tr>
<tr><td>
	<form action="updateCureInfo.asp?Type=3&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
    <tr> 
      <td><div align="right">��֤���ƣ�</div></td>
      <td><div align="left"><textarea name="txtBZMC"><%=oraRS.fields("BZMC")%></textarea></div></td>
      <td><div align="right">���Ʋ�����ţ�</div></td>
      <td><input type="text" name="txtZLBZ" value="<%=oraRS.fields("ZLBZ")%>"></td>
    </tr>
    <tr> 
      <td width="15%"><div align="right">��ҩ��ʽ��</div></td>
      <td width="35%"><div align="left">
          <textarea name="txtGYFS" cols="20" rows="3"><%=oraRS.fields("GYFS")%></textarea>
          <input name="button22" type="button" class="button1" onClick="showStandard('GEIYFS','Right','txtGYFS','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td width="17%"><div align="right">ҩ�����ƣ�</div></td>
      <td width="33%"><div align="left">
          <textarea name="txtYWMC" cols="20" rows="3"><%=oraRS.fields("YWMC")%></textarea>
          <input name="button23" type="button" class="button1" onClick="showStandard('yaowmcxy','Right','txtYWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">ҩ����ͣ�</div></td>
      <td><div align="left">
          <textarea name="txtYWJX" cols="20" rows="3"><%=oraRS.fields("YWJX")%></textarea>
          <input name="button2" type="button" class="button1" onClick="showStandard('JiXing','Right','txtYWJX','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">��ҩʱ�䣺</div></td>
      <td><div align="left">
          <textarea name="txtGYSJ" rows="3"><%=oraRS.fields("GYSJ")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">����ԭ��</div></td>
      <td><div align="left">
          <textarea name="txtZLYZ" rows="3"><%=oraRS.fields("ZLYZ")%></textarea>
        </div></td>
      <td><div align="right">��ע��</div></td>
      <td><div align="left">
          <textarea name="txtBZ" rows="3"><%=oraRS.fields("BZ")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"><em>ҩ��ĳɷ���Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td rowspan="2"><div align="right">ҩ��ɷ����ƣ�</div></td>
      <td rowspan="2"><div align="left">
          <textarea name="txtYWCFMC" cols="20" rows="3"></textarea>
          <input name="button232" type="button" class="button1" onClick="showStandard('yaowmcxy','Right','txtYWCFMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">ҩ��ɷּ�����</div></td>
      <td><div align="left">
          <textarea name="txtYWCFJL" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">������λ��</div></td>
      <td><div align="left">
          <input type="text" name="txtJLDW" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnYWCFXX" type="button" class="button1" value="==&gt;" onClick="return btnYWCFXXOnclick(<%=JLSUM%>)"/>
        </div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtYWCFXX" cols="60" rows="4"><%=oraRS.fields("YWCFXX")%></textarea>
        </div></td>
    </tr>
	<tr>
    	  <td colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸�����ҩ�Ʒ���¼" onClick="return UpdateXYRecord(<%=JLSUM%>)">
		  <input type="button" value="ɾ��������ҩ�Ʒ���¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delCureInfo.asp?Type=3&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  </div></td>
	</tr>	
  </table>
  </form>
</td></tr>
<%
		oraRS.movenext
	loop
	oraRS.close
	
	strSQL="select * from C_QTLF where YW_ID="&YWID
	set oraRS=oraDB.CreateDynaset(strSQL,0)
%>
<tr>
<td class="title1">���е������Ʒ���¼�б�<%=oraRS.RecordCount%>��</td>
</tr>
<%	
	JLNUM= 0
	oraRS.MoveFirst
    Do Until oraRS.EOF
		JLNUM= JLNUM+1
		JLSUM= JLSUM+1
%>
<tr><td class="title1"><%response.Write(JLNUM)%></td></tr>
<tr><td>
	<form action="updateCureInfo.asp?Type=4&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" class="table3">
  	<tr> 
      <td colspan="4"><div align="center">���ͣ������Ʒ�</div></td>
    </tr>
    <tr> 
      <td> <div align="right">��֤���ƣ�</div></td>
      <td><div align="left"><textarea name="txtBZMC"><%=oraRS.fields("BZMC")%></textarea></div></td>
      <td><div align="right">���Ʋ�����ţ�</div></td>
      <td><input type="text" name="txtZLBZ" value="<%=oraRS.fields("ZLBZ")%>"></td>
    </tr>
    <tr> 
      <td width="16%"><div align="right">��������:</div></td>
      <td width="34%"><div align="left">
          <textarea name="txtFFMC" rows="4"><%=oraRS.fields("FFMC")%></textarea>
        </div></td>
      <td width="17%"><div align="right">��������:</div></td>
      <td width="33%"><div align="left">
          <textarea name="txtFFMS" rows="4"><%=oraRS.fields("FFMS")%></textarea>
        </div></td>
    </tr>
    <tr> 
      <td> <div align="right">����</div></td>
      <td colspan="3"> <div align="left">
          <textarea name="txtZZ" rows="3"><%=oraRS.fields("ZZ")%></textarea>
          <input name="button34" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
	<tr>
    	  <td colspan="4"><div align="center"><input type="submit" name="Submit" value="���¸��������Ʒ���¼" onClick="return UpdateRecord(<%=JLSUM%>)">
		  <input type="button" value="ɾ�����������Ʒ���¼" onClick="if (confirm('ȷ��Ҫɾ����¼ô��')) { window.location='delCureInfo.asp?Type=4&ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  </div></td>
	</tr>
  </table>
  </form>
</td></tr>
<%
		oraRS.movenext
	loop
	oraRS.close
%>
<tr><td align="center" class="title1">�����Ѽӹ������Ƽ�¼��<%=JLSUM%>��</td></tr>
<tr>
<td align="center" class="title1">���һ���µ�������Ϣ��¼</td>
</tr>
<tr><td>
<%JLSUM=JLSUM+1%>
<form name="formCont" action="insertCureInfo.asp?YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
  <INPUT type="hidden" name="pastefield">
  <table width="100%" class="table3">
    <tr> 
      <td><div align="center">�������ͣ� 
            <select name="ZLLX" onChange="inputShow(-1)">
              <option value="0" selected="selected">ҩ���Ʒ�</option>
              <option value="1">����Ʒ�</option>
              <option value="2">��Ħ�Ʒ�</option>
              <option value="3">��ҩ�Ʒ�</option>
              <option value="4">�����Ʒ�</option>
            </select>
          </div></td>
    </tr>
	<tr>
<%
	dim strtmp
	dim RStmp
	strtmp="select JBMC,ZHMC from C_BZZ where YW_ID="&YWID
	set RStmp=oraDB.CreateDynaset(strtmp,0)
	dim JBMING
%>
		<td><div align="center">��֤���ƣ�<select name="txtBZMC">
<%
	RStmp.MoveFirst	
	Do Until RStmp.EOF
		if JBMING<>RStmp.fields("JBMC") then
			JBMING=RStmp.fields("JBMC")
%>
            <option value="<%=JBMING%>"><%=JBMING%></option>
<%	
		end if 
%>
            <option value="<%=RStmp.fields("ZHMC")%>"><%=RStmp.fields("ZHMC")%></option>
<%  
		RStmp.MoveNext
	loop
%>
		</select>
		���Ʋ�����ţ�
		<input type="text" name="txtZLBZ">
		</div>
		</td>
	</tr>    
	<tr> 
      <td id="inputCont"></td>
    </tr>
    <tr> 
      <td ><hr color="#0099CC"/></td>
    </tr>
    <tr>
      <td ><div align="center">
        <input type="submit" name="Submit2" value="����������Ƽ�¼��Ϣ"  onClick="return AddNewRecord()">
      </div></td>
    </tr>
	</table>
</form>
</td></tr>
</table>
<div id="div0"  style="VISIBILITY: hidden;POSITION: absolute; left: 8px; top: 217px;">
	<table border="0" class="table3">
    <tr> 
      <td width="130"><div align="right">��ҩ��ʽ��</div></td>
      <td width="251"><div align="left">
          <textarea name="txtGYFS" cols="20" rows="3"></textarea>
          <input name="button5" type="button" class="button1" onClick="showStandard('GEIYFS','Right','txtGYFS','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td width="134"><div align="right">ҩ�����ƣ�</div></td>
      <td width="247"><div align="left"><textarea name="txtYFMC" rows="3"></textarea></div></td>
    </tr>
    <tr> 
      <td><div align="right">ҩ�����ͣ�</div></td>
      <td><div align="left">
          <textarea name="txtYFJX" cols="20" rows="3"></textarea>
          <input name="button" type="button" class="button1" onClick="showStandard('JiXing','Right','txtYFJX','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">����</div></td>
      <td><div align="left">
          <textarea name="txtZZ" cols="20" rows="3"></textarea>
          <input name="button3" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">��ע��</div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtBZ" cols="60" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"><em>ҩ����ҩ����Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td><div align="right">��ζҩ��</div></td>
      <td><div align="left">
          <input type="text" name="txtYWMC" />
          <input name="button4" type="button" class="button1" onClick="showStandard('Danwy','Right','txtYWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">���Ʒ�����</div></td>
	  <td><div align="left">
	  	  <input type="text" name="txtPZFF" />
          <input name="button4" type="button" class="button1" onClick="showStandard('Paozff','Right','txtPZFF','<%=JLSUM%>');" value="����ѡ��" />		
	  	</div></td>
    </tr>
    <tr>
	  <td><div align="right">ҩ�������</div></td>
      <td><div align="left">
          <input type="text" name="txtYWJL" />
        </div></td>
      <td><div align="right">������λ��</div></td>
      <td><div align="left">
          <input type="text" name="txtJLDW" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnYWXX" type="button" class="button1" value="==&gt;" onClick="return newbtnYWXXOnclick()"/>
        </div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtYWXX" cols="60" rows="4"></textarea>
        </div></td>
    </tr>
  </table>
</div>
<div id="div1"  style="VISIBILITY: hidden;POSITION: absolute; left: 8px; top: 217px;">
	<table width="100%" height="122" border="0" class="table3">
    <tr> 
      <td width="17%"><div align="right">��ķ�����</div></td>
      <td width="33%"><div align="left">
          <textarea name="txtFF" cols="20" rows="3"></textarea>
          <input name="button424" type="button" class="button1" onClick="showStandard('ZHENJFF','Right','txtFF','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td width="17%"><div align="right">�����е�� </div></td>
      <td width="33%"><div align="left">
          <textarea name="txtQXSJ" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">����ַ���</div></td>
      <td><div align="left">
          <textarea name="txtSF" cols="20" rows="3"></textarea>
          <input name="button425" type="button" class="button1" onClick="showStandard('zhencsf','Right','txtSF','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">��̴�����</div></td>
      <td><div align="left">
          <textarea name="txtCS" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">���磺</div></td>
      <td><div align="left">
          <textarea name="txtJL" cols="20" rows="3"></textarea>
          <input name="button42" type="button" class="button1" onClick="showStandard('jingluo','Right','txtJL','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">����</div></td>
      <td><div align="left">
          <textarea name="txtZZ" cols="20" rows="3"></textarea>
          <input name="button32" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td height="18"> <div align="right"><em>��ĵ�Ѩλ��Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td><div align="right">Ѩλ���ƣ�</div></td>
      <td><div align="left">
          <textarea name="txtXWMC" cols="20"></textarea>
          <input name="button423" type="button" class="button1" onClick="showStandard('xuewei','Right','txtXWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">Ѩλ���ͣ�</div></td>
      <td><div align="left">
          <select name="txtXWLX">
		  	<option value="0" selected></option>
            <option value="1" >��Ѩ</option>
            <option value="2">��Ѩ</option>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnXWXX" type="button" class="button1" value="==&gt;" onClick="return newbtnXWXXOnclick()"/>
        </div></td>
      <td colspan="3"> <div align="left">
          <textarea name="txtXWXX" cols="60" rows="4"></textarea>
        </div></td>
    </tr>
  </table>
</div>
<div id="div2" style="VISIBILITY: hidden;POSITION: absolute; left: 8px; top: 217px;">
	<table width="100%" height="120" border="0" class="table3">
    <tr> 
      <td width="15%"><div align="right">��Ħ������</div></td>
      <td width="35%"><div align="left">
          <textarea name="txtFF" rows="3"></textarea>
        </div></td>
      <td width="16%"><div align="right">��Ħ�ַ���</div></td>
      <td width="34%"><div align="left">
          <textarea name="txtSF" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">��Ħʱ�䣺</div></td>
      <td><div align="left">
          <textarea name="txtQXSJ" rows="3"></textarea>
        </div></td>
      <td><div align="right">��Ħ������</div></td>
      <td><div align="left">
          <textarea name="txtCS" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">���磺</div></td>
      <td><div align="left">
          <textarea name="txtJL" cols="20" rows="3"></textarea>
          <input name="button422" type="button" class="button1" onClick="showStandard('jingluo','Right','txtJL','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">����</div></td>
      <td><div align="left">
          <textarea name="txtZZ" cols="20" rows="3"></textarea>
          <input name="button33" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"><em>��Ħ��Ѩλ��Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td><div align="right">Ѩλ���ƣ�</div></td>
      <td><div align="left">
          <textarea name="txtXWMC" cols="20" rows="3"></textarea>
          <input name="button4232" type="button" class="button1" onClick="showStandard('xuewei','Right','txtXWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">Ѩλ���ͣ�</div></td>
      <td><div align="left">
          <select name="txtXWLX">
		  	<option value="0" selected></option>
            <option value="1">��Ѩ</option>
            <option value="2">��Ѩ</option>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnXWXX" type="button" class="button1" value="==&gt;"  onclick="return newbtnXWXXOnclick()"/>
        </div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtXWXX" cols="60" rows="4"></textarea>
        </div></td>
    </tr>
  </table>
</div>
<div id="div3"  style="VISIBILITY: hidden;POSITION: absolute; left: 8px; top: 217px;">
	<table width="100%" height="120" border="0" class="table3">
    <tr> 
      <td width="15%"><div align="right">��ҩ��ʽ��</div></td>
      <td width="35%"><div align="left">
          <textarea name="txtGYFS" cols="20" rows="3"></textarea>
          <input name="button22" type="button" class="button1" onClick="showStandard('GEIYFS','Right','txtGYFS','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td width="17%"><div align="right">ҩ�����ƣ�</div></td>
      <td width="33%"><div align="left">
          <textarea name="txtYWMC" cols="20" rows="3"></textarea>
          <input name="button23" type="button" class="button1" onClick="showStandard('yaowmcxy','Right','txtYWMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">ҩ����ͣ�</div></td>
      <td><div align="left">
          <textarea name="txtYWJX" cols="20" rows="3"></textarea>
          <input name="button2" type="button" class="button1" onClick="showStandard('JiXing','Right','txtYWJX','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">��ҩʱ�䣺</div></td>
      <td><div align="left">
          <textarea name="txtGYSJ" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">����ԭ��</div></td>
      <td><div align="left">
          <textarea name="txtZLYZ" rows="3"></textarea>
        </div></td>
      <td><div align="right">��ע��</div></td>
      <td><div align="left">
          <textarea name="txtBZ" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"><em>ҩ��ĳɷ���Ϣ</em></div></td>
      <td colspan="3"><hr color="#99CCFF"/></td>
    </tr>
    <tr> 
      <td rowspan="2"><div align="right">ҩ��ɷ����ƣ�</div></td>
      <td rowspan="2"><div align="left">
          <textarea name="txtYWCFMC" cols="20" rows="3"></textarea>
          <input name="button232" type="button" class="button1" onClick="showStandard('yaowmcxy','Right','txtYWCFMC','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
      <td><div align="right">ҩ��ɷּ�����</div></td>
      <td><div align="left">
          <textarea name="txtYWCFJL" rows="3"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td><div align="right">������λ��</div></td>
      <td><div align="left">
          <input type="text" name="txtJLDW" />
        </div></td>
    </tr>
    <tr> 
      <td><div align="right"> 
          <input name="btnYWCFXX" type="button" class="button1" value="==&gt;" onClick="return newbtnYWCFXXOnclick()"/>
        </div></td>
      <td colspan="3"><div align="left">
          <textarea name="txtYWCFXX" cols="60" rows="4"></textarea>
        </div></td>
    </tr>
  </table>
</div>
<div id="div4"  style="VISIBILITY: hidden;POSITION: absolute; left: 8px; top: 217px;">
	<table width="100%" height="120" border="0" class="table3">
    <tr> 
      <td width="16%"><div align="right">��������:</div></td>
      <td width="34%"><div align="left">
          <textarea name="txtFFMC" rows="4"></textarea>
        </div></td>
      <td width="17%"><div align="right">��������:</div></td>
      <td width="33%"><div align="left">
          <textarea name="txtFFMS" rows="4"></textarea>
        </div></td>
    </tr>
    <tr> 
      <td> <div align="right">����</div></td>
      <td colspan="3"> <div align="left">
          <textarea name="txtZZ" rows="3"></textarea>
          <input name="button34" type="button" class="button1" onClick="showStandard('GongXiao','Right','txtZZ','<%=JLSUM%>');" value="����ѡ��" />
        </div></td>
    </tr>
  </table>
</div>
<center>
<a href="javascript:history.go(-1)">����</a>
</center>
</body>
</html>
