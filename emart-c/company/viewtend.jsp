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
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><B>List of Tenders</B></TD></TR>
</table>
<%  String buff="";
    String head="";
	try {
	String cmd="Select * from tenderslist ";

    st=con.createStatement();
    rs=st.executeQuery(cmd);
	int count=0;
	boolean rec=false;
	head+="<table align=center width=600 cellspacing=1 cellpadding=2 bgcolor=lightslategray><form method=post action=\"accepttenders.jsp\">";


head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>Tender Id</th><th style='color:aliceblue'>Date of Tender</th><th style='color:aliceblue'>Tender Type</th><th style='color:aliceblue'>Tender Fee </th><th style='color:aliceblue'>Emd</th><th style='color:aliceblue'>Tender Work</th><th style='color:aliceblue'>Ecost</th><th style='color:aliceblue'>Auction Date</th></tr>";
	while(rs.next()) {

        rec=true;
		count++;
		int tid=rs.getInt(1);
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String dot=fmt.format(rs.getDate("dot")).toString();
	        String tot=rs.getString("tot");
		int tenderfee=rs.getInt("tenderfee");
		int emd=rs.getInt("emd");
	        String tw=rs.getString("tenderwork");
		int ecost=rs.getInt("ecost");
	String doa=fmt.format(rs.getDate("doa")).toString();
	
	

buff+="<TR bgcolor=whitesmoke><TD><input name='from' value='"+tid+"' type=hidden class=check>"+tid+"</td>";
		buff+="<td nowrap>"+dot+"</td>";
		buff+="<Td>"+tot+"</td>";
		buff+="<TD>"+tenderfee+"</td>";
		buff+="<TD>"+emd+"</td>";
		buff+="<TD>"+tw+"</td>";
		buff+="<TD>"+ecost+"</td>";
		buff+="<Td nowrap>"+doa+"</td>";
		buff+="</tr>";

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
