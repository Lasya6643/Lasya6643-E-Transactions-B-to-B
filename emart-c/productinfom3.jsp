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

String cmd ="update  products set company=?,productid=?,name=?,details=?,image=?,typeid=? where company= '"+company + "'" ;

sst=con.prepareStatement(cmd);

sst.setString(1,company);
sst.setString(2,productid);
sst.setString(3,name);
sst.setString(4,details);
sst.setString(5,image);
sst.setString(6,typeid);

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
