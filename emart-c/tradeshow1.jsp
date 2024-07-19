<link href="ksrm.cdf" rel="stylesheet"></link>

<HTML>
<head>

</head>

<body >
<img src=images\p1.gif>
<a href=general.html><img src=images\h1.gif style="position:absolute;top:108;left:80;"></a>
<img src=images\h3.gif style="position:absolute;top:108;left:150;">

</body>
</HTML>

<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<html>
<%
String tid = request.getParameter("tradeid");
ResultSet rs=st.executeQuery("select * from tradeshow where tradeid='" + tid + "'");
%>
<body id=body> 

<TABLE WIDTH="102%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><b>Trade Show Detailed Report</b> </TD></TR>
</table><TABLE WIDTH="102%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<%
while(rs.next())
{
%>
<tr><th align=left>TradeId</td><td><%=rs.getString(1)%></td></tr>
<tr><th align=left>FromDate</td><td><%=rs.getDate(2)%></td></tr>
<tr><th align=left>ToDate</td><td><%=rs.getDate(3)%></td></tr>
<tr><th align=left>TradeShow</td><td><%=rs.getString(4)%></td></tr>
<tr><th align=left>IndustryName</td><td><%=rs.getString(5)%></td></tr>
<tr><th align=left>EventProfile</td><td><%=rs.getString(6)%></td></tr>
<tr><th align=left>Venue</td><td><%=rs.getString(7)%></td></tr>
<tr><th align=left>City</td><td><%=rs.getString(8)%></td></tr>
<tr><th align=left>Organized</td><td><%=rs.getString(9)%></td></tr>
<tr><th align=left>Mobile</td><td><%=rs.getInt(10)%></td></tr>


<%}%>
</table>
<center>
<a href="tradeshow.jsp" >
<img src=images\p5.gif></a></center>
</body>
</html>





