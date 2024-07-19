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
int mobile=Integer.parseInt(request.getParameter("mobile"));
String email=request.getParameter("email");
String website=request.getParameter("website");
String bprofile=request.getParameter("bprofile");
String pprofile=request.getParameter("pprofile");
try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="update  directory set company=?,address=?,country=?,state=?,city=?,pincode=?,phone=?,mobile=?,email=?,website=?,bprofile=?,pprofile=? where company= '" + company + "'" ;

sst=con.prepareStatement(cmd);

sst.setString(1,company);
sst.setString(2,address);
sst.setString(3,country);
sst.setString(4,state);
sst.setString(5,city);
sst.setInt(6,pincode);
sst.setInt(7,phone);
sst.setInt(8,mobile);
sst.setString(9,email);
sst.setString(10,website);
sst.setString(11,bprofile);
sst.setString(12,pprofile);

int j=sst.executeUpdate();
if (j>0)
{
%>
<body>
<img src=images\p1.gif>
<center>
<h3>Your Details Modify Succeeded</h3>
<br><br><center>
<a href="admin.html">
<img src=images\p5.gif></a>
<%      }
st.close();
con.close(); 
}
catch(Exception e)
{
%>
<body  bgColor=#006699 text=#000000>
<br>  <br>  <br>  <br>
<center>
<a href="javascript:history.back()"><img src="images\cont.png" border=0></a>&nbsp;&nbsp;
 <br>  <br>  <br>  <br>
<%
out.println(e.getMessage());
}
%>
