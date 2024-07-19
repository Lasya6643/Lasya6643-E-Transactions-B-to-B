<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<html>
<%
ResultSet rs=st.executeQuery("select * from tradeshow");
%>
<body id=body> 
<img src=images\p1.gif>
<TABLE WIDTH="102%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Trade Show Detailed Report </B></TD></TR>
</table><TABLE WIDTH="102%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr>
<td > TradeId</td>
<td > FromDate</td>
<td > ToDate</td>
<td > TradeShow</td>
<td > IndustryName</td>
<td > EventProfile</td>
<td > Venue</td>
<td > City</td>
<td > Organized</td>
<td > Mobile</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getDate(2)%></td>
<td ><%=rs.getDate(3)%></td>
<td ><%=rs.getString(4)%></td>
<td ><%=rs.getString(5)%></td>
<td ><%=rs.getString(6)%></td>
<td ><%=rs.getString(7)%></td>
<td ><%=rs.getString(8)%></td>
<td ><%=rs.getString(9)%></td>
<td ><%=rs.getInt(10)%></td>
</tr>
<%}%>
</table>
<center>
<a href="admin.html" >
<img src=images\p5.gif></a></center>
</body>
</html>




