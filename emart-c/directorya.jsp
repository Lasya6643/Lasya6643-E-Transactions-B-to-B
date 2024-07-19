<html>

<script language="JavaScript">

function enableAll()
{
}

</script>

<body id=body >

<form name=products action=directoryins.jsp >
<br>
<div>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Directory Entry</B></TD></TR>
</table><TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">

<tr><td class=td><b>Name of the Principal</b></td><td><input name=company type=text disabled size=60></td></tr>
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
<input type="submit" value="Save" class=border></center>
</form>
</body>
</html>
