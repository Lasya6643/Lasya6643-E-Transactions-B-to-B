<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String company=request.getParameter("company");
String address=request.getParameter("address");
String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");
int pincode=Integer.parseInt(request.getParameter("pincode"));
int phone=Integer.parseInt(request.getParameter("phone"));
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String website=request.getParameter("website");
String bprofile=request.getParameter("bprofile");
String pprofile=request.getParameter("pprofile");

try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into directory values (?,?,?,?,?,?,?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,company);
sst.setString(2,address);
sst.setString(3,country);
sst.setString(4,state);
sst.setString(5,city);
sst.setInt(6,pincode);
sst.setInt(7,phone);
sst.setString(8,mobile);
sst.setString(9,email);
sst.setString(10,website);
sst.setString(11,bprofile);
sst.setString(12,pprofile);

int eff=sst.executeUpdate();

if(eff>0)
{%>
<body id=body>
<img src=images\p1.gif>

<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center>E-Business Mart</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
	<a href=admin.html><img src=images\p5.gif></a>
  <br><br></center>
<%}
else
{%>
<body id=body>
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center>E-Business Mart</td></tr></table>

<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>

 <h3>Your  Entry Succeeded</h3>
 
 <br><br></center>
<%}
}
catch(Exception e)
{
%>
<body id=body>
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center>E-Business Mart</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\cont.png" border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>
