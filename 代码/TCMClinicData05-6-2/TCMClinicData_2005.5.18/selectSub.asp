<%@ Language=VBScript %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>临床研究记录选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="common.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function OKOnclick()
{
	var len,condition="";
	if(document.forms("formCont").chkTitle.checked)
		condition="LCYJMC like '%"+document.forms("formCont").txtTitle.value+"%' and ";
	if(document.forms("formCont").chkSort.checked)
		condition=condition+"YJFL='"+document.forms("formCont").txtSort.value+"' and ";
	if(document.forms("formCont").chkPerson.checked)
		condition=condition+"LRRY='"+document.forms("formCont").txtPerson.value+"' and ";
	if(document.forms("formCont").chkDate.checked)
		condition=condition+"LRRQ"+document.forms("formCont").comDate.value+"TO_DATE('"+document.forms("formCont").txtDate.value+"','YYYY-MM-DD') and ";
	if(document.forms("formCont").chkLabel.checked)
		condition=condition+"ZTBZ like '"+document.forms("formCont").txtLabel.value+document.forms("formCont").txtLabelend.value+"%' and ";
	if(document.forms("formCont").chkState.checked)
		condition=condition+"BJZT='"+document.forms("formCont").txtState.value+"' and ";
	if(document.forms("formCont").chkPic.checked)
		condition=condition+"TPZT='"+document.forms("formCont").txtPic.value+"' and ";
	if(document.forms("formCont").chkUnit.checked)
		condition=condition+"JGDW='"+document.forms("formCont").txtUnit.value+"' and ";
	if(document.forms("formCont").chkMagazine.checked)
	{
		condition=condition+"QKMC like '"+document.forms("formCont").txtMagazine.value+"' and ";
		condition=condition+"QS like '"+document.forms("formCont").txtYear.value+"-"+document.forms("formCont").txtMonth.value+"%' and ";
	}	
	if(condition.length!=0)
	{
		len=condition.length-4;
		condition=condition.substring(0,len);
	}
	if(document.forms("formCont").chkReverse[1].checked)
	{
		condition="not ("+condition+")";
	}
	document.forms("formCont").Condition.value = condition;
	//alert(condition);
	formCont.submit();
}
//-->
</script>
</head>

<body class="body">
<center>
<form name="formCont" action="subList.asp?offset=1" method="post">
	<table width="600" border="0" align="center" class="table1">
      <tr> 
        <td colspan="2" class="title1">选择录入或审校的文题</td>
      </tr>
      <tr> 
        <td width="147"><div align="right"> 
            <input type="checkbox" name="chkTitle" value="checkbox">
            文题名称：</div></td>
        <td width="439"><input name="txtTitle" type="text" size="40"></td>
      </tr>
      <tr> 
        <td><div align="right"> 
            <input type="checkbox" name="chkSort" value="checkbox">
            专题分类：</div></td>
        <td><select name="txtSort">
            <option value="呼吸专题">呼吸专题</option>
            <option value="神经专题">神经专题</option>
            <option value="急门诊专题">急门诊专题</option>
			<option value="传染病专题">传染病专题</option>
			<option value="临床专题">临床专题</option>
          </select></td>
      </tr>
      <tr> 
        <td><div align="right"> 
            <input type="checkbox" name="chkPerson" value="checkbox">
            录入人员：</div></td>
        <td><input type="text" name="txtPerson"></td>
      </tr>
      <tr> 
        <td height="21"> <div align="right"> 
            <input type="checkbox" name="chkDate" value="checkbox">
            录入日期：</div></td>
        <td><select name="comDate">
            <option value="&lt;" selected>早于</option>
            <option value="=">正值</option>
            <option value="&gt;">晚于</option>
          </select> <input type="text" name="txtDate">
          (YYYY-MM-DD)</td>
      </tr>
      <tr> 
        <td height="21"><div align="right"> 
            <input type="checkbox" name="chkLabel" value="checkbox">
            状态标志：</div></td>
        <td><select name="txtLabel">
			<option value="WJG:">未加工</option>
            <option value="WWC:">未完成</option>
            <option value="YSC:">应删除</option>
            <option value="YWC:">已完成</option>
            <option value="YSJ:">已审校</option>
			<option value="YZS:">已终审</option>
          </select>
          <input type="text" name="txtLabelend"></td>
      </tr>
      <tr> 
        <td height="21"> <div align="right"> 
            <input type="checkbox" name="chkState" value="checkbox">
            加工状态：</div></td>
        <td><select name="txtState">
            <option value="0" selected>未加工</option>
            <option value="1">已加工</option>
            <option value="2">已初审</option>
          </select></td>
      </tr>
      <tr> 
        <td><div align="right"> 
            <input type="checkbox" name="chkPic" value="checkbox">
            图片状态：</div></td>
        <td><select name="txtPic">
            <option value="0" selected>未上传</option>
            <option value="1">已上传</option>
          </select></td>
      </tr>
      <tr> 
        <td><div align="right"> 
            <input type="checkbox" name="chkUnit" value="checkbox">
            加工单位：</div></td>
        <td><select name="txtUnit">
            <option value="广州">广州</option>
            <option value="河南1">河南1</option>
            <option value="河南2">河南2</option>
            <option value="黑龙江">黑龙江</option>
            <option value="吉林">吉林</option>
            <option value="江西">江西</option>
            <option value="辽宁">辽宁</option>
            <option value="南京">南京</option>
            <option value="山西">山西</option>
            <option value="陕西">陕西</option>
            <option value="上海">上海</option>
            <option value="重庆药">重庆药</option>
            <option value="重庆医">重庆医</option>
            <option value="浙江">浙江</option>
            <option value="湖南">湖南</option>
            <option value="未分配">未分配</option>
          </select></td>
      </tr>
      <tr> 
        <td><div align="right">
            <input type="checkbox" name="chkMagazine" value="checkbox">
            期刊名称：</div></td>
        <td><input type="text" name="txtMagazine">
          <select name="txtYear">
	<%  for i=1980 to 2010	%>
		<option value="<%=i%>"><%=i%></option>
	<%	next %>
          </select>
          年 
          <input name="txtMonth" type="text" id="txtMonth" size="4">
          期 </td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
		<input name="chkReverse" type="radio" value="yes" checked>满足以上选择条件
		<input name="chkReverse" type="radio" value="no">不满足以上选择条件(反查)</div></td>
      </tr>
      <tr> 
        <td colspan="2"><div align="center"> 
            <input name="OK" type="button" class="button1" value="确定" onClick="return OKOnclick()">
            <input name="Cancel" type="reset" class="button1" value="取消">
            <input name="Condition" type="hidden" value="">
          </div></td>
      </tr>
    </table>
</form>
</center>
<hr color="#6699CC">
<center><BR><FONT size=2>TCM Online Co. Ltd.</FONT></center>
<SCRIPT language=JavaScript src="fresh/connect.js"></SCRIPT>
<SCRIPT language=JavaScript>
	createConnect("connectForClinic");
</SCRIPT>
</body>
</html>
