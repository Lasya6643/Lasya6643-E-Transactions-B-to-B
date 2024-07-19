<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<html>
<%
ResultSet rs=st.executeQuery("select * from directory");
%>
<body id=body> 
<img src=images\p1.gif>
<TABLE WIDTH="102%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Directory Detailed Report </B></TD></TR>
</table><TABLE WIDTH="102%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr>
<td > Company</td>
<td > Address</td>
<td > Country</td>
<td > State</td>
<td > City</td>
<td > Pincode</td>
<td > Phone</td>
<td > Mobile</td>
<td > Email</td>
<td > WebSite</td>
<td > BusinessProfile</td>
<td > ProductProfile</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td ><%=rs.getString(3)%></td>
<td ><%=rs.getString(4)%></td>
<td ><%=rs.getString(5)%></td>
<td ><%=rs.getInt(6)%></td>
<td ><%=rs.getInt(7)%></td>
<td ><%=rs.getInt(8)%></td>
<td ><%=rs.getString(9)%></td>
<td ><%=rs.getString(10)%></td>
<td ><%=rs.getString(11)%></td>
<td ><%=rs.getString(12)%></td>
</tr>
<%}%>
</table>
<center>
<a href="admin.html" >
<img src=images\p5.gif></a></center>
</body>
</html>




