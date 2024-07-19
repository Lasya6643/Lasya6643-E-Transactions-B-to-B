<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>

<%@ page import="java.sql.*"%>
<%
	ResultSet rs=null;
 %>
 <script>
 function getMessage(val) {
 styles="<link href='air.cdf' rel='stylesheet'><title>Message</title>"
 nwin=open("","","scrollbars=yes,width=500 height=300,left=120,top=200");
 nwin.document.write(styles+"<p>"+document.getElementById('msgs'+val).innerHTML+"</p>");
 nwin.document.close();
 }
 </script>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">


</head>
<body>
<img src="http://localhost:8080/emart/images/p1.gif">
<div style="position:absolute;left:680;top:40;" >
<a href=company.html target=_parent><img src="http://localhost:8080/emart/images/p5.gif"></a>
</div>


<TABLE WIDTH="90%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>List of Applied Tenders</B></TD></TR>
</table>

<%  String buff="";
    String head="";
	try {
	String u = session.getValue("userid").toString();
	String cmd="Select BIDNO,TID,a.Company,dos from directory a ,tenderbids where a.company = tenderbids.cid and a.company='" + u + "'";

    st=con.createStatement();
    rs=st.executeQuery(cmd);
	int count=0;
	boolean rec=false;
	head+="<table align=center width=600 cellspacing=1 cellpadding=2 bgcolor=lightslategray><form method=post action=\"accepttenders.jsp\">";

	head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>Bid Num</th><th style='color:aliceblue'>Contract Id</th><th style='color:aliceblue'>Contract Name</th><th style='color:aliceblue'>Tender Id</th><th style='color:aliceblue'>Date</th></tr>";
	while(rs.next()) {
        rec=true;
		count++;
		int id=rs.getInt(1);
		int tid=rs.getInt(2);
		String from=rs.getString(3);
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String sub=fmt.format(rs.getDate("dos")).toString();
	        String data=from;

		sub=(sub!=null)?sub:"[&nbsp;None&nbsp;]";
		data=(data!=null)?data:"[&nbsp;No Message is Available&nbsp;]";
	
		buff+="<TR bgcolor=whitesmoke><TD><input name='from' value='"+id+"' type=hidden class=check>"+id+"</td>";
		buff+="<td>"+from+"</td>";
		buff+="<Td>"+data+"</td>";
		buff+="<TD>"+tid+"</td>";
		buff+="<Td>"+sub+"</td>";
		buff+="	</tr>";
	}
	if(buff.length()>0)	out.println(head+buff+"</table>");
	else out.println("<link href='air.cdf' rel='stylesheet'><center><p>No Messages Found.Your Inbox Terminal is Empty</p></center>");
 }   catch(Exception e) {
   out.println("No Items Found"+e);
   }
%>
<table align=center width=600>
</td></tr></table><BR>
</body></html>
