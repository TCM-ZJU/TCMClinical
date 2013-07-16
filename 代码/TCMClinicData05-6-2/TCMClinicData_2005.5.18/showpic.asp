<%
	Dim OraDatabase
	set OraDatabase = OraSession.getDatabaseFromPool(10)

'	dim tmp_chuchu
'	tmp_chuchu=request("ID")
'	dim tmp_picno
'	tmp_picno=request("strPICNO")
	
	dim strID
	strID=Request("ID")

	if strID="" then
		response.write "<body bgcolor=#f4faed><center><font color=red><b>请选择你要显示的图片！</b></font></center></body>"
		response.end
	end if
	
	Dim PartImage
	dim buffer

	set part = OraDatabase.CreateDynaset("select PIC from PIC_LCYJ where ID=" & strID,0)
	set PartImage = part.Fields("PIC").Value 

	PartImage.Read buffer
	'response.ContentType="image/JPG"
	Response.BinaryWrite buffer
	part.close
	set part=nothing
	set PartImage=nothing	
%>