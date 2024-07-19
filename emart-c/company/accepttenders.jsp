
<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
String[] msgs=request.getParameterValues("from");

try
	{

	st=con.createStatement();
	for(int i=0;i<msgs.length;i++) 
st.executeUpdate("update tenderbids set status = 'a' where bidno='"+msgs[i]+"'");
	response.sendRedirect("adminmenu.jsp");
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>
<center><h4><a href="adminmenu.jsp">Admin Menu</a></h4>

