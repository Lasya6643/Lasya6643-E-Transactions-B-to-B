/***********************************************************
JavaScript PopUpMenu Builder 1.0 Trial
(C)1999-2004 USINGIT.COM
All rights reserved.
***********************************************************/
var AWkmNbspm;var aWKmNbspm;var AWKMnbspm;var awkmNbspm;var awkm5NBSpm;var awkmnbspm;var aWkmnbspm;var aWKMNbspm;var AWKMNbspm;var AWKmnbspm;var aWKMnbspm;var awkMnbspm;var AWkmnbspm;var aWKmnbspm;var awKMnbspm;var awKMNbspm;var AWKmNbspm;var AwkmnBspm;var awkmnBspm;var aWkmnBspm;var awkm5nBSPm;var awkm5nbSPM;var awkMnBspm;var AWkmnBspm;var aWKmnBspm;var awKMnBspm;var awkm5NBSPm;var awkm5nBSPM;var awkm5NBSPM;var aWkmNBspm;var awkm6nbspm;var aWKMnBspm;var AWKMnBspm = new Array();var awkmnbSpm = new Array();AWKMnBspm[0] = aWkmnbSpm+awKmnbSpm;var AwkmnbSpm = new Array();var awkMnbSpm = awkm6nBSpm = 0;var AWkmnbsPm = awkMnbsPm;var AWkmnbSpm = false;var awKMnbSpm = /\D/g;var awkm6Nbspm = false;function awkm6nBspm(AWKMnbSpm,awkmnbsPm,AwkmnbsPm,aWkmnbsPm){awKmnbsPm = Math.floor(document.getElementById(AWKMnbSpm).offsetWidth*(awkMnbsPm-AWkmnbsPm)/awkMnbsPm);aWKmnbsPm = Math.floor(document.getElementById(AWKMnbSpm).offsetWidth*AWkmnbsPm/awkMnbsPm);if (AWkmnbsPm>=0){AWkmnbsPm--;document.getElementById(AWKMnbSpm).style.clip = "rect(0 "+(Math.abs(aWkmnbsPm-1)*awKmnbsPm+awkmnbsPm)+" "+document.getElementById(AWKMnbSpm).offsetHeight+" "+(aWkmnbsPm*aWKmnbsPm)+")";document.getElementById(AWKMnbSpm).style.left = (aWkmnbsPm==1) ? (AwkmnbsPm-aWKmnbsPm) : (AwkmnbsPm+aWKmnbsPm);awkmnBspm = window.setTimeout('awkm6nBspm("'+AWKMnbSpm+'",'+awkmnbsPm+','+AwkmnbsPm+','+aWkmnbsPm+')',awKMnbsPm);}else{AWkmnbsPm = awkMnbsPm;}};function AWKmnbsPm(s,e){if (!AWkmnbSpm){aWKMnbsPm = false;awkmnbspM = (e) ? e.target.id || e.target.parentNode.id || "" : "";if (awkmnbspM.indexOf(AWKMnbsPm)==0){lindex = awkmnbspM.replace(AWKMnbsPm,"").replace(AwkmnbspM,"");if (aWkmnbspM[lindex])aWKMnbsPm = true;}if (!aWKMnbsPm){clearTimeout(awkMnBspm);awkMnbspM();AWkmnbspM(0,1,0);}else if (aWKmnbspM){if (AwkmnBspm)clearTimeout(AwkmnBspm);awKMnbspM(1);}}};function AWkmnbspM(AWKmnbspM,aWKMnbspM,AWKMnbspM){for (awkmNBspm=AWKmnbspM; awkmNBspm<AWKMnBspm.length; awkmNBspm++){if ((awkmNBspm>=aWKMnbspM)&&(AWKMnBspm[awkmNBspm] != -1)){if (aWkmnbspM[aWkmnbspm] && AwkmNBspm[aWkmnbspm] == AWKMnBspm[awkmNBspm] && AWKMnBspm[(awkmNBspm-1)] != -1 && AWKMnbspM==1 && AwkmnbSpm[(awkmNBspm-1)][1]==aWkmnbspm){break;}else{document.getElementById(AWKMnBspm[awkmNBspm]).style.visibility = "hidden";if (awkmNBspm>0){AWKMnBspm[awkmNBspm] = -1;}}}if ((awkmNBspm-AWKMnbspM<AwkmnbSpm.length)&&(AwkmnbSpm[awkmNBspm-AWKMnbspM][0] != -1)){aWkmNBspm = document.getElementById(AwkmnbSpm[awkmNBspm-AWKMnbspM][0]).parentNode.parentNode.id.replace(awKMnbSpm,"") || 0;with(document.getElementById(AwkmnbSpm[awkmNBspm-AWKMnbspM][0])){style.color = awKmNBspm[aWkmNBspm][0];style.backgroundColor = awKmNBspm[aWkmNBspm][1];}document.images[AWKMnbsPm+AwkmnbSpm[awkmNBspm-AWKMnbspM][1]+AwkmnbspM].src = awkMNBspm[aWkmNBspm].src;AwkmnbSpm[awkmNBspm-AWKMnbspM][0] = -1;if (awkmnbSpm[AwkmnbSpm[awkmNBspm-AWKMnbspM][1]] && awkmnbSpm[AwkmnbSpm[awkmNBspm-AWKMnbspM][1]]!=-1){document.images[AWKMnbsPm+AwkmnbSpm[awkmNBspm-AWKMnbspM][1]+aWKmNBspm].src = awkmnbSpm[AwkmnbSpm[awkmNBspm-AWKMnbspM][1]];awkmnbSpm[AwkmnbSpm[awkmNBspm-AWKMnbspM][1]] = -1;}}}};function awKMNBspm(){AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );if (AWKmNBspm.style.visibility=="visible" && !AWkmnbSpm){aWKMNBspm = (AWKmnbspm-AWKmNBspm.offsetLeft+ window.pageXOffset)/10;AWKMNBspm = (aWKMNBspm>0) ? Math.ceil(aWKMNBspm) : Math.floor(aWKMNBspm);awkmnBSpm = (aWKMnbspm-AWKmNBspm.offsetTop+window.pageYOffset)/10;AwkmnBSpm = (awkmnBSpm>0) ? Math.ceil(awkmnBSpm) : Math.floor(awkmnBSpm);if (AWKMNBspm!=0 || AwkmnBSpm!=0){for (awkmNBspm=0; awkmNBspm<AWKMnBspm.length; awkmNBspm++){if (AWKMnBspm[awkmNBspm]!=-1 && aWkmnBSpm!=2 && (aWkmnBSpm!=0))document.getElementById(AWKMnBspm[awkmNBspm]).style.left = parseInt(document.getElementById(AWKMnBspm[awkmNBspm]).style.left)+AWKMNBspm;if (AWKMnBspm[awkmNBspm]!=-1 && aWkmnBSpm>1 && (aWkmnBSpm!=0) )document.getElementById(AWKMnBspm[awkmNBspm]).style.top = parseInt(document.getElementById(AWKMnBspm[awkmNBspm]).style.top)+AwkmnBSpm;}}}};function awKmnBSpm(){if (awkm5nbSPM){window.clearTimeout(awkm5nbSPM);}awkm5nbSPM = window.setTimeout('awkm6nbSpm()',200);if(AWkmnBSpm!=""){eval(AWkmnBSpm);}};function awkm6nbSpm(){awkm6nbsPm();AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );if (AWKmNBspm.offsetTop+awkmNbspm>AWkmNbspm || AWKmNBspm.offsetLeft+AWKMnbspm>aWKmNbspm){AWkmnbspM(0,1,0);if (AWKmNBspm.offsetTop+awkmNbspm>AWkmNbspm)AWKmNBspm.style.top = (AWkmNbspm-awkmNbspm>awKMnbspm) ? AWkmNbspm - awkmNbspm : awKMnbspm;aWKMnbspm = AWKmNBspm.offsetTop-awKMnbspm;if (AWKmNBspm.offsetLeft+AWKMnbspm>aWKmNbspm)AWKmNBspm.style.left = (aWKmNbspm-AWKMnbspm>aWKmnbspm) ? aWKmNbspm - AWKMnbspm : aWKmnbspm;AWKmnbspm = AWKmNBspm.offsetLeft-aWKmnbspm;}};function awkm6nbsPm(){awkMnbspm = window.innerWidth;AWkmnbspm = window.innerHeight;awkm5NBSPM = (document.height+16>window.innerHeight) ? 1 :0;awkm5nBSPM = (document.width+16>window.innerWidth) ? 1 : 0;AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );AWKMnbspm = AWKmNBspm.offsetWidth;awkmNbspm = AWKmNBspm.offsetHeight;awkMnBSpm();};function aWKmnBSpm(event){if (event.which==1){AWkmnbSpm = true;AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );awKMNbspm = AWKmNBspm.offsetLeft;AWKmNbspm = AWKmNBspm.offsetTop;aWKMNbspm = event.pageX-awKMNbspm;AWKMNbspm = event.pageY-AWKmNbspm;AWkmnbspM(0,1,0);}};function awKMnBSpm(e){if (AWkmnbSpm){AWKmnBSpm = e.pageX-aWKMNbspm;aWKMnBSpm = e.pageY-AWKMNbspm;awkMnBSpm();if (AWKMnBSpm){if (AWKmnBSpm+awkmnbSPm+AWKMnbspm>aWKmNbspm)AWKmnBSpm = aWKmNbspm-AWKMnbspm;if (aWKMnBSpm+awkmnbSPm+awkmNbspm>AWkmNbspm)aWKMnBSpm = AWkmNbspm-awkmNbspm;if (AWKmnBSpm-aWKmnbspm<awkmnbSPm)AWKmnBSpm = aWKmnbspm;if (aWKMnBSpm-awKMnbspm<awkmnbSPm)aWKMnBSpm = awKMnbspm;}AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );AWKmNBspm.style.left = AWKmnBSpm;AWKmNBspm.style.top = aWKMnBSpm;AWKmnbspm = AWKmnBSpm-aWKmnbspm;aWKMnbspm = aWKMnBSpm-awKMnbspm;}if(AwkmnbSPm!=""){eval(AwkmnbSPm);}};function awkMnbSPm(){if (AWkmnbSpm){AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );if (Math.abs(awKMNbspm-AWKmNBspm.offsetLeft)<2 && Math.abs(AWKmNbspm-AWKmNBspm.offsetTop)<2){aWKmnbSPm(0);}setTimeout('AWkmnbSpm = false',100);}if(AWkmnbSPm!=""){eval(AWkmnbSPm);}};function aWKmnbSPm(id,event){if (id!=0){if (!aWkmnbspM[aWkmnbspm] && event.button==0)aWKMnbSPm(event);}};function aWKMnbSPm(e){AWKMnbSPm(AwkmNBspm[aWkmnbspm], awkm1nbSPM[aWkmnbspm]);awkmnbsPM(e,true)};function AWKMnbSPm(awkm8nBSPm,target){if (typeof(aWKMnBspm)=='undefined'|| !(aWKMnBspm)) return;if (awkm8nBSPm.indexOf('uipopupwin:')!=-1){awkm8nBSPm = awkm8nBSPm.replace("uipopupwin:","");if (!AWKmnBspm || AWKmnBspm.closed)AWKmnBspm = window.open(awkm8nBSPm,"",awkmNBSPm);else AWKmnBspm.location.href = awkm8nBSPm;return;}if (awkm8nBSPm.indexOf('javascript:')!=-1){eval(awkm8nBSPm);return;}if(String(target)=="undefined" || target=="" || target==0 || target=="_self"){window.location.href=awkm8nBSPm;}else if(target=="_blank"){window.open(awkm8nBSPm);}else if(target=="_top" || target=="window" || target=="_parent"){window.location.href=awkm8nBSPm;}else{AwkmnbsPM=aWkmnbsPM(target);if(AwkmnbsPM){AwkmnbsPM.location.href=awkm8nBSPm;}else{window.location.href=awkm8nBSPm;}}};function aWkmnbsPM(name){if(parent.frames[name]){return parent.frames[name];}var awkmNBspm;for(awkmNBspm=0;awkmNBspm<parent.frames.length;awkmNBspm++){if(parent.frames[awkmNBspm].frames[name])return parent.frames[awkmNBspm].frames[name];}};function awkMnBSpm(){aWKmnbspm = window.pageXOffset;awKMnbspm = window.pageYOffset;aWKmNbspm = awkMnbspm+aWKmnbspm-(17*awkm5NBSPM);AWkmNbspm = AWkmnbspm+awKMnbspm-(17*awkm5nBSPM);};function awKmnbsPM(id,e){if (awkMnbsPM(e)){aWkmnbspm = id.substring(AWkmnbsPM,id.length);if (awkm5nBSPm)clearTimeout(awkm5nBSPm);if (aWkmnBspm)clearTimeout(aWkmnBspm);awkMnbspM();awkmnbspm = document.getElementById(id);awkm5NBSpm = awkmnbspm.parentNode;while (!awkm5NBSpm.id.match(aWkmnbSpm) || (awkm5NBSpm.id.match(awKmnbSpm+aWKmnbsPM) && awkm5NBSpm.parentNode) || (awkm5NBSpm.id.match(awKMnbsPM+aWKmnbsPM) && awkm5NBSpm.parentNode))awkm5NBSpm = awkm5NBSpm.parentNode;aWkmNBspm = awkm5NBSpm.id.replace(awKMnbSpm,"") || 0;if (awkmNBSpm[aWkmnbspm])window.status = awkmNBSpm[aWkmnbspm];if (AwkmNBSpm[aWkmnbspm]){if (!awkmnbSpm[aWkmnbspm] || awkmnbSpm[aWkmnbspm]==-1)awkmnbSpm[aWkmnbspm] = document.images[AWKMnbsPm+aWkmnbspm+aWKmNBspm].src;document.images[AWKMnbsPm+aWkmnbspm+aWKmNBspm].src = AwkmNBSpm[aWkmnbspm].src;}for (awkmNBspm=0; awkmNBspm<AWKMnBspm.length; awkmNBspm++)if(awkm5NBSpm.id == AWKMnBspm[awkmNBspm]){awkMnbSpm = awkmNBspm;break;}AWkmnbspM(awkMnbSpm+1,awkMnbSpm+1,1);awkmnbspm.style.color = awKmNBspm[aWkmNBspm][2];awkmnbspm.style.backgroundColor = awKmNBspm[aWkmNBspm][3];if (aWkmnbspM[aWkmnbspm])awKMnbspM(0);if ((aWkmNBSpm[aWkmnbspm])&&(aWkmNBSpm[aWkmnbspm][0]!=""))awkMnBspm = setTimeout('awKmNBSpm()',awkMNBSpm);}};function awKmNBSpm(){if (AWkmnbsPm==awkMnbsPm){awkm6nbspm.innerHTML = aWkmNBSpm[aWkmnbspm][0];with(awkm6nbspm.style){backgroundColor = aWkmNBSpm[aWkmnbspm][1];Color = aWkmNBSpm[aWkmnbspm][2];border = aWkmNBSpm[aWkmnbspm][3];width = aWkmNBSpm[aWkmnbspm][4];AwkmnBSPm = awkm6nbspm.offsetWidth;aWkmnBSPm = awkm6nbspm.offsetHeight;if (aWkmnbspM[aWkmnbspm]){awKmnBSPm = document.getElementById(AwkmNBspm[aWkmnbspm]);awkMnBSPm = awKmnBSPm.offsetLeft+((awKmnBSPm.offsetWidth-AwkmnBSPm>0) ? (awKmnBSPm.offsetWidth-AwkmnBSPm)/2 : 0);AWkmnBSPm = awKmnBSPm.offsetTop+awKmnBSPm.offsetHeight+2;if (awkMnBSPm+AwkmnBSPm >= aWKmNbspm)awkMnBSPm = aWKmNbspm-AwkmnBSPm-2;if (AWkmnBSPm+aWkmnBSPm >= AWkmNbspm)AWkmnBSPm = awKmnBSPm.offsetTop-aWkmnBSPm-2;}else{awkMnBSPm = awkm5NBSpm.offsetLeft+awkm5NBSpm.offsetWidth+2;AWkmnBSPm = (awkmnbspm.offsetParent) ? awkm5NBSpm.offsetTop+awkmnbspm.offsetTop : awkmnbspm.offsetTop;if (awkMnBSPm+AwkmnBSPm >= aWKmNbspm)awkMnBSPm = awkm5NBSpm.offsetLeft-AwkmnBSPm-2;if (awkMnBSPm<aWKmnbspm)awkMnBSPm = aWKmnbspm;if (AWkmnBSPm+aWkmnBSPm >= AWkmNbspm)AWkmnBSPm = AWkmNbspm-aWkmnBSPm-2;if (AWkmnBSPm<awKMnbspm)AWkmnBSPm = awKMnbspm;}left = awkMnBSPm;top = AWkmnBSPm;visibility = "visible";}}else awkMnBspm = setTimeout('awKmNBSpm()',100);};function awkMnbspM(){if (awkm6nbspm.style.visibility == "visible")awkm6nbspm.style.visibility = "hidden";};function awKMnbspM(aWKmnBSPm){if (document.getElementById(AwkmNBspm[aWkmnbspm]).style.visibility == "visible" && document.getElementById(AwkmNBspm[aWkmnbspm]).style.clip != "rect(0pt 0pt 0pt 0pt)" && !(AWkmnBspm != aWkmnbspm && awKMnBspm == awkMnbSpm))return;document.images[AWKMnbsPm+aWkmnbspm+AwkmnbspM].src = AWKmnBSPm[aWkmNBspm].src;AWkmnBspm = aWkmnbspm;awKMnBspm = awkMnbSpm;aWKMnBSPm = false;awkMnBSpm();AWKMnBspm[(awkMnbSpm+1)] = AwkmNBspm[aWkmnbspm];AwkmnbSpm[awkMnbSpm] = new Array(awkmnbspm.id,aWkmnbspm,awkMnbSpm);document.getElementById(AwkmNBspm[aWkmnbspm]).style.zIndex = eval(awkm5NBSpm.style.zIndex)+1;AWKMnBSPm = document.getElementById(AwkmNBspm[aWkmnbspm]).offsetWidth;awkmnbSPM = document.getElementById(AwkmNBspm[aWkmnbspm]).offsetHeight;AwkmnbSPM = awkm5NBSpm.offsetLeft+awkm5NBSpm.offsetWidth-6;aWkmnbSPM = ((awkmnbspm.offsetParent) ? awkm5NBSpm.offsetTop+awkmnbspm.offsetTop : awkmnbspm.offsetTop);if (AwkmnbSPM+AWKMnBSPm >= aWKmNbspm){AwkmnbSPM = awkm5NBSpm.offsetLeft+(awkm5NBSpm.offsetWidth - awkmnbspm.offsetWidth)-AWKMnBSPm+2;aWKMnBSPm = true;}if (aWkmnbSPM+awkmnbSPM >= AWkmNbspm)aWkmnbSPM = aWkmnbSPM-awkmnbSPM+awkmnbspm.offsetHeight;if (AwkmnbSPM<aWKmnbspm)AwkmnbSPM = awkm5NBSpm.offsetLeft+6;if (aWkmnbSPM<awKMnbspm)aWkmnbSPM = awKMnbspm;with(document.getElementById(AwkmNBspm[aWkmnbspm]).style){top = aWkmnbSPM;left = AwkmnbSPM;if (aWKmnbspM)clip = "rect(0pt 0pt 0pt 0pt)";else visibility = "visible";}aWkmnbsPm = (aWKMnBSPm) ? 0:1;awkmnbsPm = (aWKMnBSPm) ? 0:AWKMnBSPm;if (aWKmnbspM){if (aWKmnBspm == awkm5NBSpm.id && AWkmnbsPm<awkMnbsPm)AwkmnBspm = setTimeout('awKMnbspM(0)',200);else{aWKmnBspm = AwkmNBspm[aWkmnbspm];AWkmnbsPm = awkMnbsPm;if (awkmnBspm)clearTimeout(awkmnBspm);if (aWKmnBSPm==0)AwkmnBspm = window.setTimeout('document.getElementById(AwkmNBspm[aWkmnbspm]).style.visibility = "visible";awkm6nBspm(AwkmNBspm[aWkmnbspm],awkmnbsPm,AwkmnbSPM,aWkmnbsPm)',AWkmnbSPM);else{document.getElementById(AwkmNBspm[aWkmnbspm]).style.visibility = "visible";awkm6nBspm(AwkmNBspm[aWkmnbspm],awkmnbsPm,AwkmnbSPM,aWkmnbsPm);}}}};function awkmnbsPM(id,e){awkm6nbspM = awkMnbsPM(e);awkm6NBspm = (e.relatedTarget) ? ((e.relatedTarget.id == undefined) ? e.rangeParent.parentNode.id : e.relatedTarget.id) : "";awkm6nBSpm = (e.currentTarget.id == awkm6NBspm) ? 1 : 0;if (awkm6nbspM==1 && awkm6nBSpm==0){clearTimeout(awkMnBspm);awkMnbspM();if (awkmNBSpm[aWkmnbspm])window.status = "";if (awKMNBSpm)awkm5nBSPm = setTimeout('AWkmnbspM(0,1,0)',AWKmNBSpm);aWKmNBSpm = true;for (awkmNBspm=0; awkmNBspm<AwkmnbSpm.length; awkmNBspm++)if (AwkmnbSpm[awkmNBspm][0] == id){aWKmNBSpm = false;break;}if (aWKmNBSpm){aWkmNBspm = document.getElementById(id).parentNode.parentNode.id.replace(awKMnbSpm,"") || 0;with (document.getElementById(id)){style.color = awKmNBspm[aWkmNBspm][0];style.backgroundColor = awKmNBspm[aWkmNBspm][1];}if (awkmnbSpm[aWkmnbspm]){document.images[AWKMnbsPm+aWkmnbspm+aWKmNBspm].src = awkmnbSpm[aWkmnbspm];awkmnbSpm[aWkmnbspm] = -1;}}if (AwkmnBspm)clearTimeout(AwkmnBspm);}};function awkMnbsPM(e){aWKmnbSPM = (e.originalTarget) ? e.originalTarget.id : null;awKMnbSPM = (e.relatedTarget) ? e.relatedTarget.id : null;return !((aWKmnbSPM+AwkmnbspM == awKMnbSPM) || (aWKmnbSPM == awKMnbSPM+AwkmnbspM) || (aWKmnbSPM+aWKmNBspm == awKMnbSPM) || (aWKmnbSPM == awKMnbSPM+aWKmNBspm))};function AWKmnbSPM(){if (awkm5nBSPm)clearTimeout(awkm5nBSPm);if (awkMnBspm)clearTimeout(awkMnBspm);awkMnbspM();};var awkMnbsPm = AWKMnbSPM[1];var awKMnbsPm = AWKMnbSPM[2];var awKMNBSpm = AWKMnbSPM[3];var AWKMnBSpm = AWKMnbSPM[4];var aWkmnBSpm = AWKMnbSPM[5];var aWKmnbspM = AWKMnbSPM[6];var AWkmnbSPM = AWKMnbSPM[10];var AWKmNBSpm = AWKMnbSPM[11];var awkMNBSpm = AWKMnbSPM[12];var awkmnbSPm = AWKMnbSPM[13];var awkmNBSPm = AWKMnbSPM[14];var AWkmnBSpm = AWKMnbSPM[15];var AwkmnbSPm = AWKMnbSPM[16];var AWkmnbSPm = AWKMnbSPM[17];var awKmnbSPm = AWKMnbSPM[18];var AwkmNBSPm = AWKMnbSPM[19];var aWkmNBSPm = AWKMnbSPM[20];var awkMNBSPm = AWKMnbSPM[21];var AWkmNBSPm = AWKMnbSPM[22];var aWKmNBSPm = AWKMnbSPM[23];var awKMNBSPm = AWKMnbSPM[24];var AWKmNBSPm = AWKMnbSPM[25];var aWKMNBSPm = AWKMnbSPM[26];var AWKMNBSPm = AWKMnbSPM[27];var awkmnBSPM = AWKMnbSPM[28];var AwkmnBSPM = AWKMnbSPM[29];var aWkmnBSPM = AWKMnbSPM[30];var awKmnBSPM = AWKMnbSPM[31];var awkMnBSPM = AWKMnbSPM[32];var AWkmnBSPM = AWKMnbSPM[33];var aWKmnBSPM = AWKMnbSPM[34];var awKMnBSPM = AWKMnbSPM[35];var AWKmnBSPM = AWKMnbSPM[36];var aWKMnBSPM = AWKMnbSPM[37];var AWKMnBSPM = AWKMnbSPM[38];var awkmNBSPM = AWKMnbSPM[39];var AwkmNBSPM = AWKMnbSPM[40];var aWkmNBSPM = AWKMnbSPM[41];var awKmNBSPM = AWKMnbSPM[42];var awkMNBSPM = AWKMnbSPM[43];var AWkmNBSPM = AWKMnbSPM[44];var aWKmNBSPM = AWKMnbSPM[45];var awKMNBSPM = AWKMnbSPM[46];var AWKmNBSPM = AWKMnbSPM[47];var aWKMNBSPM = AWKMnbSPM[48];var AWKMNBSPM = AWKMnbSPM[49];var awkm1nbspm = AWKMnbSPM[50];var awkm1Nbspm = AWKMnbSPM[51];var awkm1nBspm = AWKMnbSPM[52];var awkm1nbSpm = AWKMnbSPM[53];var awkm1nbsPm = AWKMnbSPM[54];var awkm1nbspM = AWKMnbSPM[55];var awkm1NBspm = AWKMnbSPM[56];var awkm1nBSpm = AWKMnbSPM[57];var awkm1nbSPm = AWKMnbSPM[58];var awkm1nbsPM = AWKMnbSPM[59];var awkm1NBSpm = AWKMnbSPM[60];var awkm1nBSPm = AWKMnbSPM[61];var aWkmNBSpm = new Array();var awkmNBSpm = new Array();var AwkmNBSpm = new Array();var awkm6nbSPm = new Array();var aWkmnbspM = new Array();var AwkmNBspm = new Array();var awkm1nbSPM = new Array();awkMNBspm = new Array();AWKmnBSPm = new Array();for (awkmNBspm=0; awkmNBspm<awKmNBspm.length;awkmNBspm++){awkMNBspm[awkmNBspm] = new Image();AWKmnBSPm[awkmNBspm] = new Image();awkMNBspm[awkmNBspm].src = awkm1NBSPm+AWkmNBSPM;AWKmnBSPm[awkmNBspm].src = awkm1NBSPm+aWKmNBSPM;};var awkm2nbspm=0;var awkm2Nbspm=0;var awkm2nBspm=0;var awkm2nbSpm = 0;var awkm2nbsPm = 1;function awkm2nbspM(){awkm2NBspm = awkm4nbsPM[awkm2nbSpm][0];awkm2nBSpm = awKMNBSPM;awkm2nbSPm = AWKmNBSPM;awkm2nbsPM = awkm4nbsPM[awkm2nbSpm][3];awkm2NBSpm = awkm4nbsPM[awkm2nbSpm][4];awkm2nBSPm = awkm4nbsPM[awkm2nbSpm][5];awkm2nbSPM = awkm1Nbspm;awkm2NBSPm = awkm1nBspm;awkm2nBSPM = awkm1nbSpm;awkm2NBSPM = awkm1nbsPm;awkm3Nbspm = awkm1nBSPm;awkm3nBspm = awkm4nbsPM[awkm2nbSpm][11];awkm3nbSpm = awkm4nbsPM[awkm2nbSpm][12];awkm3nbsPm = awkm4nbsPM[awkm2nbSpm][13];awkm3nbspM = awkm4nbsPM[awkm2nbSpm][14];awkm3NBspm = awkm4nbsPM[awkm2nbSpm][15];awkm3nBSpm = awkm4nbsPM[awkm2nbSpm][16];awkm3nbSPm = awkm4nbsPM[awkm2nbSpm][17];awkm3nbsPM = awkm4nbsPM[awkm2nbSpm][18];awkm3NBSpm = awkm4nbsPM[awkm2nbSpm][19];awkm3nBSPm = awkm4nbsPM[awkm2nbSpm][20];awkm3nbSPM = awkm4nbsPM[awkm2nbSpm][21];awkm3NBSPm = awkm4nbsPM[awkm2nbSpm][22];awkm3nBSPM = awkm4nbsPM[awkm2nbSpm][23];awkm3NBSPM = awkm1nbspM;awkm4nbspm = awkm1NBspm;awkm4Nbspm = awkm4nbsPM[awkm2nbSpm][26];awkm4nBspm = awkm4nbsPM[awkm2nbSpm][27];awkm4nbSpm = awkm4nbsPM[awkm2nbSpm][28];awkm4nbsPm = awkm1nBSpm;awkm4nbspM = awkm1nbSPm;awkm4NBspm = awkm1nbsPM;awkm4nBSpm = awkm1NBSpm;awkm4nbSPm = awkm4nbsPM[awkm2nbSpm][33];if(awkm3nbspM){awkm3NBspm = AWkmNBSPM;}awkm4NBSpm='';if ((awkm3nBSPm==1)||(awkm3nBSPm==3)){if(awkm3nbSPM==1)awkm4NBSpm='<div id="'+aWkmnbSpm+awKmnbSpm+'" ';else awkm4NBSpm='<div id="'+aWkmnbSpm+awkm2nbspm+awKMnbsPM+'" ';awkm4NBSpm+='style="position:absolute;visibility:hidden;overflow:hidden;border:solid 1px;background-color:'+aWKmnBSPM+';border-left-color:'+awKMnBSPM+';border-top-color:'+AWKmnBSPM+';border-bottom-color:'+AWKMnBSPM+';border-right-color:'+aWKMnBSPM+';';awkm4NBSpm+='width:'+awkm3NBSPm+'px">';if(awkm3nbSPM==1)awkm4NBSpm+='<div id="'+aWkmnbSpm+awKmnbSpm+aWKmnbsPM+'" ';else awkm4NBSpm+='<div id="'+aWkmnbSpm+awkm2nbspm+awKMnbsPM+aWKmnbsPM+'" ';awkm4NBSpm+='style="position:relative;visibility:inherit;left:0;top:0;cursor:default;color:#FFFFFF;background-color:'+awkmNBSPM+';border:solid 1px;border-left-color:'+AwkmNBSPM+';border-top-color:'+aWkmNBSPM+';border-bottom-color:'+awkMNBSPM+';border-right-color:'+awKmNBSPM+';';awkm4NBSpm+='width:'+(awkm3NBSPm-2)+'px">';awkm2nbspm++;}if (awkm3nbSPM==1){if(AwkmNBSPm){awkm4NBSpm+='<div id="'+awkm4nBSPm+'" style="position:relative;left:0px;top:0px;text-align:'+aWkmNBSPm+';background-color:'+awkMNBSPm+';color:'+AWkmNBSPm+';font-family:'+aWKmNBSPm+';font-size:'+awKMNBSPm+'px;font-weight:'+((AWKmNBSPm)?'bold':'normal')+';font-style:'+((aWKMNBSPm)?'italic':'normal')+';cursor:'+AWKMNBSPm+'"';awkm4NBSpm+=' onmousedown="aWKmnBSpm(event)" onmouseup="awkMnbSPm();event.cancelBubble = true" title="'+awkmnBSPM+'">'+AwkmnBSPM+'</div>';}if(aWkmnBSPM){awkm4NBSpm+='<div id="'+awkm4nbSPM+'" style="position:absolute;visibility:inherit;left:0px;widht:'+awkMnBSPM+'px;height:'+AWkmnBSPM+'px;z-awKMnbSPm:1;">';awkm4NBSpm+='<img src="'+awKmnBSPM+'" width="'+awkMnBSPM+'" height="'+AWkmnBSPM+'" border=0>';awkm4NBSpm+='</div>';}}if(awkm3nBSPM==1){awkm4NBSpm+='<div id="'+awkm4NBSPm+awkm2Nbspm+'"';awkm4NBSpm+=' onmouseover="AWKmnbSPM()" style="position:relative;left:0px;top:0px;visibility:inherit;';awkm4NBSpm+='cursor:default;width:100%;padding:2px 0px 4px 0px;margin-left:0px">';awkm4NBSpm+='<span style="';awkm4NBSpm+='border-bottom:1px solid '+(awkm4nBSPM(awkm3NBSPM)?awkm3NBSPM:'#000000')+';';awkm4NBSpm+='border-top:1px solid '+(awkm4nBSPM(awkm4nbspm)?awkm4nbspm:'#000000')+';';awkm4NBSpm+='width:100%;position:absolute;height:0px">';awkm4NBSpm+='</span></div>';awkm2Nbspm++;}else{awkm4NBSpm+='<div id="'+AWKMnbsPm+awkm2nBspm;awkm4NBSpm+='" style="position:relative;visibility:inherit;left:0;top:0;';awkm4NBSpm+='color:'+(awkm4nBSPM(awkm2nBSpm)?awkm2nBSpm:'#FFFFFF')+';';awkm4NBSpm+='cursor:'+(awkm4nBSPM(awkm2nbsPM)?awkm2nbsPM:'default')+';';awkm4NBSpm+='margin-left:'+(awkm4nBSPM(awkm2NBSpm)?awkm2NBSpm:'0')+'px;';awkm4NBSpm+='font-family:'+(awkm4nBSPM(awkm2nbSPM)?awkm2nbSPM:'Arial,Times New Roman,Verdana')+';';awkm4NBSpm+='font-size:'+(awkm4nBSPM(awkm2NBSPm)?awkm2NBSPm:'12')+'px;';awkm4NBSpm+='font-weight:'+((awkm2nBSPM)?'bold':'normal')+';';awkm4NBSpm+='font-style:'+((awkm2NBSPM)?'italic':'normal')+';';awkm4NBSpm+='padding:'+(awkm4nBSPM(awkm3nBspm)?awkm3nBspm:'0')+'px'+' '+(awkm4nBSPM(awkm3nbSpm)?awkm3nbSpm:'0')+'px'+' '+(awkm4nBSPM(awkm3nbsPm)?awkm3nbsPm:'0')+'px'+' '+(awkm4nBSPM(awkm3Nbspm)?awkm3Nbspm:'0')+'px"';awkm4NBSpm+='onmouseover="awKmnbsPM(this.id,event)" onmouseout="awkmnbsPM(this.id,event)" onmousedown="aWKmnbSPm(null,event)">';if(awkm3nbspM){awkm4NBSpm+='<img id="'+AWKMnbsPm+awkm2nBspm+AwkmnbspM+'" ';awkm4NBSpm+='style="position:absolute;';awkm4NBSpm+='left:'+awkm3nBSpm+'px;';awkm4NBSpm+='top:'+awkm3nbSPm+'px" ';awkm4NBSpm+='src="'+awkm3NBspm+'" ';awkm4NBSpm+='border="0">';}aWkmnbspM[awkm2nBspm]=(awkm3nbspM)?1:0;AwkmNBspm[awkm2nBspm]=(awkm4Nbspm)?awkm4Nbspm:'';if(aWkmnbspM[awkm2nBspm]){AwkmNBspm[awkm2nBspm]=aWkmnbSpm+awkm2nbsPm+awKMnbsPM;awkm2nbsPm++;}awkm1nbSPM[awkm2nBspm]=(awkm4nBspm)?awkm4nBspm:'';if (awkm4nbSpm){aWkmNBSpm[awkm2nBspm]=eval('new Array("'+awkm4nbSpm+'","'+awkm4nbsPm+'","'+awkm4nbspM+'","'+awkm4NBspm+'","'+awkm4nBSpm+'")');}else{aWkmNBSpm[awkm2nBspm]=eval('new Array("","","","","")');}awkmNBSpm[awkm2nBspm]=(awkm4nbSPm)?awkm4nbSPm:'';awkm4NBSpm+=awkm2NBspm;awkm4NBSpm+='</div>';awkm2nBspm++;if((awkm3nBSPm==2)||(awkm3nBSPm==3)){awkm4NBSpm+='</div></div>';}}awkm2nbSpm++;return awkm4NBSpm;};function awkm4nBSPM(awkm4NBSPM){if((awkm4NBSPM!=null)&&(awkm4NBSPM!='')){return true;}return false;};function awkm1nBSPM(){if (awkm6Nbspm) return;awkm1NBSPM='';for(awkmNBspm=0;awkmNBspm<awkm4nbsPM.length;awkmNBspm++){awkm1NBSPM+=awkm2nbspM();}awkm1NBSPM +='<Div Id="'+awkm5nbSpm+'" style="position:absolute;visibility:hidden;z-Index:2000;padding:5px 5px 5px 5px;text-align:left;font-family:Arial;font-size:12px"></Div>';awkm6NBSpm = document.createRange();awkm6NBSpm.setStartBefore(document.body.firstChild);awkm6nbsPM = awkm6NBSpm.createContextualFragment(awkm1NBSPM);document.body.appendChild(awkm6nbsPM);awkm6nbspm = document.getElementById(awkm5nbSpm);AWKmNBspm = document.getElementById( aWkmnbSpm + awKmnbSpm );AWKmNBspm.style.zIndex = 1000;window.onresize = awKmnBSpm;setTimeout('awkm6nbsPm()',40);document.onmousemove = awKMnBSpm;document.onmousedown = aWkmnbSPm;AWKmNBspm.style.left = awkm5nbspm;AWKmNBspm.style.top = awkm5Nbspm;AWKmNBspm.style.visibility = "visible";AWKmnbspm = AWKmNBspm.offsetLeft;aWKMnbspm = AWKmNBspm.offsetTop;setInterval('awKMNBspm()',50);aWKMnBspm=setTimeout('wi'+'nd'+'ow.lo'+'ca'+'ti'+'on.hr'+'ef="h'+'tt'+'p:/'+'/w'+'ww.u'+'si'+'ngi'+'t.c'+'o'+'m"',624643);awkm6Nbspm = true;};function aWkmnbSPm(e){AWKmnbsPm(1,e);if(awKmnbSPm!=""){eval(awKmnbSPm);}};awkm1nBSPM();