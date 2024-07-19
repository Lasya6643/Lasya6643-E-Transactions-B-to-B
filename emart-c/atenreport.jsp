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

<img src=images\p1.gif>
<div style="position:absolute;left:680;top:40;" >
<a href=admin.html target=_parent><img src=images\p5.gif></a>
</div>
<TABLE WIDTH="102%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><b> Accept Tenders </b> </TD></TR>
</table>

<%  String buff="";
    String head="";
	try {
	String cmd="Select BIDNO,TID,a.company,DOS from directory a ,tenderbids where status = 'a' and a.company = tenderbids.cid";

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
		buff+="<Td>"+sub+"</td></tr>";
	}
	if(buff.length()>0)	out.println(head+buff+"</table>");
	else out.println("<link href='air.cdf' rel='stylesheet'><center><p>No tenders Found.Your  Terminal is Empty</p></center>");
 }   catch(Exception e) {
   out.println("No Items Found"+e);
   }
%>
<table align=center width=600>

&nbsp;&nbsp;
</td></tr></table><BR>
</body></html>
