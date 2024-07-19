<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (products) Products Adding Form</title>
</head>
<script language="JavaScript">

function enableAll()
{
document.products.company.disabled=false;
document.products.address.disabled=false;
document.products.country.disabled=false;
document.products.state.disabled=false;
document.products.city.disabled=false;
document.products.pincode.disabled=false;
document.products.phone.disabled=false;
document.products.mobile.disabled=false;
document.products.email.disabled=false;
document.products.website.disabled=false;
document.products.bprofile.disabled=false;
document.products.pprofile.disabled=false;

document.products.company.focus();
}

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
<body id=body >
<a href=general.html><img src=images\p5.gif style="position:absolute;top:20;left:700;"></a>
<form name=products action=directorybins.jsp  onSubmit='return formvalid()'>
<br>
<div>
<img src=images\p1.gif>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Directory Entry</B></TD></TR>
</table><TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">

<tr><td class=td><b>Company</b></td><td><input name=company type=text disabled size=60></td></tr>
<tr><td class=td><b>Address</b></td><td><input name=address  type=text disabled size=60></td></tr>
<tr><td class=td><b>Country</b></td><td><input name=country type=text disabled size=60></td></tr>
<tr><td class=td><b>State</b></td><td><input name=state type=text disabled size=60></td></tr>
<tr><td class=td><b>City</b></td><td><input name=city type=text disabled size=60></td></tr>
<tr><td class=td><b>Pincode</b></td><td><input name=pincode type=text disabled size=60></td></tr>
<tr><td class=td><b>Phone</b></td><td><input name=phone type=text disabled size=60></td></tr>
<tr><td class=td><b>Mobile</b></td><td><input name=mobile type=text disabled size=60></td></tr>
<tr><td class=td><b>Email</b></td><td><input name=email type=text disabled size=60></td></tr>
<tr><td class=td><b>WebSite</b></td><td><input name=website type=text disabled size=60></td></tr>
<tr><td class=td><b>Business Profile</b></td><td><textarea rows=3 cols=45 name=bprofile disabled></textarea></td></tr>
<tr><td class=td><b>Product Profile</b></td><td><textarea rows=3 cols=45 name=pprofile disabled ></textarea></td></tr>
</table>
</div>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>
</body>
</html>
