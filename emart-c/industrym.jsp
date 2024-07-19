<link href="ksrm.cdf" rel="stylesheet"></link>
<html>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from industry");
%>
<body>
<img src=images\p1.gif>
<a href=admin.html><img src=images\p5.gif style="position:absolute;top:20;left:700;"></a>
<form name=products method=post  action=industrym2.jsp>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Products Modification</B></TD></TR>
</table><TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr> 
<td width="44%"> 
<div align='right'>Industry Type</div>
</td>
<td width="56%"> 
<select name="type">
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
