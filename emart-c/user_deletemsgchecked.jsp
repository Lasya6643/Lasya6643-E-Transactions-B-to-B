<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
String table=request.getParameter("category");
String[] msgs=request.getParameterValues("from");

try	
{
	Statement stmt=con.createStatement();
	for(int i=0;i<msgs.length;i++) 
	stmt.executeUpdate("delete from user_inbox where mid='"+msgs[i]+"'");
	response.sendRedirect("company.html");
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>
<center><h4><a href="company.html">Back To Inbox</a></h4>

