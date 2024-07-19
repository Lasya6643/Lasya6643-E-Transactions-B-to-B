<link href="ksrm.cdf" rel="stylesheet"></link>
<%@ page import="java.sql.*" %>
<%@ include file="common.jsp" %>
<HTML>
<head>

</head>

<body >
<a href=admin.html><img src=images\p5.gif style="position:absolute;top:20;left:700;"></a>
<div style="position:absolute;top:168;left:180;" height=150 width=150>
<script src="updown.js"></script>
</div>
<img src=images\p1.gif>
<img src=images\h1.gif style="position:absolute;top:108;left:80;" >
<img src=images\h3.gif style="position:absolute;top:108;left:150;">
<img src=images\p3.jpg height=135 width=112 style="position:absolute;top:177;left:350;">
<img src=images\p4.jpg style="position:absolute;top:318;left:350;">

<script language="JavaScript1.2">
aWFMnBspm=(document.all&&document.getElementById);AWFMnBspm=document.getElementById&&!document.all;awfmnbSpm=document.layers;AwfmnbSpm=(navigator.userAgent.indexOf("Mozilla")>-1)?1:0;var aWfmnbSpm;var awFmnbSpm;var awfMnbSpm;var AWfmnbSpm;var aWFmnbSpm;var awFMnbSpm;var AWFmnbSpm;var aWFMnbSpm;var AWFMnbSpm;var awfmnbsPm;var AwfmnbsPm;var aWfmnbsPm;var awFmnbsPm;var awfMnbsPm;var AWfmnbsPm;var aWFmnbsPm;var awFMnbsPm;var AWFmnbsPm;var aWFMnbsPm;var AWFMnbsPm;var awfmnbspM;var AwfmnbspM;var aWfmnbspM;var awFmnbspM;var awfMnbspM='normal';var AWfmnbspM='normal';var aWFmnbspM="";if(navigator.userAgent.indexOf("Netscape6")>-1){aWFMnbsPm+=3;}initParameters(1,2,'#000000','#000000','#FFFFFF','#FDDE73',150,250,'hand','Arial,Times New Roman,Verdana',12,'#FFFFFF',1,'outset','#000000','#000000','#FFFFFF','#FDDE73',120,20,'#000000',1,'solid','hand');if (aWFMnBspm||AWFMnBspm){if(aWFMnBspm)document.write('<table cellpadding="0" cellspacing="0"><tr><td>');document.write('<div id="awFMnbspM" style="position:relative;font-family:'+awfmnbsPm+';font-size:'+AwfmnbsPm+';font-style:'+awfMnbspM+';font-weight:'+AWfmnbspM+';color:'+awfMnbSpm+';background:'+aWFmnbSpm+';width:'+AWFmnbSpm+';height:'+aWFMnbSpm+';border-width:'+awFmnbsPm+';border-style:'+awfMnbsPm+';border-color:'+aWfmnbsPm+';cursor:'+AWFMnbSpm+';overflow:hidden;" '+'onmouseover="this.style.background=awFMnbSpm;this.style.color=AWfmnbSpm;" onmouseout="this.style.background=aWFmnbSpm;this.style.color=awfMnbSpm;">');document.write('<div id="awFMnbspM2" style="position:absolute;width:'+AWFmnbSpm+';left:0;top:0">')}else if(awfmnbSpm){document.write('<ilayer name="awFMnbspM3" width=80 height=170 clip="0,0,180,170">');document.write('<layer name="awFMnbspM4" width=80 height=170 visibility=hidden>');}function initParameters(AWFmnbspM1,AWFmnbspM2,AWFmnbspM3,AWFmnbspM4,AWFmnbspM5,AWFmnbspM6,AWFmnbspM7,AWFmnbspM8,AWFmnbspM9,AWFmnbspM10,AWFmnbspM11,AWFmnbspM12,AWFmnbspM13,AWFmnbspM14,AWFmnbspM15,AWFmnbspM16,AWFmnbspM17,AWFmnbspM18,AWFmnbspM19,AWFmnbspM20,AWFmnbspM21,AWFmnbspM22,AWFmnbspM23,AWFmnbspM24){aWfmnbSpm=AWFmnbspM1;awFmnbSpm=AWFmnbspM2;awfMnbSpm=AWFmnbspM3;AWfmnbSpm=AWFmnbspM4;aWFmnbSpm=AWFmnbspM5;awFMnbSpm=AWFmnbspM6;AWFmnbSpm=AWFmnbspM7;aWFMnbSpm=AWFmnbspM8;AWFMnbSpm=AWFmnbspM9;awfmnbsPm=AWFmnbspM10;AwfmnbsPm=AWFmnbspM11;aWfmnbsPm=AWFmnbspM12;awFmnbsPm=AWFmnbspM13;awfMnbsPm=AWFmnbspM14;AWfmnbsPm=AWFmnbspM15;aWFmnbsPm=AWFmnbspM16;awFMnbsPm=AWFmnbspM17;AWFmnbsPm=AWFmnbspM18;aWFMnbsPm=AWFmnbspM19;AWFMnbsPm=AWFmnbspM20;awfmnbspM=AWFmnbspM21;AwfmnbspM=AWFmnbspM22;aWfmnbspM=AWFmnbspM23;awFmnbspM=AWFmnbspM24;};
</script>

