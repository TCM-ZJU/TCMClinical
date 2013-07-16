<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<title>主表一般信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function chkUgyOnclick()
{
	if (document.forms("formCont").chkUrgency.checked)
	{
		eval("isUrgency.innerHTML=divUgy.innerHTML");
		document.forms("formCont").chkUrgency.value=1;
	}
	else if(confirm("你确定不改变急门诊的信息么？"))
	{
		eval("isUrgency.innerHTML=divEmpty.innerHTML");
		document.forms("formCont").chkUrgency.value=0;
	}
	else
		document.forms("formCont").chkUrgency.checked=true;
}
function chkDZZOnclick()
{
	if (document.forms("formCont").chkDZZ.checked)
	{
		eval("isDZZ.innerHTML=divDZZ.innerHTML");
		document.forms("formCont").chkDZZ.value=1;
	}
	else if(confirm("你确定不改变对照组的信息么？"))
	{
		eval("isDZZ.innerHTML=divEmpty.innerHTML");
		document.forms("formCont").chkDZZ.value=0;
	}
	else
		document.forms("formCont").chkDZZ.checked=true;
}
function btnUgyOnclick()
{
	var temp;
	temp=document.forms("formCont").txtDQ.value;
	temp=temp+"("+document.forms("formCont").txtProvince.value+";";
	temp=temp+document.forms("formCont").txtCity.value+";";
	temp=temp+document.forms("formCont").txtCounty.value+";";
	temp=temp+document.forms("formCont").txtTown.value+";";
	temp=temp+document.forms("formCont").txtVillage.value+")";
	document.forms("formCont").txtDQ.value=temp;
	document.forms("formCont").txtVillage.value="";

}
function btnDZZOnclick()
{
	var temp;
	temp=document.forms("formCont").txtDZZXX.value;
	temp=temp+"("+document.forms("formCont").txtDZZMC.value+";";
	temp=temp+document.forms("formCont").txtDZZLS.value+";";
	temp=temp+document.forms("formCont").txtDZZNL.value+";";
	temp=temp+document.forms("formCont").txtDZZZL.value+";";
	temp=temp+document.forms("formCont").txtDZZJC.value+")";
	document.forms("formCont").txtDZZXX.value=temp;
	document.forms("formCont").txtDZZMC.value="";
	document.forms("formCont").txtDZZLS.value="";
	document.forms("formCont").txtDZZNL.value="";
	document.forms("formCont").txtDZZZL.value="";
	document.forms("formCont").txtDZZJC.value="";
}
function UpdateRecord()
{
	if(confirm("确定要更新记录么?"))
		return true;
	else
		return false;
}

var standard;
function showStandard(strTable,strPos,txtTarget)
{
	var left;
	
	if (strPos=="left")
		left=screen.width-280;
	else
		left=0;

	document.forms(0).pastefield.value=txtTarget;

	if (standard=='[object]')
		standard.close();
			
	standard=window.open("/starch/wizard.asp?table="+strTable,"standard","width=310,height=500,left="+left+",top=25,toolbar=no,scrollbars=yes");
	
	if ((document.forms(0).window!=null) && (!standard.opener))
		standard.opener=document.forms(0).window;
		
	standard.focus();
}
//-->
</script>
</head>

<body class="body">
<%
	dim ID
	ID=request("YJID")
	dim strSQL
	strSQL="select * from C_LCYJ where ID="&ID
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
%>
<div id="divEmpty" style="VISIBILITY: hidden;"></div>

<div align="center" id="divUgy"  style="VISIBILITY: hidden; POSITION: absolute; width: 780px; height: 96px; left: 817px; top: 4px;" class="body"> 
  <table width="100%" height="120" border="0" class="table3">
    <tr> 
      <td width="15%"><div align="right">病因：</div></td>
      <td width="35%"><textarea name="txtBY" cols="20" rows="3"><%=oraRS.fields("J_BY")%></textarea> 
        <input name="button2" type="button" class="button1" onClick="showStandard('xijun','Right','txtBY');" value="辅助选词"></td>
      <td width="16%"><div align="right">传染源：</div></td>
      <td width="34%"><textarea name="txtCRY" rows="3"><%=oraRS.fields("J_CRY")%></textarea></td>
    </tr>
    <tr> 
      <td><div align="right">传染途径：</div></td>
      <td><textarea name="txtCRTJ" rows="3"><%=oraRS.fields("J_CRTJ")%></textarea></td>
      <td><div align="right">相关因素：</div></td>
      <td><textarea name="txtXGYS" rows="3"><%=oraRS.fields("J_XGYS")%></textarea></td>
    </tr>
    <tr> 
      <td><div align="right">地区：</div></td>
      <td colspan="3"><input name="txtProvince" type="text" size="8">
        省（自治区） 
        <input name="txtCity" type="text" size="8">
        市（地区） 
        <input name="txtCounty" type="text" size="8">
        县 
        <input name="txtTown" type="text" size="8">
        镇 
        <input name="txtVillage" type="text" size="8">
        村</td>
    </tr>
    <tr> 
      <td><div align="right"></div></td>
      <td><div align="right"> 
          <input name="btnUgy" type="button" class="button1" value="==>" onClick="return btnUgyOnclick()">
        </div></td>
      <td colspan="2"><div align="right"></div>
        <textarea name="txtDQ" cols="42" rows="3"><%=oraRS.fields("J_DQ")%></textarea></td>
    </tr>
  </table>
</div>

