<link href="health.css" rel="stylesheet">
<script src="effect.js"></script>

<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<html xmlns="">
<body id=body>
<a href=company.html><img src="p5.gif" style="position:absolute;top:20;left:700;"></a>
<br><br><br><br>
<fieldset>
<legend align=center><font face=tahoma>User Message</legend><BR>
<table style="border:1px solid gray" align="center" id=register width=450 cellspacing=0 cellpadding=2>

<br><br>

<br><form method=post action="sendto.jsp">
<TR><TD align=right>From:</td><Td><input name=from readonly value='<%=session.getValue("userid")%>'style='width:350px'></td></tr>
<TR><TD align=right>To:</td><td><input type=hidden value='user_inbox' name=table ><select name=to style='width:350px'>
<%  
try {

ResultSet rs3=st1.executeQuery("select * from users" );
  String name;
  String pid;
String info="no";
session.putValue("fname",info);
while(rs3.next())
{
  name=rs3.getString(1);
  pid = rs3.getString(2);

%>
<option value=<%=name%>><%=pid%> </option>
<%


}
}

 catch(Exception e) 
{
	out.println("<option value='null'>Error Occured or No Users Found</option>");}
%>
</td></tr>
<TR><TD align=right>Subject:</td><td><input name=subject style='width:350px'>
</td></tr>
<TR><Td align=right valign=top>Message:</td><td><textarea name=message rows=5 cols=50 wrap=off style='width:350px;font-family:tahoma;font-size:11px;font-weight:bold;color:lightslategray;border:1px solid gray;background:honeydew;overflow:auto'></textarea></td></tr>
<tr><td colspan=2 align=center><button type=submit>Send It !</button>&nbsp;&nbsp;<button type=reset>Refresh</button></td></tr>
<br>

</fieldset>
</form>

</table>
<br></body></html>
