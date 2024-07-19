<%@ page import="java.sql.*" %>
<%! 
     Connection con = null;
     Statement st = null,st1=null,st2=null,st3=null;
%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:emart","emart","emart");
st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
%>