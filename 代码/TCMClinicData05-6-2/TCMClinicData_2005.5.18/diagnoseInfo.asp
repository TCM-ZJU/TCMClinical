<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>诊疗加工审校页面</title>
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function AddNewRecord()
{
	if(confirm("确定要加入新记录么?"))
	{
		if(document.forms("formCont").txtBZZMC.value=="")
		{
			alert("病证名称不能为空!");
			return false;
		}
		var init = document.forms("formCont").txtZDZBFL.value.indexOf("$")
		if (init !=-1)
		{
			alert("不能有多个诊断指标分类!");
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
		if(document.forms(num).txtBZZMC.value=="")
		{
			alert("病证名称不能为空!");
			return false;
		}
		var init = document.forms(num).txtZDZBFL.value.indexOf("$")
		if (init !=-1)
		{
			alert("不能有多个诊断指标分类!");
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
<td class="title1">已有相关的诊疗信息记录列表：<%=oraRS.RecordCount%>条<br/></td>
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
        	<td><div align="right">病证名称：</div></td>        
  			<td><textarea name="txtBZZMC" cols="30" rows="5"><%=oraRS.fields("BZZMC")%></textarea></td>
        	<td><div align="right">诊断指标分类：</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDZBFL" cols="30" rows="5"><%=oraRS.fields("ZDZBFL")%></textarea>
        		  <input name="button2223" type="button" class="button1" onClick="showStandard('zhendzbfl','Right','txtZDZBFL','<%=JLNUM%>');" value="辅助选词">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">指标权重：</div></td>
        	<td><textarea name="txtZBQZ" cols="30" rows="5"><%=oraRS.fields("ZBQZ")%></textarea></td>
        	<td><div align="right">指标项目：</div></td>
        	<td><div align="left">
        		  <textarea name="txtZBXM" cols="30" rows="5"><%=oraRS.fields("ZBXM")%></textarea>
        		  <input name="button2224" type="button" class="button1" onClick="showStandard('XUEY','Right','txtZBXM','<%=JLNUM%>');" value="辅助选词">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">疗效标准来源：</div></td>
        	<td><textarea name="txtLXBZLY" cols="30" rows="5"><%=oraRS.fields("LXBZLY")%></textarea></td>
        	<td><div align="right">疗效标准：</div></td>
        	<td><div align="left">
        	  <textarea name="txtLXBZ" cols="30" rows="5"><%=oraRS.fields("LXBZ")%></textarea>
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">诊断标准来源：</div></td>
        	<td><textarea name="txtZDBZLY" cols="30" rows="5"><%=oraRS.fields("ZDBZLY")%></textarea></td>
        	<td><div align="right">诊断仪器：</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDYQ" cols="30" rows="5"><%=oraRS.fields("ZDYQ")%></textarea>
        		  <input name="button2227" type="button" class="button1" onClick="showStandard('zhendyq','Right','txtZDYQ','<%=JLNUM%>');" value="辅助选词">
      	  </div></td>
      	</tr>
      	<tr>
			<td><div align="right">中医诊断方法：</div></td>
        	<td><textarea name="txtZYZDFF" cols="30" rows="5"><%=oraRS.fields("ZYZDFF")%></textarea></td>
        	<td><div align="right">总有效率：</div></td>
        	<td><div align="left">
        	  <textarea name="txtZYXL" cols="30" rows="5"><%=oraRS.fields("ZYXL")%></textarea>
      	  </div></td>
      	</tr>
		<tr> 
        	<td height="20" ><div align="right">备注：</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"><%=oraRS.fields("BZ")%></textarea></td>
      	</tr>
	  	<tr>
	  		<td colspan="4"><div align="center"><input type="submit" name="Submit" value="更新该条诊疗记录" onClick="return UpdateRecord(<%=JLNUM%>)"> 
    	  	<input type="button" value="删除该条诊疗记录" onClick="if (confirm('确定要删除记录么？')) { window.location='delDiagnoseInfo.asp?ID=<%=oraRS.fields("ID")%>&YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>';}">
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
<td class="title1"><div align="center">添加一条新的诊疗记录</div></td>
</tr>
<tr>
<td>
	<form name="formCont" action="insertDiagnoseInfo.asp?YWID=<%=YWID%>&BJZT=<%=request("BJZT")%>" method="post">
	<INPUT type="hidden" name="pastefield">
	<table width="100%" border="0" class="table3">
      	<tr> 
        	<td><div align="right">病证名称：</div></td>        
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
        	<td><div align="right">诊断指标分类：</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDZBFL" cols="30" rows="5"></textarea>
        		  <input name="button2223" type="button" class="button1" onClick="showStandard('zhendzbfl','Right','txtZDZBFL','<%=JLNUM%>');" value="辅助选词">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">指标权重：</div></td>
        	<td><textarea name="txtZBQZ" cols="30" rows="5"></textarea></td>
        	<td><div align="right">指标项目：</div></td>
        	<td><div align="left">
        		  <textarea name="txtZBXM" cols="30" rows="5"></textarea>
        		  <input name="button2224" type="button" class="button1" onClick="showStandard('XUEY','Right','txtZBXM','<%=JLNUM%>');" value="辅助选词">
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">疗效标准来源：</div></td>
        	<td><textarea name="txtLXBZLY" cols="30" rows="5"></textarea></td>
        	<td><div align="right">疗效标准：</div></td>
        	<td><div align="left">
        	  <textarea name="txtLXBZ" cols="30" rows="5"></textarea>
      	  </div></td>
      	</tr>
      	<tr> 
        	<td><div align="right">诊断标准来源：</div></td>
        	<td><textarea name="txtZDBZLY" cols="30" rows="5"></textarea></td>
        	<td><div align="right">诊断仪器：</div></td>
        	<td><div align="left">
        		  <textarea name="txtZDYQ" cols="30" rows="5"></textarea>
        		  <input name="button2227" type="button" class="button1" onClick="showStandard('zhendyq','Right','txtZDYQ','<%=JLNUM%>');" value="辅助选词">
      	  </div></td>
      	</tr>
      	<tr>
			<td><div align="right">中医诊断方法：</div></td>
        	<td><textarea name="txtZYZDFF" cols="30" rows="5"></textarea></td>
        	<td><div align="right">总有效率：</div></td>
        	<td><div align="left">
        	  <textarea name="txtZYXL" cols="30" rows="5"></textarea>
      	  </div></td>
      	</tr>
		<tr> 
        	<td height="20" ><div align="right">备注：</div></td>
        	<td height="20" colspan="4" ><textarea name="txtBZ" cols="60" rows="3"></textarea></td>
      	</tr>
	  	<tr>
	  		<td colspan="4"><div align="center"><input type="submit" name="Submit" value="添加该条诊疗记录" onClick="return AddNewRecord()"></div></td> 
	  	</tr>
	</table>
	</form>
</td>
</tr>
</table>
<center>
<a href="javascript:history.go(-1)">返回</a>
</center
></body>
</html>
