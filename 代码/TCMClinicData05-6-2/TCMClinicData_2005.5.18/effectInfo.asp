<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>疗效观察加工审校页面</title>
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function AddNewRecord()
{
	if(confirm("确定要加入新记录么?"))
	{
		var init = document.forms("formCont").txtJCXM.value.indexOf("$")
		if (init !=-1)
		{
			alert("不能有多个检查项目!");
			return false;
		}	
		return true;
	}
	else
		return false;
}
function UpdateRecord(num)
{
	if(confirm("确定要更新记录么?"))
	{
		var init = document.forms(num).txtJCXM.value.indexOf("$")
		if (init !=-1)
		{
			alert("不能有多个检查项目!");
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
	strSQL="select * from C_SYJC where YW_ID="&YWID
	
	dim oraDB
	set oraDB=OraSession.GetDatabaseFromPool(60)
	dim oraRS 
	set oraRS=oraDB.CreateDynaset(strSQL,0)
	
%>
<form>
<INPUT type="hidden" name="pastefield">
</form>
<table width="800" align="center" class="table2">
<tr>
<td class="title1">已有相关的疗效信息记录列表：<%=oraRS.RecordCount%>条<br/></td>
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
	<div align="center" style="width: 790px;">
	<form action="updateEffectInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" border="0" class="table3">
      	<tr> 
        	<td height="40"><div align="right">检查项目：</div></td>
        	<td><textarea name="txtJCXM" cols="30" rows="5"><%=oraRS.fields("JCXM")%></textarea>
        		<input name="button2225" type="button" class="button1" onClick="showStandard('zhendzbfl','Right','txtJCXM','<%=JLNUM%>');" value="辅助选词"></td>
        	<td><div align="right">时间（疗程）：</div></td>
        	<td><textarea name="txtJCSJ" cols="30" rows="5"><%=oraRS.fields("JCSJ")%></textarea></td>
      	</tr>
      	<tr> 
        	<td><div align="right">变化指标：</div></td>
        	<td><textarea name="txtBHZB" cols="30" rows="5"><%=oraRS.fields("BHZB")%></textarea>
        		<input name="button2226" type="button" class="button1" onClick="showStandard('XUEY','Right','txtBHZB','<%=JLNUM%>');" value="辅助选词"></td>
        	<td><div align="right">观察分组：</div></td>
        	<td><textarea name="txtGCFZ" cols="30" rows="5"><%=oraRS.fields("GCFZ")%></textarea> 
        </td>
      	</tr>
		<tr> 
        	<td height="20" ><div align="right">备注：</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"><%=oraRS.fields("BZ")%></textarea></td>
      	</tr>
	    <tr>
	  		<td height="16" colspan="4"><div align="center"><input type="submit" name="Submit" value="更新该条疗效记录" onClick="return UpdateRecord(<%=JLNUM%>)">
			<input type="button" value="删除该条疗效记录" onClick="if (confirm('确定要删除记录么？')) { window.location='delEffectInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
    	  	</div></td>
	  	</tr>
	</table>
	</form>
	</div>
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
<td class="title1"><div align="center">添加一条新的疗效观察记录</div></td>
</tr>
<tr>
<td height="260">
	<form name="formCont" action="insertEffectInfo.asp?YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" border="0" class="table3">
      	<tr> 
        	<td height="40"><div align="right">检查项目：</div></td>
        	<td><textarea name="txtJCXM" cols="30" rows="5"></textarea>
        		<input name="button2225" type="button" class="button1" onClick="showStandard('zhendzbfl','Right','txtJCXM','<%=JLNUM%>');" value="辅助选词"></td>
        	<td><div align="right">时间（疗程）：</div></td>
        	<td><textarea name="txtJCSJ" cols="30" rows="5"></textarea></td>
      	</tr>
      	<tr> 
        	<td><div align="right">变化指标：</div></td>
        	<td><textarea name="txtBHZB" cols="30" rows="5"></textarea>
        		<input name="button2226" type="button" class="button1" onClick="showStandard('XUEY','Right','txtBHZB','<%=JLNUM%>');" value="辅助选词"></td>
        	<td><div align="right">观察分组：</div></td>
        	<td><textarea name="txtGCFZ" cols="30" rows="5"></textarea> 
        </td>
      	</tr>
		<tr> 
        	<td height="20" ><div align="right">备注：</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"></textarea></td>
      	</tr>
	    <tr>
	  		<td height="16" colspan="4"><div align="center"><input type="submit" name="Submit" value="添加该条疗效记录" onClick="return AddNewRecord()"></div></td>
	  	</tr>
	</table>
	</form></td>
</tr>
</table>
<center>
<a href="javascript:history.go(-1)">返回</a>
</center>
</body>
</html>
