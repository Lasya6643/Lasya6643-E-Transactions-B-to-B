<link href="kadapa.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<html>
<head>
<title> (Kadapa Corporation) Tenderslist Adding Form</title>
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


function enableAll()
{

document.tenderslist.dot.disabled=false;
document.tenderslist.tot.disabled=false;
document.tenderslist.tcat.disabled=false;
document.tenderslist.bsd.disabled=false;
document.tenderslist.bsscd.disabled=false;
document.tenderslist.don.disabled=false;
document.tenderslist.tenderfee.disabled=false;
document.tenderslist.ward.disabled=false;
document.tenderslist.tenderwork.disabled=false;
document.tenderslist.ecost.disabled=false;
document.tenderslist.poc.disabled=false;
document.tenderslist.btype.disabled=false;
document.tenderslist.bcall.disabled=false;
document.tenderslist.toq.disabled=false;
document.tenderslist.doa.disabled=false;
document.tenderslist.paymentmode.disabled=false;
document.tenderslist.paymentperentage.disabled=false;


}

function formvalid()
{

var dot=document.tenderslist.dot.value;
var bsd=document.tenderslist.bsd.value;
var bsscd=document.tenderslist.bsscd.value;
var don=document.tenderslist.don.value;
var tenderfee=document.tenderslist.tenderfee.value;
var tenderwork=document.tenderslist.tenderwork.value;
var ecost=document.tenderslist.ecost.value;
var poc=document.tenderslist.poc.value;
var bcall=document.tenderslist.bcall.value;
var doa=document.tenderslist.doa.value;
var paymentperentage=document.tenderslist.paymentperentage.value;






if((dot.length==0) || (dot.length==0) || (bsd.length==0) || (bsscd.length==0) || (don.length==0) || (tenderfee.length==0) || (tenderwork.length==0) || (ecost.length==0) || (poc.length==0) || (bcall.length==0) || (doa.length==0) || (paymentperentage.length==0) )
{
alert('fill the form completely')
return false;
}
return true;
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

<img src=images\p1.gif>


<form name=tenderslist action=tenderslistins.jsp  onSubmit='return formvalid()'>

<input name=tid type=hidden size=10  value=1 ></td></tr>

<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:120;left:500;VISIBILITY: hidden;"  width=200 ></object>


<OBJECT id=MonthView2 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:120;left:500;VISIBILITY: hidden;"  width=200 ></object>

<OBJECT id=MonthView3 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:120;left:500;VISIBILITY: hidden;"  width=200 ></object>


<OBJECT id=MonthView4 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:420;left:500;VISIBILITY: hidden;"  width=200 ></object>


<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>New Tenders Entry</B></TD></TR>
</table>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">

<%    java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
    String msgdate=fmt.format(new java.util.Date()).toString();
%>

<tr><td class=td><b>Date of Tender</b></td><td>
<input name=dot type=text disabled size=10  VALUE=<%=msgdate%> readonly></td></tr>
<tr><td class=td><b>Tender Type</b></td><td>

<select name=tot disabled>
<option value=open> Open Tender </option>
<option value=seal> Sealed Tender </option>
</select>
</td></tr>
<tr><td class=td><b>Tender Category</b></td><td>

<select name=tcat disabled>
<option> Business </option>
<option> Other </option>
</select>
</td></tr>
<tr><td class=td><b>Bid Start Date</b></td><td>
<input name=bsd onfocus='dd();' type=text disabled size=10  ></td></tr>

<tr><td class=td><b>Bid Submission Closing Date</b></td><td>
<input name=bsscd type=text disabled onfocus='dd1();' size=10  ></td></tr>
<tr><td class=td><b>Date of Notice</b></td><td>
<input name=don type=text disabled size=10  onfocus='dd2();'></td></tr>
<tr><td class=td><b>Tender Fee</b></td><td>
<input name=tenderfee type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.tenderfee.focus(); return false;}if(tenderslist.tenderfee.value.length>10)return false;'></td></tr>
<%
ResultSet rs = st.executeQuery("SElect * from directory");

%>

<tr>
<td class=td><b>Company Id</b></td>
<td><select name=ward disabled>
<%while(rs.next())
{%>
<option> <%=rs.getString(1)%></option>
<%}%>
</select>
</td></tr>
<tr><td class=td><b>Tender Work</b></td><td>
<textarea rows=5 cols=30 name=tenderwork disabled size=100></textarea>
</td></tr>
<tr><td class=td><b>Tender Amt</b></td><td>
<input name=ecost type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.ecost.focus(); return false;}if(tenderslist.ecost.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Period of Completion</b></td><td>
<input name=poc type=text disabled size=2 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.poc.focus(); return false;}if(tenderslist.poc.value.length>2)return false;'></td></tr>
<tr><td class=td><b>Bidding Type</b></td><td>

<select name=btype disabled >
<option value=open> Open Bid </option>
<option value=nego> Negotiation </option>
</select>
</td></tr>
<tr><td class=td><b>Bidding calls</b></td><td>
<input name=bcall type=text disabled size=2 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.bcall.focus(); return false;}if(tenderslist.bcall.value.length>2)return false;'></td></tr>
<tr><td class=td><b>Type of Quotation</b></td><td>

<select name=toq type=text disabled >
<option value=byhand> By Hand </option>
<option value=online> Online </option>
<option value=bypost> By Post</option>
</select>
</td></tr>
<tr><td class=td><b>Date of Auction</b></td><td>
<input name=doa type=text disabled size=10  onfocus='dd3();'></td></tr>
<tr><td class=td><b>Payment Mode</b></td><td>

<select name=paymentmode disabled >
<option> Cash </option>
<option> Cheque </option>
</select>
</td></tr>
<tr><td class=td><b>Payment Percentage</b></td><td>
<input name=paymentperentage type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderslist.paymentperentage.focus(); return false;}if(tenderslist.paymentperentage.value.length>10)return false;'></td></tr>




</table>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>

</body>
</html>
