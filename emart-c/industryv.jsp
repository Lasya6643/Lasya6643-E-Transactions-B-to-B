<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<html>
<%
ResultSet rs=st.executeQuery("select * from industry");
%>
<body id=body> 
<img src=images\p1.gif>
<br><br>

<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Industry Report</B></TD></TR>
</table><TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr>
<td nowrap> Type</td>
<td nowrap> Details</td>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td width=100><%=rs.getString(1)%></td>
<td width=100><%=rs.getString(2)%></td>

</tr>
<%}%>
</table>
<center>
<a href="admin.html" >
<img src=images\p5.gif></a></center>
</body>
</html>




