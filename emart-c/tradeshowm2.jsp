<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (tradeshow) Tradeshow Modification Form</title>
</head>
<script language="JavaScript">

function dd() 
{

products.MonthView1.style.visibility = "Visible"
}

function dd1() 
{

products.MonthView2.style.visibility = "Visible"
}


function MonthView1_Click()
{
var mon,yer;
mon = products.MonthView1.month;

if(mon==1)
  mon='jan';
else
if(mon==2)
  mon='feb';
else
if(mon==3)
  mon='mar';
else
if(mon==4)
  mon='apr';
else
if(mon==5)
  mon='may';
else
if(mon==6)
  mon='jun';
else
if(mon==7)
  mon='jul';
else
if(mon==8)
  mon='aug';
else
if(mon==9)
  mon='sep';
else
if(mon==10)
  mon='oct';
else
if(mon==11)
  mon='nov';
else
if(mon==12)
  mon='dec';

yer="'" + products.MonthView1.Year +  "'";

document.products.fdate.value = products.MonthView1.day + "/" + mon + "/" + yer.substr(3,2);
products.MonthView1.style.visibility = "Hidden";
}

function MonthView2_Click()
{
var mon,yer;
mon = products.MonthView2.month;

if(mon==1)
  mon='jan';
else
if(mon==2)
  mon='feb';
else
if(mon==3)
  mon='mar';
else
if(mon==4)
  mon='apr';
else
if(mon==5)
  mon='may';
else
if(mon==6)
  mon='jun';
else
if(mon==7)
  mon='jul';
else
if(mon==8)
  mon='aug';
else
if(mon==9)
  mon='sep';
else
if(mon==10)
  mon='oct';
else
if(mon==11)
  mon='nov';
else
if(mon==12)
  mon='dec';

yer="'" + products.MonthView2.Year +  "'";

document.products.tdate.value = products.MonthView2.day + "/" + mon + "/" + yer.substr(3,2);
products.MonthView2.style.visibility = "Hidden";
}



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
<SCRIPT LANGUAGE=javascript FOR=MonthView2 EVENT=Click>
<!--
 MonthView2_Click()
//-->
</SCRIPT>

<SCRIPT LANGUAGE=javascript FOR=MonthView1 EVENT=Click>
<!--
 MonthView1_Click()
//-->
</SCRIPT>
</head>
<body>
<img src=images\p1.gif>
<form name=products action=tradeshowm3.jsp>
<OBJECT id=MonthView2 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:200;left:500;VISIBILITY: hidden;"  width=280 ></object>
<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:200;left:500;VISIBILITY: hidden;"  width=280 ></object>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>TradeShow Modification Details</B></TD></TR>
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

<input type="submit" value="Update" class=border >
</form>
</body>
</html>
