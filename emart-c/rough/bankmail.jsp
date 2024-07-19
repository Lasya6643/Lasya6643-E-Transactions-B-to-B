<link href="health.css" rel="stylesheet">
<script src="effect.js"></script>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
</head>
<body background=BAK.JPG >

<br><br><br><br><br>
<fieldset>
<legend align=center><font color=blue face=tahoma>Bank Send Message/Mail</legend><BR>
<table style="border:1px solid gray" align="center" id=register width=450 cellspacing=0 cellpadding=2>

<br><form method=post action="sendto.jsp">
<%
String u = session.getValue("userid").toString();
%>
<TR><TD align=right>From:</td><Td><input name=from readonly value=<%=u%>   style='width:350px'></td></tr>
<TR><TD align=right>To:</td><td><input type=hidden value='user_inbox' name=table><select name=to style='width:350px'><option value=admin>Administrator</option>
<%  
try {

  st=con.createStatement();
ResultSet rs=st.executeQuery("select banid from banks where banid = '" + u + "'");

  while(rs.next()) {
	  String name=rs.getString("password");
	  out.println("<option value='"+name+"'>"+name+"</option>");}
} catch(Exception e) {
	out.println("<option value='null'>Error Occured or No Users Found</option>");}
%>
</td></tr>
<TR><TD align=right>Subject:</td><td><input name=subject style='width:350px'></td></tr>
<TR><Td align=right valign=top>Message:</td><td><textarea name=message rows=5 cols=50 wrap=off style='width:350px;font-family:tahoma;font-size:11px;font-weight:bold;color:lightslategray;border:1px solid gray;background:honeydew;overflow:auto'></textarea></td></tr>
<tr><td colspan=2 align=center><button type=submit>Send It !</button>&nbsp;&nbsp;<button type=reset>Refresh</button></td></tr>
</form></table><br></fieldset></body></html>
