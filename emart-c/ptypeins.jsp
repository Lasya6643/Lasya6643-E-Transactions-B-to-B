<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String typeid=request.getParameter("typeid");
String type=request.getParameter("type");

try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into ptype values (?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,typeid);
sst.setString(2,type);

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
