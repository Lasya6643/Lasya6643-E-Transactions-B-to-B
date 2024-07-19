<link href="health.css" rel="stylesheet">
<script src="effect.js"></script>
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
String[] msgs=request.getParameterValues("from");

try
	{

	st=con.createStatement();
	for(int i=0;i<msgs.length;i++) 
st.executeUpdate("delete from admin_inbox where mid='"+msgs[i]+"'");
	response.sendRedirect("admin_inbox.jsp");
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>
<center><h4><a href="bankinbox.jsp">Back To Inbox</a></h4>

