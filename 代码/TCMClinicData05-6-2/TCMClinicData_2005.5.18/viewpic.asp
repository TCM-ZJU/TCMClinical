<%@ Language=VBScript %>
<html>
<head>
<script language="JavaScript">
<!--
function feelScroll() {

	if(IE) {
		diffY = document.body.scrollTop; diffX = document.body.scrollLeft;
	}

	if(NS) {
		diffY = self.pageYOffset; diffX = self.pageXOffset;
	}
	
	if(diffY != lastScrollY) {
		percent = .1 * (diffY - lastScrollY);
		
		if(percent > 0)
			percent = Math.ceil(percent);
		else
			percent = Math.floor(percent);
			
		if(IE)
			document.all.zoombar.style.pixelTop += percent;
		if(NS)
			document.zoombar.top += percent;
		
		lastScrollY = lastScrollY + percent;
	}
	
	if(diffX != lastScrollX) {
		percent = .1 * (diffX - lastScrollX);
		if (percent > 0)
			percent = Math.ceil(percent);
		else
			percent = Math.floor(percent);
		
		if (IE)
			document.all.zoombar.style.pixelLeft += percent;
		if (NS)
			document.zoombar.left += percent;
		
		lastScrollX = lastScrollX + percent;
	}
}

NS = (document.layers) ? 1 : 0;
IE = (document.all) ? 1: 0;
lastScrollX = 0; lastScrollY = 0;

window.setInterval("feelScroll()",1);
-->
</script>
</head>
<body bgcolor=#e5f0ff>

<!--------------------主图片在这里--------------------->
<img border="1" style="top:50px;position:absolute;" name=picture src="showpic.asp?ID=<%=Request("ID")%>">
<!----------------------------------------------------->

<script language="JavaScript">
var intWidth=document.picture.width,intHeight=document.picture.height,intRatio=1.0,intStep=100/document.picture.width;
</script>

<div id="zoombar" style="left:120px;top:10px;height:50px;width:70px;position:absolute;z-order:1000">
<table bgcolor="#fef4d9" cellpadding="3" style="border-collapse: collapse; border: 1px double orange">
<tr>
<td>
<table cellpadding=3 cellspacing=0>
<tr>
<td>&nbsp;</td>
<td><input type=button value="放大" onclick="javascript:zoomOut();" style="border: 1 double black; background-color: #FFFFFF" onmouseover="this.style.backgroundColor='#FFC864'" onmouseout="this.style.backgroundColor='#FFFFFF'"></td>
<td><input type=button value="缩小" onclick="javascript:zoomIn();" style="border: 1 double black; background-color: #FFFFFF" onmouseover="this.style.backgroundColor='#FFC864'" onmouseout="this.style.backgroundColor='#FFFFFF'"></td>
<td><input type=button value="复原" onclick="javascript:restore();" style="border: 1 double black; background-color: #FFFFFF" onmouseover="this.style.backgroundColor='#FFC864'" onmouseout="this.style.backgroundColor='#FFFFFF'"></td>
<td><input type=button value="自动" title="自动充满整个宽度，只适用于最大化的窗口" onclick="javascript:auto();" style="border: 1 double black; background-color: #FFFFFF" onmouseover="this.style.backgroundColor='#FFC864'" onmouseout="this.style.backgroundColor='#FFFFFF'"></td>
<td>&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</div>

<script language="JavaScript">
<!--
function zoomOut() {
	intRatio+=intStep;
	document.picture.width=intWidth*intRatio;
	document.picture.height=intHeight*intRatio;
}

function zoomIn() {
	intRatio-=intStep;
	document.picture.width=intWidth*intRatio;
	document.picture.height=intHeight*intRatio;
}

function restore() {
	intRatio=1;
	document.picture.width=intWidth;
	document.picture.height=intHeight;
}

function auto() {
	var intPWidth=screen.width-window.screenLeft;
//	alert(screen.width);
	intRatio=(screen.width-window.screenLeft-50)/document.picture.width;
	document.picture.width=intWidth*intRatio;
	document.picture.height=intHeight*intRatio;
//	alert("开发中...^_^");
}
-->
</script>

</body>
</html>