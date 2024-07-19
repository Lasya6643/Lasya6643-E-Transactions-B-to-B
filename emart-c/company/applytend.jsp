<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<html>

<script language="JavaScript">

function dd() 
{
tenderbid.MonthView1.style.visibility = "Visible"
}


function dd1() 
{
tenderbid.MonthView2.style.visibility = "Visible"
}

function MonthView1_Click()
{
var mon,yer;
mon = tenderbid.MonthView1.month;

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

yer="'" + tenderbid.MonthView1.Year +  "'";

document.tenderbid.dodd.value = tenderbid.MonthView1.day + "/" + mon + "/" + yer.substr(3,2);
tenderbid.MonthView1.style.visibility = "Hidden";
}


function MonthView2_Click()
{
var mon,yer;
mon = tenderbid.MonthView2.month;

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

yer="'" + tenderbid.MonthView2.Year +  "'";

document.tenderbid.dofd.value = tenderbid.MonthView2.day + "/" + mon + "/" + yer.substr(3,2);
tenderbid.MonthView2.style.visibility = "Hidden";
}


function enableAll()
{

document.tenderbid.cid.disabled=false;
document.tenderbid.emd.disabled=false;
document.tenderbid.ddno.disabled=false;
document.tenderbid.nameofbank.disabled=false;
document.tenderbid.dodd.disabled=false;
document.tenderbid.tenderfee.disabled=false;
document.tenderbid.ddfeno.disabled=false;
document.tenderbid.dofd.disabled=false;
document.tenderbid.nameofbank1.disabled=false;
document.tenderbid.tendersecurity.disabled=false;
document.tenderbid.bidamtper.disabled=false;



}

function formvalid()
{
var emd=document.tenderbid.emd.value;
var ddno=document.tenderbid.ddno.value;
var nameofbank=document.tenderbid.nameofbank.value;
var dodd=document.tenderbid.dodd.value;
var tenderfee=document.tenderbid.tenderfee.value;
var ddfeno=document.tenderbid.ddfeno.value;
var dofd=document.tenderbid.dofd.value;
var nameofbank1=document.tenderbid.nameofbank1.value;
var tendersecurity=document.tenderbid.tendersecurity.value;
var bidamtper=document.tenderbid.bidamtper.value;






if((emd.length==0) || (ddno.length==0) || (nameofbank.length==0) || (dodd.length==0) || (tenderfee.length==0) || (ddfeno.length==0) || (dofd.length==0) || (nameofbank1.length==0) || (tendersecurity.length==0) || (bidamtper.length==0) )
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

</head>
<body>

<img src="http://localhost:8080/emart/images/p1.gif">
<div style="position:absolute;left:680;top:40;" >
<a href=company.html target=_parent><img src="http://localhost:8080/emart/images/p5.gif"></a>
</div>

<form name=tenderbid action=tenderbidins.jsp  onSubmit='return formvalid()'>
<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:250;left:500;VISIBILITY: hidden;"  width=200 ></object>
<OBJECT id=MonthView2 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:250;left:500;VISIBILITY: hidden;"  width=200 ></object>
<%
int tid = Integer.parseInt(request.getParameter("tid"));
int emd = Integer.parseInt(request.getParameter("emd"));
int tfee = Integer.parseInt(request.getParameter("tfee"));
String cid = session.getValue("userid").toString();
%>
<center>


<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>Apply Tenders Entry</B></TD></TR>
</table>
<TABLE WIDTH="90%" BORDER="1" CELLPADDING="8" CELLSPACING="0"  BORDERCOLOR="#DDF0FF" STYLE="border-collapse:collapse;" ALIGN="CENTER">

<tr><td class=td><b>Tender Id</b></td><td>
<input name=tid type=text size=10 readonly value=<%=tid%> onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderbid.tid.focus(); return false;}if(tenderbid.tid.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Company Id</b></td><td>
<input name=cid type=text disabled size=10  readonly value=<%=cid%>></td></tr>
<tr><td class=td><b>Earnest Money Deposit</b></td><td>
<input name=emd type=text disabled size=10 readonly  value=<%=emd%> onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderbid.emd.focus(); return false;}if(tenderbid.emd.value.length>10)return false;'></td></tr>
<tr><td class=td><b>DD No.</b></td><td>
<input name=ddno type=text disabled size=20  ></td></tr>
<tr><td class=td><b>Bank Name</b></td><td>
<input name=nameofbank type=text disabled size=20  ></td></tr>
<tr><td class=td><b>Date of DD</b></td><td>
<input name=dodd type=text disabled size=10  onfocus='dd();'><input type=button value=Calendar onclick='dd();'></td></tr>
<tr><td class=td><b>Tender Fee</b></td><td>
<input name=tenderfee type=text disabled size=10 readonly  value=<%=tfee%> onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderbid.tenderfee.focus(); return false;}if(tenderbid.tenderfee.value.length>10)return false;'></td></tr>
<tr><td class=td><b>DD No.</b></td><td>
<input name=ddfeno type=text disabled size=20  ></td></tr>
<tr><td class=td><b>Date of DD</b></td><td>
<input name=dofd type=text disabled size=10  onfocus='dd2();'><input type=button value=Calendar onclick='dd1();'></td></tr>
<tr><td class=td><b>Name of Bank</b></td><td>
<input name=nameofbank1 type=text disabled size=20  ></td></tr>
<tr><td class=td><b>Tender Security</b></td><td>
<input name=tendersecurity type=text disabled size=10  ></td></tr>
<tr><td class=td><b>Bid Amt</b></td><td>
<input name=bidamtper type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){tenderbid.bidamtper.focus(); return false;}if(tenderbid.bidamtper.value.length>10)return false;'></td></tr>





</table>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>
</fieldset>
</body>
</html>


