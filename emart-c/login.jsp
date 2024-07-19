<%@ include file="common.jsp" %>

<body  bgcolor= #ffffff text=#000000>

<% 
String userid=request.getParameter("userid").trim();
String password=request.getParameter("password").trim();
int flag=1;



ResultSet rs=st.executeQuery("select * from users where userid='" + userid + "' and password ='" + password + "'");
session.putValue("userid",userid);
String a = null;
String t  = null;

   if(rs.next())
{ t = rs.getString("typs");
   if(t.equalsIgnoreCase("a"))
	{%>
   <center><marquee behavior=alternate width=300><a href="admin.html"><h4 align=center onmouseover="style.color='blue'" onmouseout="style.color='Black'"><br><br><br><br><br><br><br>Click to Go 
	Admin Menu</h4></a></marquee></center>
	<%}

   else
	 if(t.equalsIgnoreCase("c"))
	{%>
  	
	<center><marquee behavior=alternate width=300><a href="company/company.html"><h4 align=center onmouseover="style.color='blue'" onmouseout="style.color='Black'"><br><br><br><br><br><br><br>Click to Go 
	Company Menu</h4></a></marquee></center>

	<%}

else
	{flag=0;	}


	

}
if(flag==0)
{
%>
<body   bgcolor= #bbe9ff text=#000000> 
<br><br><br><br><br><br><br><br>
<center>
Invalid UserName and Password<br>
<a href='general.html'><img src=images\p5.gif border=0></a>
<%}
else
{
st.close();
con.close();
}

%>
