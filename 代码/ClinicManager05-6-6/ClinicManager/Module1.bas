Attribute VB_Name = "Module1"
Public c_strConnect As String
Public c_strDatabase As String
Public prefixname  As String
Public suffixCondition As String



Public OraSession As Object
Public OraDatabase As OracleInProcServer.OraDatabase

Public ywidtemp As String
Public flag As String
Public LCYJIDtemp As String


Public Sub SaveMessage(recLog As OraDynaset, strMessage As String)
   On Error Resume Next
   
   If InStr(strMessage, "ORA-00001") Then
      strMessage = strMessage & "违反主键唯一性"
   End If
   
   If InStr(strMessage, "ORA-01400") Then
      strMessage = strMessage & "不能插入空值"
   End If
   
   If InStr(strMessage, "ORA-01401") Then
      strMessage = strMessage & "字段太长"
   End If
   
   If InStr(strMessage, "ORA-01722") Then
      strMessage = strMessage & "数字格式错误"
   End If
   
   recLog.Edit
      recLog.Fields("CWXX").Value = strMessage
   recLog.Update

End Sub

Rem this function is used to build the standand error message
Rem Usage: pass four parameters to this function
Public Sub ShowError(strModule As String, strProcedure As String, _
   strAuthor As String, lngErrorNumber As Long, strErrorDescription As String)
   '* Purpose  :  Provide a central error-handling mechanism.
   '* Accepts  :  strModule - the module in which the error was
   '*                encountered (form, class, standard, and so on.)
   '*             strProcedure - the name of the procedure in which
   '*                the error was encountered.
   '*             lngErrorNumber - the numeric identifier of the
   '*                error.
   '*             strErrorDescription - the text description of
   '*                the error.
   On Error GoTo PROC_ERR
   Dim strMessage As String
   Dim strCaption As String

   '* Build the error message.
   strMessage = "Error" & lngErrorNumber & ": " & strErrorDescription & vbCrLf & vbCrLf & _
                "Module: " & strModule & vbCrLf & _
                "Procedure: " & strProcedure & vbCrLf & _
                "Author: " & strAuthor & vbCrLf & vbCrLf

   '* Build the caption for the message box. The caption shows
   '* the version number of the program.
   strCaption = "Unexpected Error! Version: " & _
                Str$(App.Major) & "." & Str$(App.Minor) & "." & _
                Format(App.Revision, "0000")

   MsgBox strMessage, vbCritical, strCaption

PROC_EXIT:
   Exit Sub
   
PROC_ERR:
   Resume Next
   
End Sub

