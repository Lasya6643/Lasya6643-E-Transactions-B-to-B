<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (tradeshow) Trade Show Delete Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var tradeid=document.products.tradeid.value;
var fdate=document.products.fdate.value;
var tdate=document.products.tdate.value;
var tradeshow=document.products.tradeshow.value;
var indusname=document.products.indusname.value;
var eventprofile=document.products.eventprofile.value;
var venue=document.products.venue.value;
var city=document.products.city.value;
var organized=document.products.organized.value;
var mobile=document.products.mobile.value;



if((tradeid.length==0) || (fdate.length==0) || (tdate.length==0) || (tradeshow.length==0) || (indusname.length==0)||(eventprofile.length==0) || (venue.length==0) || (city.length==0) || (organized.length==0) || (mobile.length==0))

{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<body >
<form name=products action=tradeshowd3.jsp>
<img src=images\p1.gif>
<br>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Trade Show Deletion Details</B></TD></TR>
</table>
<%
String tradeid= request.getParameter("tradeid");

ResultSet rs=st.executeQuery("select * from tradeshow where tradeid='"+tradeid+"'");

while(rs.next())
{
%>

<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">
<tr><td class=td><b>Trade Id</b></td><td>
<input name=tradeid type=text size=60 value=<%=rs.getString(1)%>></td></tr>
<tr><td class=td><b>From Date</b></td><td>
<input name=fdate onclick='dd()' type=text size=60 value=<%=rs.getString(2)%>></td></tr>
<tr><td class=td><b>To Date</b></td><td>
<input name=tdate onclick='dd1()' type=text size=60 value=<%=rs.getString(3)%>></td></tr>
<tr><td class=td><b>Trade Show</b></td><td>
<input name=tradeshow type=text size=60 value=<%=rs.getString(4)%>></td></tr>
<tr><td class=td><b>Indus Name</b></td><td>
<input name=indusname type=text size=60 value=<%=rs.getString(5)%>></td></tr>
<tr><td class=td><b>Event Profile</b></td><td>
<input name=eventprofile type=text size=60 value=<%=rs.getString(6)%>></td></tr>
<tr><td class=td><b>Venue</b></td><td>
<input name=venue type=text size=60 value=<%=rs.getString(7)%>></td></tr>
<tr><td class=td><b>City</b></td><td>
<input name=city type=text size=60 value=<%=rs.getString(8)%>></td></tr>
<tr><td class=td><b>Organized</b></td><td>
<input name=organized type=text size=60 value=<%=rs.getString(9)%>></td></tr>
<tr><td class=td><b>Mobile</b></td><td>
<input name=mobile type=text size=60 value=<%=rs.getString(10)%>></td></tr>

<%}%>
</table>
<center>
<input type="submit" value="Delete" class=border >
</form>
</body>
</html>
