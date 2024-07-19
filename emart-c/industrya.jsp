<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (industry) Industries Adding Form</title>
</head>
<script language="JavaScript">
function enableAll()
{
document.products.type.disabled=false;
document.products.details.disabled=false;
document.products.type.focus();
}

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
<body id=body >
<a href=admin.html><img src=images\p5.gif style="position:absolute;top:20;left:700;"></a>
<form name=products action=industryins.jsp  onSubmit='return formvalid()'>
<br>
<div>
<img src=images\p1.gif>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Industries Entry</B></TD></TR>
</table><TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>Type of Industry</b></td><td><input name=type type=text disabled size=60></td></tr>
<tr><td class=td><b>Details</b></td><td><input name=details type=text disabled size=60></td></tr>
</table>
</div>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>
</body>
</html>
