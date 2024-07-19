<link href="health.css" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%

String u = session.getValue("userid").toString();
String np=request.getParameter("np");


try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="update  users set password=? where userid= '"+ u + "'";

sst=con.prepareStatement(cmd);

sst.setString(1,np);


int j=sst.executeUpdate();
if (j>0)
{
%>

<body id=body>
<img src="p1.gif">
<a href="http://localhost:8080/emart/general.html" ><img src="p5.gif" style="position:absolute;top:10;left:700;"></a>
 <br>  <br>  <br>  <br>
<fieldset>
<center>
<font color=blue face=tahoma> Entry Succeded</legend><BR>
<a href="company.html"><img src="p5.gif"></a>
<center>


<%      }
st.close();
con.close(); 
  
}
catch(Exception e)
{
%>
<body id=body>
<br><br><br><br>
<fieldset>
  <center>
  <a href="javascript:history.back()"><img src="Images\back.jpg" 
border=0></a>&nbsp;&nbsp;
<br><br><br><br>
<%
out.println(e.getMessage());
}
%>
