<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String company=request.getParameter("company");
String productid=request.getParameter("productid");
String name=request.getParameter("name");
String details=request.getParameter("details");
String image=request.getParameter("image");
String typeid=request.getParameter("typeid");
try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into products values (?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,company);
sst.setString(2,productid);
sst.setString(3,name);
sst.setString(4,details);
sst.setString(5,image);
sst.setString(6,typeid);

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
