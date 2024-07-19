<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<html>
<head>

</head>
<script language="JavaScript">

function dd() 
{

tenderslist.MonthView1.style.visibility = "Visible"
}


function dd1() 
{

tenderslist.MonthView2.style.visibility = "Visible"
}

function dd2() 
{

tenderslist.MonthView3.style.visibility = "Visible"
}

function dd3() 
{

tenderslist.MonthView4.style.visibility = "Visible"
}


function MonthView1_Click()
{
var mon,yer;
mon = tenderslist.MonthView1.month;

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

yer="'" + tenderslist.MonthView1.Year +  "'";

document.tenderslist.bsd.value = tenderslist.MonthView1.day + "/" + mon + "/" + yer.substr(3,2);
tenderslist.MonthView1.style.visibility = "Hidden";
}


function MonthView4_Click()
{
var mon,yer;
mon = tenderslist.MonthView4.month;

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

yer="'" + tenderslist.MonthView4.Year +  "'";

document.tenderslist.doa.value = tenderslist.MonthView4.day + "/" + mon + "/" + yer.substr(3,2);
tenderslist.MonthView4.style.visibility = "Hidden";
}


function MonthView3_Click()
{
var mon,yer;
mon = tenderslist.MonthView3.month;

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

yer="'" + tenderslist.MonthView3.Year +  "'";

document.tenderslist.don.value = tenderslist.MonthView3.day + "/" + mon + "/" + yer.substr(3,2);
tenderslist.MonthView3.style.visibility = "Hidden";

}


function MonthView2_Click()
{
var mon,yer;
mon = tenderslist.MonthView2.month;

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

yer="'" + tenderslist.MonthView2.Year +  "'";

document.tenderslist.bsscd.value = tenderslist.MonthView2.day + "/" + mon + "/" + yer.substr(3,2);
tenderslist.MonthView2.style.visibility = "Hidden";
}

</script>

<SCRIPT LANGUAGE=javascript FOR=MonthView1 EVENT=Click>
<!--
 MonthView1_Click()
//-->
</SCRIPT>

<SCRIPT LANGUAGE=javascript FOR=MonthView2 EVENT=Click>
<!--
 MonthView2_Click()
//-->
</SCRIPT>


<SCRIPT LANGUAGE=javascript FOR=MonthView3 EVENT=Click>
<!--
 MonthView3_Click()
//-->
</SCRIPT>


<SCRIPT LANGUAGE=javascript FOR=MonthView4 EVENT=Click>
<!--
 MonthView4_Click()
//-->
</SCRIPT>

</head>
<body>
<%
ResultSet rs1 = st1.executeQuery("Select * from tenderslist");

if(rs1.next())
{
%>

<img src=images\p1.gif>
<div style="position:absolute;left:680;top:40;" >
<a href=admin.html target=_parent><img src=images\p5.gif></a>
</div>

<form name=tenderslist action=tendersdel.jsp  >
<center>
<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:120;left:500;VISIBILITY: hidden;"  width=200 ></object>


<OBJECT id=MonthView2 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:120;left:500;VISIBILITY: hidden;"  width=200 ></object>

<OBJECT id=MonthView3 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:120;left:500;VISIBILITY: hidden;"  width=200 ></object>


<OBJECT id=MonthView4 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:420;left:500;VISIBILITY: hidden;"  width=200 ></object>



<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Delete Tenders Entry</B></TD></TR>
</table>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">

<%  	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs1.getDate(2)).toString();


%>
<tr><td class=td><b>Tender Id</b></td><td>
<input name=tid type=text  size=10  VALUE=<%=rs1.getInt(1)%> readonly></td></tr>
<tr><td class=td><b>Date of Tender</b></td><td>
<input name=dot type=text   size=10  VALUE=<%=ds%> readonly></td></tr>
<tr><td class=td><b>Tender Type</b></td><td>

<select name=tot  >
<option selected> <%=rs1.getString(3)%> </option>
<option value=open> Open Tender </option>
<option value=seal> Sealed Tender </option>
</select>
</td></tr>
<tr><td class=td><b>Tender Category</b></td><td>

