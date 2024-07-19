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

String cmd ="update  tradeshow set tradeid=?,fdate=?,tdate=?,tradeshow=?,indusname=?,eventprofile=?,venue=?,city=?,organized=?,mobile=? where tradeid= '" + tradeid + "'" ;

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
