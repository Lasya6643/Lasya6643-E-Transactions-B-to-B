<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (producttype) Product Type Modify Form</title>
</head>
<script language="JavaScript">
function formvalid()
{
var typeid=document.products.typeid.value;
var type=document.products.type.value;

if((typeid.length==0)||(type.length==0))
{
alert('fill the form completely')
return false;
}
return true;
}
</script>
</head>
<body>
<img src=images\p1.gif>
<form name=products action=ptypem3.jsp  onSubmit='return formvalid()'>
<br>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Product Type Modification Details</B></TD></TR>
</table>
<%
String typeid= request.getParameter("typeid");
ResultSet rs=st.executeQuery("select * from ptype where typeid ='"+typeid + "'" );
while(rs.next())
{
%>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>Product Type Id</b></td><td>
<input name=typeid type=text size=60 value=<%=rs.getString(1)%>></td></tr>
<tr><td class=td><b>Product Type</b></td><td>
<input name=type type=text size=60 value=<%=rs.getString(2)%>></td></tr>
</table>
<center>
<%}%>
<br>
<input type="submit" value="Update" class=border >
</form>
</body>
</html>
