<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript">
<!--
	var str
	function add()
	{
		var res
		str=str+"<option>"+document.forms["form1"].textfield.value+"</option>";
		res="haha.innerHTML='<select>"+str+"</select>'";
		eval(res);
	}
-->
</script>
</head>
<body>
<form name="form1">
<input type="text" name="textfield">
<input type="button" name="Submit" value="Submit" onClick="return add()">
<%
dim string
string="[疾病名称]感冒[原发病]发烧头痛"
i=Len("[疾病名称]")
j=InStr(string,"[")
response.write(i)
response.write(" ::::")
response.write(j)

%>
<table>
<tr>
<td id="haha">
</td>
</tr>
</table>
</form>
</body>
</html>