<div align="center" id="divDZZ"  style="VISIBILITY: hidden; POSITION: absolute; width: 790px; left: 818px; top: 10px;"> 
  <table width="100%" height="120" border="0" class="table3">
      <tr> 
        <td height="25"><div align="right">名称：</div></td>
        <td><textarea name="txtDZZMC" cols="30" rows="3"></textarea></td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="25"> <div align="right">例数：</div></td>
        <td><input name="txtDZZLS" type="text" size="30">
          例</td>
        <td colspan="2"><div align="right">年龄：</div></td>
        <td><textarea name="txtDZZNL" cols="24" rows="3"></textarea>
        <input name="button3" type="button" class="button1" onClick="showStandard('nianling','Right','txtDZZNL');" value="辅助选词"></td>
      </tr>
      <tr> 
        <td height="4"> <div align="right">治疗药物：</div></td>
        <td><textarea name="txtDZZZL" cols="24" rows="4"></textarea>
        <input name="button22" type="button" class="button1" onClick="showStandard('FangJi','Right','txtDZZZL');" value="辅助选词"></td>
        <td colspan="2"><div align="right">检测：</div></td>
        <td><textarea name="txtDZZJC" cols="30" rows="4"></textarea></td>
      </tr>
      <tr> 
        <td height="25"><div align="right"> 
            <input name="btnDZZ" type="button" class="button1" value="==>" onClick="return btnDZZOnclick()">
          </div></td>
        <td height="25" colspan="4"><textarea name="txtDZZXX" cols="60" rows="4"><%=oraRS.fields("DZZXX")%></textarea></td>
      </tr>
</table>
</div>

<form name="formCont" action="updateMainInfo.asp?YJID=<%=ID%>&BJZT=<%=request("BJZT")%>" method="post">
<INPUT type="hidden" name="pastefield">
<table width="800" height="115" border="0" align="center" class="table2">
      <tr> 
        <td height="18" colspan="4" class="title1">临床研究基本信息</td>
        <input name="WorkStep" type="hidden">
      </tr>
      <tr> 
        <td height="5" colspan="4" id="isMain">
		<table width="100%" height="120" border="0" class="table3">
      		<tr> 
        		<td width="140" height="31"> <div align="right">研究名称：</div></td>
        		<td width="260"><textarea name="txtYJMC" cols="30" rows="3" readonly><%=oraRS.fields("LCYJMC")%></textarea></td>
        		<td colspan="2"><div align="right">病例采集时间：</div></td>
        		<td width="246"><div align="left"> 
            	<textarea name="txtCJSJ" cols="30" rows="3"><%=oraRS.fields("BLCJSJ")%></textarea>
          		</div></td>
      		</tr>
      		<tr> 
        		<td height="41"> 
          		<div align="right">观察组总例数：</div></td>
        		<td><input name="txtZLS" type="text" size="30" value="<%=oraRS.fields("GCZZLS")%>">
          		例</td>
        		<td width="88" rowspan="2"><div align="right">性别</div></td>
        		<td width="40" rowspan="2"><div align="right">男：<br/>
            	女：</div></td>
        		<td rowspan="2"><input name="txtMLS" type="text" id="txtMLS" value="<%=oraRS.fields("MGCLS")%>" size="30">
          		例<br/> <input name="txtFLS" type="text" id="txtFLS" value="<%=oraRS.fields("FGCLS")%>" size="30">
          		例</td>
      		</tr>
      		<tr> 
        		<td height="21"> <div align="right">年龄组：</div></td>
        		<td><textarea name="txtNLZ" cols="20" rows="3" id="txtCase4"><%=oraRS.fields("NLZ")%></textarea>
        		<input type="button" class="button1" onClick="showStandard('nianling','Right','txtNLZ');" value="辅助选词"></td>
      		</tr>
      		<tr> 
        		<td height="51"> <div align="right">研究方法：</div>
        	  	<div align="right"><br/>
          		</div></td>
        	<td><textarea name="txtYJFF" cols="20" rows="4" id="txtYJFF"><%=oraRS.fields("YJFF")%></textarea>
        	<input name="button" type="button" class="button1" onClick="showStandard('yanjff','Right','txtYJFF');" value="辅助选词"> 
      		</td>
        	<td colspan="2"><div align="right">研究分组：</div></td>
        	<td><textarea name="txtYJFZ" cols="30" rows="4" id="txtYJFZ"><%=oraRS.fields("YJFZ")%></textarea></td>
      	</tr>
      	<tr> 
        	<td height="67"> <div align="right">结果：</div></td>
        	<td colspan="4"><textarea name="txtJG" cols="60" rows="4" id="txtJG"><%=oraRS.fields("JG")%></textarea></td>
      	</tr>
      	<tr> 
        	<td height="34"> <div align="right">临床研究单位：</div></td>
        	<td colspan="4"><textarea name="txtYJDW" cols="60" rows="3" id="txtYJDW"><%=oraRS.fields("LCYJDW")%></textarea></td>
      	</tr>
      	<tr> 
        	<td height="20" ><div align="right">备注：</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"><%=oraRS.fields("BZ")%></textarea></td>
      	</tr>
		</table>
		</td>
      </tr>
      <tr> 
        <td height="18" colspan="4" class="title1"><input type="checkbox" name="chkUrgency" onClick="return chkUgyOnclick()">
        流行病学</td>
      </tr>
      <tr> 
        <td height="5" colspan="4" id="isUrgency"></td>
      </tr>
      <tr> 
        <td height="18" colspan="4" class="title1"><input type="checkbox" name="chkDZZ" value="0" onClick="return chkDZZOnclick()">
        对照组信息</td>
      </tr>
	  <tr> 
        <td height="5" colspan="4" id="isDZZ"></td>
      </tr>
	  <tr>
	    <td><div align="center">
	      <input type="submit" name="Submit" value="更新一般主表信息" onClick="return UpdateRecord()">
	    </div></td>
    </tr>
</table>
</form>
<center>
<a href="javascript:history.go(-1)">返回</a>
</center>
</body>
</html>
