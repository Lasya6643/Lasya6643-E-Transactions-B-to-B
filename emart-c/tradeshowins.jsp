<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String tradeid=request.getParameter("tradeid");
String fdate=request.getParameter("fdate");
String tdate=request.getParameter("tdate");
String tradeshow=request.getParameter("tradeshow");
String indusname=request.getParameter("indusname");
String eventprofile=request.getParameter("eventprofile");
String venue=request.getParameter("venue");
String city=request.getParameter("city");
String organized=request.getParameter("organized");
int mobile=Integer.parseInt(request.getParameter("mobile"));
try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into tradeshow values (?,?,?,?,?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,tradeid);
sst.setString(2,fdate);
sst.setString(3,tdate);
sst.setString(4,tradeshow);
sst.setString(5,indusname);
sst.setString(6,eventprofile);
sst.setString(7,venue);
sst.setString(8,city);
sst.setString(9,organized);
sst.setInt(10,mobile);

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
