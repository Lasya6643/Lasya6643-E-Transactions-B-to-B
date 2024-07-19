<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ page import="java.sql.*" %>
<%@ include file="common.jsp" %>
<html>
<head>
<title> (products) Products Adding Form</title>
</head>
<%
ResultSet rs=st.executeQuery("select company from directory");
ResultSet rs1=st1.executeQuery("select * from ptype");
%>
<script language="JavaScript">

function enableAll()
{
document.products.company.disabled=false;
document.products.productid.disabled=false;
document.products.name.disabled=false;
document.products.details.disabled=false;
document.products.image.disabled=false;
document.products.company.focus();
}

function formvalid()
{
var company=document.products.company.value;
var productid=document.products.productid.value;
var name=document.products.name.value;
var details=document.products.details.value;
var image=document.products.image.value;

if((company.length==1) || (productid.length==0) || (name.length==0) || (details.length==0) || (image.length==0))
{
alert('fill the form completely')
return false;
}
return true;
}

function imag()
{
var image=document.products.image.value;
document.products.y.src = "images/" + image;
}

</script>
</head>
<body id=body >
<a href=admin.html><img src=images\p5.gif style="position:absolute;top:20;left:700;"></a>
<form name=products action=productins.jsp  onSubmit='return formvalid()'>
<br>
<div>
<img src=images\p1.gif>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Products Entry</B></TD></TR>
</table><TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr> 
<td class=td > 
<div><b>Company Name<b></div>
</td>
<td class=td> 
<select name="company">
<%while(rs.next()){%>
<option><%=rs.getString(1)%></option>
<%}%>
</select>
</td>
</tr>
<tr><td class=td><b>Product Id</b></td><td><input name=productid type=text disabled size=60></td></tr>
<tr><td class=td><b>Name</b></td><td><input name=name type=text disabled size=60></td></tr>
<tr><td class=td><b>Details</b></td><td><input name=details type=text disabled size=60></td></tr>
<tr><td class=td><b>Image</b></td><td><input name=image type=text size=60 onblur="imag()" disabled ></td>
<td><img name="y" src="" height=80 width=80></td>
</tr>
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
</table>
</div>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>

</body>
</html>
