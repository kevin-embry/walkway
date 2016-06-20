<html>
<body>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.open "DSN=mydsn;UID=sb;PWD="

set rs=Server.createObject("ADODB.recordset")

sql="INSERT INTO marathon(fname,lname,email,address,city,state,zip)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("fname") & "',"
sql=sql & "'" & Request.Form("lname") & "',"
sql=sql & "'" & Request.Form("email") & "',"
sql=sql & "'" & Request.Form("address") & "',"
sql=sql & "'" & Request.Form("city") & "',"
sql=sql & "'" & Request.Form("state") & "',"
sql=sql & "'" & Request.Form("zip") & "')"
rs.open sql,conn

on error resume next

if err.number > 0 then
	Response.Write("No update!")
else
	Response.Write("<p>record added</p>")
end if
conn.close
%>

</body>
</html>