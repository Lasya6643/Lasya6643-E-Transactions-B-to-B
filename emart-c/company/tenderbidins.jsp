<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%

int tid=Integer.parseInt(request.getParameter("tid"));
String cid=request.getParameter("cid");
int emd=Integer.parseInt(request.getParameter("emd"));
String ddno=request.getParameter("ddno");
String nameofbank=request.getParameter("nameofbank");
String dodd=request.getParameter("dodd");
int tenderfee=Integer.parseInt(request.getParameter("tenderfee"));
String ddfeno=request.getParameter("ddfeno");
String dofd=request.getParameter("dofd");
String nameofbank1=request.getParameter("nameofbank1");
int tendersecurity=Integer.parseInt(request.getParameter("tendersecurity"));
int bidamtper=Integer.parseInt(request.getParameter("bidamtper"));
String status="r";


    String getid="SELECT MAX(bidno) from tenderbids";

	st=con.createStatement();
	ResultSet rs1=st.executeQuery(getid);
	int val=0;
		if(rs1.next()){
			val=rs1.getInt(1);
			if (val>0){ val+=1;}
			else{val=1;}
		}

int bidno=val;
    java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
    String dos=fmt.format(new java.util.Date()).toString();



try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into tenderbids values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setInt(1,bidno);
sst.setInt(2,tid);
sst.setString(3,cid);
sst.setString(4,dos);
sst.setInt(5,emd);
sst.setString(6,ddno);
sst.setString(7,nameofbank);
sst.setString(8,dodd);
sst.setInt(9,tenderfee);
sst.setString(10,ddfeno);
sst.setString(11,dofd);
sst.setString(12,nameofbank1);
sst.setInt(13,tendersecurity);
sst.setInt(14,bidamtper);
sst.setString(15,status);


int eff=sst.executeUpdate();

if(eff>0)
{%>
<body>

<img src="http://localhost:8080/emart/images/p1.gif">
<div style="position:absolute;left:680;top:40;" >
<a href=company.html target=_parent><img src="http://localhost:8080/emart/images/p5.gif"></a>
</div>



<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center> EBusiness Mart</td></tr></table>
<fieldset>
<legend align=center><font face=tahoma>Entry Report</legend><BR>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded and Bid Number for the Tender is <%=bidno%><br> </h3>
  <br><br></center>
<%}
else
{%>
<body id=body>
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center>SRM ksrms</td></tr></table>
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
<Table width=100% cellspacing=0 cellpadding=0><TR><Td id=grad valign=top align=center>SRM ksrms</td></tr></table>
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




