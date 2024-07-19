<link href="health.css" rel="stylesheet">

<%@ page import="java.sql.*" %>
	<html>
<head>

</head>
<script language="JavaScript">


function formvalid()
{

var np=document.banks.np.value;
var rp=document.banks.rp.value;

  
if((np.length==0) || (rp.length==0))
{
alert('fill the form completely')
return false;
}

if(np==op)
{return true;
}

return false;

}

</script>

</head>
<body id=body>
<img src=images\p1.gif>
<br><br><br><br>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Change Password</B></TD></TR>
</table>
<form name=banks action=changepass1.jsp  onSubmit='return formvalid()'>

<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>New Password</b></td><td>
<input name=np type=password  size=10  ></td></tr>
<tr><td class=td><b>Retype Password</b></td><td>
<input name=rp type=password  size=10  ></td></tr>

<tr bgcolor=mistyrose><td colspan=2 align=center>

<button type="submit"><u>S</u>ubmit</button>&nbsp;&nbsp;</td>
</tr>             
</form></table><br><br>
<script>setColor();</script>

</body>
</html>
