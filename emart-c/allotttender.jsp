<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
try{
int bid=Integer.parseInt(request.getParameter("bidno").trim());
String cid=request.getParameter("cid").trim();
int tid=Integer.parseInt(request.getParameter("tid").trim());

    java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
    String msgdate=fmt.format(new java.util.Date()).toString();

st.executeUpdate("update tenderbids  set status = 'l' where bidno=" + bid);
st.executeUpdate("update tenderslist set status = 'c' where tid=" + tid);
st.executeUpdate("update tenderbids  set status = 'o' where cid not in ('" + cid  + "' ) and tid="+ tid);

PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into tendersallotment values (?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setInt(1,bid);
sst.setString(2,msgdate);
sst.setString(3,cid);
sst.setString(4,"corporation");


int eff=sst.executeUpdate();
if(eff>0)

%>


<img src=images\p1.gif>
<div style="position:absolute;left:680;top:40;" >
<a href=admin.html target=_parent><img src=images\p5.gif></a>
</div>
<TABLE WIDTH="102%" BORDER="1" CELLPADDING="0" CELLSPACING="0"  BGCOLOR="#EFF8FF" BORDERCOLOR="#C2E6FE" STYLE="border-collapse:collapse;" ALIGN="CENTER" >
<TR>
<TD CLASS="glformhead" HEIGHT="24" VALIGN="MIDDLE" align=center><b> Allot Tenders </b> </TD></TR>
</table>


<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center> Busines Mart</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded and Tender Alloted</h3>
  <br><br></center>
<%
}
catch(Exception e)
{
%>
<body id=body>
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center> Busines Mart</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\backs.gif" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>


