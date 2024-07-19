<html>
<%@page import="java.sql.*"%>
<link href="health.css" rel="stylesheet">
<script src="effect.js"></script>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from banks");
%>
<body id=body background=BAK.JPG>

<fieldset>
<br><br><br>
<legend align=center><font face=tahoma color=blue>Modification of Bank Details</legend><BR>
<table style="border:1px solid gray" align="center" id=register width=450 cellspacing=0 cellpadding=2>
</font>
<form name=banks method=post  action=banksm2.jsp>
<br><br><br>

<tr> 
<td width="44%"> 
<div align='right'>Bank Id</div>
</td>
<td width="56%"> 
<select name="banid">
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