<%
ResultSet rs=st.executeQuery("select * from ptype");
%>	

<font size=4 color="red"><b><a href="http://www.usingit.com/product/download.html" target="_blank" style="color:red;text-decoration:none">
<table border=0>

<tr style="background:green;">
<td><center><b>Hyper Links</center></td>
</tr>
<% while(rs.next())
{%>
<tr>
<td width=150><center><a href=productinfov1.jsp?typeid=<%=rs.getString(1)%>><%=rs.getString("type")%></a></td>
</tr>


<%}%>

<tr style="background:lightblue;">
<td width=150> <center><b><img src=images\mart.jpg height=100 width=100></td>
</tr>


</table>

<!-- <a href="http://www.usingit.com/">USINGIT.COM</a> -->

<script language="JavaScript1.2">
if (aWFMnBspm||AWFMnBspm){document.write('</div></div>');if(aWFMnBspm)document.write('</td></tr>');}else{document.write('</layer></ilayer>');}if (aWFMnBspm||AWFMnBspm){if(aWFMnBspm)document.write('<tr><td>');if(!window.opera){document.write('<form>');document.write('<input type="button" value="5" style="font-family:webdings;color:'+AWfmnbsPm+';background:'+awFMnbsPm+'; width:75; height:'+AWFMnbsPm+'; border-width:'+AwfmnbspM+';border-style:'+aWfmnbspM+';border-color:'+awfmnbspM+'; cursor:'+awFmnbspM+'" title="Move Up" onMouseover="AwfmNBspm();this.style.background=AWFmnbsPm;this.style.color=aWFmnbsPm;" onMouseout="clearTimeout(awFmNBspm);this.style.background=awFMnbsPm;this.style.color=AWfmnbsPm;">');document.write('<input type="button" value="6" style="font-family:webdings;color:'+AWfmnbsPm+';background:'+awFMnbsPm+'; width:75; height:'+AWFMnbsPm+'; border-width:'+AwfmnbspM+';border-style:'+aWfmnbspM+';border-color:'+awfmnbspM+'; cursor:'+awFmnbspM+'" title="Move Down" onMouseover="awfmNBspm();this.style.background=AWFmnbsPm;this.style.color=aWFmnbsPm;" onMouseout="clearTimeout(aWfmNBspm);this.style.background=awFMnbsPm;this.style.color=AWfmnbsPm;">');document.write('</form>');}if(aWFMnBspm)document.write('</td></tr></table>');}if(window.opera)document.write("&nbsp;");if(window.opera)document.getElementById("awFMnbspM").style.visibility='hidden';if(document.layers)document.awFMnbspM3.document.awFMnbspM4.visibility="hide";if (aWFMnBspm||AWFMnBspm){var aWFMnbspM=document.getElementById?document.getElementById("awFMnbspM2"):document.all.awFMnbspM2;var AWFMnbspM=aWFMnbspM.offsetHeight;}else if (awfmnbSpm){var aWFMnbspM=document.awFMnbspM3.document.awFMnbspM4;var AWFMnbspM=aWFMnbspM.clip.height;}function awfmNBspm(){if(aWFMnBspm&&((aWFMnbspM.outerHTML.indexOf("ingit.com/\">USIN")==-1)||(aWFMnbspM.outerHTML.indexOf("ingit.com/\">USIN")==-1)))return;if ((aWFMnBspm||AWFMnBspm)&&parseInt(aWFMnbspM.style.top)>=(AWFMnbspM*(-1)+100)){aWFMnbspM.style.top=parseInt(aWFMnbspM.style.top)-awFmnbSpm;}else if (awfmnbSpm&&aWFMnbspM.top>=(AWFMnbspM*(-1)+100)){aWFMnbspM.top-=awFmnbSpm;}aWfmNBspm=setTimeout("awfmNBspm()",aWfmnbSpm);};function AwfmNBspm(){if(aWFMnBspm&&((aWFMnbspM.outerHTML.indexOf("ingit.com/\">USIN")==-1)||(aWFMnbspM.outerHTML.indexOf("ingit.com/\">USIN")==-1)))return;if ((aWFMnBspm||AWFMnBspm)&&parseInt(aWFMnbspM.style.top)<=3){aWFMnbspM.style.top=parseInt(aWFMnbspM.style.top)+awFmnbSpm;}else if (awfmnbSpm&&aWFMnbspM.top<=0){aWFMnbspM.top+=awFmnbSpm;}awFmNBspm=setTimeout("AwfmNBspm()",aWfmnbSpm);};function awfMNBspm(){if(aWFmnbspM.charAt(60)!=String.fromCharCode(118))return;if(window.status!=aWFmnbspM)window.status=aWFmnbspM;if(awfmnbSpm)window.status=aWFmnbspM;};setInterval("awfMNBspm()",500);
</script>

</body>

</HTML>
