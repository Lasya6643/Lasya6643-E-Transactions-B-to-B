<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String typeid=request.getParameter("typeid");
String type=request.getParameter("type");


try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="update  ptype set typeid=?,type=? where typeid= '"+typeid + "'" ;

sst=con.prepareStatement(cmd);

sst.setString(1,typeid);
sst.setString(2,type);


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
