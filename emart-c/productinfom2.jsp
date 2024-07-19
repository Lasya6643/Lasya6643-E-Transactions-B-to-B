<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<%
ResultSet rs1=st1.executeQuery("select * from ptype");
%>
<head>
<title> (products) Products Delete Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var company=document.products.company.value;
var productid=document.products.productid.value;
var name=document.products.name.value;
var details=document.products.details.value;
var image=document.products.image.value;
var typeid=document.products.typeid.value;

if((company.length==0) || (productid.length==0) || (name.length==0) || (details.length==0) || (image.length==0)|| (typeid.length==0))
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
<form name=products action=productinfom3.jsp>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Products Modification Details</B></TD></TR>
</table>
<%
String company= request.getParameter("company");

ResultSet rs=st.executeQuery("select * from products where company='"+company+"'");

while(rs.next())
{
%>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>Company Name</b></td><td>
<input name=company type=text size=60 value=<%=rs.getString(1)%>></td></tr>
<tr><td class=td><b>Product Id</b></td><td>
<input name=productid type=text size=60 value=<%=rs.getString(2)%>></td></tr>
<tr><td class=td><b>Name</b></td><td>
<input name=name type=text size=60 value=<%=rs.getString(3)%>></td></tr>
<tr><td class=td><b>Details</b></td><td>
<input name=details type=text size=60 value=<%=rs.getString(4)%>></td></tr>
<tr><td class=td><b>Image</b></td><td>
<input name=image type=text size=60 value=<%=rs.getString(5)%>></td></tr>
<tr> 
<td class=td> 
<b>Product Type Id</b>
</td>
<td class=td> 
<select name="typeid">
<%while(rs1.next()){%>
<option value=<%=rs1.getString(1)%>><%=rs1.getString(2)%></option>
<%}%>
</select>
</td>
</tr>
<%}%>
</table>
<center>
<input type="submit" value="Update" class=border >
</form>
</body>
</html>
