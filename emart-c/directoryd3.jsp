<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%

String company=request.getParameter("company");

try{
PreparedStatement sst=null;
ResultSet rs=null;
st.executeUpdate("delete directory where company='"+company+"'");
%>
<body>
<img src=images\p1.gif>
<br>  <br>  <br>  <br>
<center>
<h3>Your Directory Details Deleted Succeeded</h3>
<br><br><center>
<a href="admin.html" >
<img src=images\p5.gif></a>
<% 
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
