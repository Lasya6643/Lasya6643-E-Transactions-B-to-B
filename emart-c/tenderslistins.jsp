<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
try{
int tid=Integer.parseInt(request.getParameter("tid").trim());
String dot=request.getParameter("dot");
String tot=request.getParameter("tot");
String tcat=request.getParameter("tcat");
String bsd=request.getParameter("bsd");
String bsscd=request.getParameter("bsscd");
String don=request.getParameter("don");
int tenderfee=Integer.parseInt(request.getParameter("tenderfee"));
String ward=request.getParameter("ward");
String tenderwork=request.getParameter("tenderwork");
int ecost=Integer.parseInt(request.getParameter("ecost"));
int poc=Integer.parseInt(request.getParameter("poc"));
String btype=request.getParameter("btype");
int bcall=Integer.parseInt(request.getParameter("bcall"));
String toq=request.getParameter("toq");
String doa=request.getParameter("doa");
String paymentmode=request.getParameter("paymentmode");
int paymentperentage=Integer.parseInt(request.getParameter("paymentperentage"));
String status="n";


st.executeUpdate("delete tenderslist where tid=" + tid);

int emd = ecost * 25/100;

PreparedStatement sst=null;
ResultSet rs=null;

if(tid==1)
{
    String getid="SELECT MAX(tid) from tenderslist";


	st=con.createStatement();
	ResultSet rs1=st.executeQuery(getid);
	int val=0;
		if(rs1.next()){
			val=rs1.getInt(1);
			if (val>0){ val+=1;}
			else{val=1;}
		}

tid=val;
}


String cmd ="insert into tenderslist values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setInt(1,tid);
sst.setString(2,dot);
sst.setString(3,tot);
sst.setString(4,tcat);
sst.setString(5,bsd);
sst.setString(6,bsscd);
sst.setString(7,don);
sst.setInt(8,tenderfee);
sst.setInt(9,emd);
sst.setString(10,ward);
sst.setString(11,tenderwork);
sst.setInt(12,ecost);
sst.setInt(13,poc);
sst.setString(14,btype);
sst.setInt(15,bcall);
sst.setString(16,toq);
sst.setString(17,doa);
sst.setString(18,paymentmode);
sst.setInt(19,paymentperentage);
sst.setString(20,status);


int eff=sst.executeUpdate();

if(eff>0)
{%>
<body>
<img src=images\p1.gif>
<div style="position:absolute;left:680;top:40;" >
<a href=admin.html target=_parent><img src=images\p5.gif></a>
</div>
<div style="position:absolute;left:100;top:160;" >


<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center> Business Mart</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
<a href=admin.html target=_parent><img src=images\p5.gif></a>
  <h3>Your  Entry Succeeded</h3>
  <br><br></center>
<%}
else
{%>
<body id=body>
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center> Kadapa Corporation</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
  <br><br></center>
<%}
}
catch(Exception e)
{
%>
<body id=body>
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center> Kadapa Corporation</td></tr></table>
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


