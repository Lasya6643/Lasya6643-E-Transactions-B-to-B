<link href="kadapa.cdf" rel="stylesheet">
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
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><b> Company List</b> </TD></TR>
</table>


<%  String buff="";
    String head="";

	try {
	String cmd="Select *  from directory";
       String ds;
         int iv;
    st=con.createStatement();

	int count=0;
	boolean rec=false;

	  PreparedStatement pst=null;

		  ResultSetMetaData meta=null;

          rs=(st!=null)?st.executeQuery(cmd):null;
		  meta=(rs!=null)?rs.getMetaData():null;
		  int ct=0;
		  out.println("<style>");
		  out.println("td {font-family:ms sans serif;color:gray;font-size:12px:align=center;}");
		  out.println("th{font-family:ms sans serif;background:lightslategray;color:aliceblue;font-size:12px;}");
		  out.println("body {background-image:Bg.gif}");
		  out.println("</style>");
		  out.println("<title>Reports Generation</title>");
          out.println("<table style='position:absolute;left:1;top:240;' width=750 border=0 bgcolor=steelblue cellspacing=1 cellpadding=1");
          if(rs!=null) {out.println("<TR>");  
          for(int mt=1;mt<=meta.getColumnCount();mt+=1) 
          out.println("<Th wrap>&nbsp;&nbsp;"+meta.getColumnName(mt).replace('_','-')+"&nbsp;&nbsp;</th>");
		  out.println("</TR>");} 
		  while(rs!=null && rs.next()) {
          ct++;out.println("<TR>");
		  for(int d=1;d<=meta.getColumnCount();d++) {
          String metaname=meta.getColumnTypeName(d).toLowerCase();
		  if(metaname.indexOf("varchar")!=-1) {
          ds=rs.getString(d);
          out.println("<td wrap bgcolor=whitesmoke>&nbsp;&nbsp;&nbsp;"+ds+"&nbsp;</td>");}
		  else if(metaname.indexOf("date")!=-1) {
          ds=rs.getDate(d).toString();
          out.println("<td wrap bgcolor=whitesmoke>&nbsp;&nbsp;&nbsp;"+ds+"&nbsp;</td>");}
		  else {
          iv=rs.getInt(d);
          out.println("<td wrap bgcolor=whitesmoke>&nbsp;&nbsp;&nbsp;"+iv+"&nbsp;</td>");}
  		  }  out.println("</tr>");
  	      } 
out.println("<tr><td align=center colspan=15 bgcolor=whitesmoke><h2><a href=\"javascript:window.print()\"><font face=arial color=gray>Print The Reports</font></a></h2></center><br><hr size=1 color=gray><BR></td></table><br>");





 }   catch(Exception e) {
   out.println("No Items Found"+e);
   }
%>

</body></html>
