<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (products) Products Delete Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var type=document.products.type.value;
var details=document.products.details.value;

if((type.length==0) ||(details.length==0))
{
alert('fill the form completely')
return false;
}
return true;
}
</script>
</head>
<body >
<form name=products action=industryd3.jsp>
<img src=images\p1.gif>
<br>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Industry Deletion Details</B></TD></TR>
</table>
<%
String type= request.getParameter("type");
ResultSet rs=st.executeQuery("select * from industry where type ='"+ type+"'");
while(rs.next())
{
%>

<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>Type of Industry</b></td><td>
<input name=type type=text size=60 value=<%=rs.getString(1)%>></td></tr>
<tr><td class=td><b>Details</b></td><td>
<input name=details type=text size=60 value=<%=rs.getString(2)%>></td></tr>


<%}%>
</table>
<center>
<input type="submit" value="Delete" class=border >
</form>
</body>
</html>