<select name=tcat  >
<option selected> <%=rs1.getString(4)%> </option>
<option> Construction </option>
<option> General </option>
</select>
</td></tr>
<% String ds1=fmt.format(rs1.getDate(5)).toString();
String ds2=fmt.format(rs1.getDate(6)).toString(); 
String ds3=fmt.format(rs1.getDate(7)).toString();
String ds4=fmt.format(rs1.getDate(17)).toString();
%>

<tr><td class=td><b>Bid Start Date</b></td><td>
<input name=bsd onfocus='dd();' type=text value=<%=ds1%>   size=10 ><input type=button value=calendar onclick='dd();'></td></tr>

<tr><td class=td><b>Bid Submission Closing Date</b></td><td>
<input name=bsscd type=text   value=<%=ds2%> onfocus='dd1();' size=10  > <input type=button value=calendar onclick='dd1();'></td></tr>
<tr><td class=td><b>Date of Notice</b></td><td>
<input name=don type=text   size=10  value=<%=ds3%> onfocus='dd2();'> <input type=button value=calendar onclick='dd2();'></td></tr>

<tr><td class=td><b>Tender Fee</b></td><td>
<input name=tenderfee type=text   size=10 value=<%=rs1.getInt(8)%> onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.tenderfee.focus(); return false;}if(tenderslist.tenderfee.value.length>10)return false;'></td></tr>

<%
ResultSet rs = st.executeQuery("SElect * from directory");

%>

<tr>
<td class=td><b>Company</b></td>
<td><select name=ward  >
<option selected> <%=rs1.getString(10)%> </option>
<%while(rs.next())
{%>
<option><%=rs.getString(1)%></option>
<%}%>
</select>
</td></tr>
<tr><td class=td><b>Tender Work</b></td><td>
<textarea rows=5 cols=30 name=tenderwork   size=100><%=rs1.getString(11)%> </textarea>
</td></tr>
<tr><td class=td><b>Tender Amt</b></td><td>
<input name=ecost type=text   size=10 value=<%=rs1.getInt(12)%>  onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.ecost.focus(); return false;}if(tenderslist.ecost.value.length>10)return false;'></td></tr>

<tr><td class=td><b>Period of Completion</b></td><td>
<input name=poc type=text   size=2 value=<%=rs1.getInt(13)%>  onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.poc.focus(); return false;}if(tenderslist.poc.value.length>2)return false;'></td></tr>

<tr><td class=td><b>Bidding Type</b></td><td>

<select name=btype   >
<option selected> <%=rs1.getString(14)%> </option>
<option value=open> Open Bid </option>
<option value=nego> Negotiation </option>
</select>
</td></tr>

<tr><td class=td><b>Bidding calls</b></td><td>
<input name=bcall type=text   size=2 value=<%=rs1.getString(15)%>  onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.bcall.focus(); return false;}if(tenderslist.bcall.value.length>2)return false;'></td></tr>

<tr><td class=td><b>Type of Quotation</b></td><td>

<select name=toq type=text   >
<option selected> <%=rs1.getString(16)%> </option>
<option value=byhand> By Hand </option>
<option value=online> Online </option>
<option value=bypost> By Post</option>
</select>
</td></tr>
<tr><td class=td><b>Date of Auction</b></td><td>
<input name=doa type=text   size=10  value=<%=ds4%>  onfocus='dd3();'><input type=button value=calendar onclick='dd3();'></td></tr>
<tr><td class=td><b>Payment Mode</b></td><td>

<select name=paymentmode   >
<option selected> <%=rs1.getString(18)%> </option>
<option> Cash </option>
<option> Cheque </option>
</select>
</td></tr>
<tr><td class=td><b>Payment Percentage</b></td><td>
<input name=paymentperentage type=text value=<%=rs1.getInt(19)%>   size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.paymentperentage.focus(); return false;}if(tenderslist.paymentperentage.value.length>10)return false;'></td></tr>




</table>
<center>
<input type="submit" value="Delete" class=border >
<%}
else
{
%>
<div style="position:absolute;left:100;top:160;">
<center>
<h3>   No Tenders Avaialbale
</center>
<%}%>

</form>
</fieldset>
</body>
</html>
