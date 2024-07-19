<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (directory) Directory Modification Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var company=document.products.company.value;
var address=document.products.address.value;
var country=document.products.country.value;
var state=document.products.state.value;
var city=document.products.city.value;
var pincode=document.products.pincode.value;
var phone=document.products.phone.value;
var mobile=document.products.mobile.value;
var email=document.products.email.value;
var website=document.products.website.value;
var bprofile=document.products.bprofile.value;
var pprofile=document.products.pprofile.value;

if((company.length==0) || (address.length==0) || (country.length==0) || (state.length==0) || (city.length==0)||(pincode.length==0) || (phone.length==0) || (mobile.length==0) || (email.length==0) || (website.length==0)|| (bprofile.length==0) || (pprofile.length==0))
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
<form name=products action=directoryd3.jsp>

<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Directory Deletion Details</B></TD></TR>
</table>
<%
String company= request.getParameter("company");

ResultSet rs=st.executeQuery("select * from directory where company='"+company+"'");

while(rs.next())
{
%>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>Company</b></td><td><input name=company value=<%=rs.getString(1)%> type=text  size=60></td></tr>
<tr><td class=td><b>Address</b></td><td><input name=address value=<%=rs.getString(2)%> type=text  size=60></td></tr>
<tr><td class=td><b>Country</b></td><td><input name=country value=<%=rs.getString(3)%> type=text  size=60></td></tr>
<tr><td class=td><b>State</b></td><td><input name=state value=<%=rs.getString(4)%> type=text size=60></td></tr>
<tr><td class=td><b>City</b></td><td><input name=city type=text value=<%=rs.getString(5)%> size=60></td></tr>
<tr><td class=td><b>Pincode</b></td><td><input name=pincode value=<%=rs.getInt(6)%> type=text size=60></td></tr>
<tr><td class=td><b>Phone</b></td><td><input name=phone type=text value=<%=rs.getInt(7)%>  size=60></td></tr>
<tr><td class=td><b>Mobile</b></td><td><input name=mobile value=<%=rs.getInt(8)%> type=text size=60></td></tr>
<tr><td class=td><b>Email</b></td><td><input name=email type=text value=<%=rs.getString(9)%> size=60></td></tr>
<tr><td class=td><b>WebSite</b></td><td><input name=website value=<%=rs.getString(10)%> type=text size=60></td></tr>
<tr><td class=td><b>Business Profile</b></td><td><input type=text  name=bprofile value=<%=rs.getString(11)%> size=60 ></td></tr>
<tr><td class=td><b>Product Profile</b></td><td><input type=text value=<%=rs.getString(12)%> name=pprofile size=60></td></tr>
<%}%>
</table>
<center>

<input type="submit" value="Update" class=border >
</form>
</body>
</html>
