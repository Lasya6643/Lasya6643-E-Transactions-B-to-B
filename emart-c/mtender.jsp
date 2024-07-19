<link href="ksrm.cdf" rel="stylesheet">
<html>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from tenderslist");
%>
<body>

<img src=images\p1.gif>
<div style="position:absolute;left:680;top:40;" >
<a href=admin.html target=_parent><img src=images\p5.gif></a>
</div>


<form name=wardsinformation method=post  action=mtender1.jsp>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Modify Tenders Entry</B></TD></TR>
</table>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">

<tr> 
<td width="44%"> 
<div align='right'><font color='red'>Tender Id</font></div>
</td>
<td width="56%"> 
<select name="tid">
<%while(rs.next()){%>
<option><%=rs.getString(1)%></option>
<%}%>
</select>
</td>
</tr>
<tr>
<td width="44%">&nbsp;</td>
<td width="56%">
<input type="submit" name="Submit" value="Submit">
</td>
</tr>
</table>
</form>
</body>
</html>
