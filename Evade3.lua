local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\176\61","\229\158\19\219"),function(v42) if (v9(v42,2)==81) then local v93=0;while true do if (v93==0) then v30=v8(v11(v42,1,2 -1 ));return "";end end else local v94=0;local v95;while true do if (0==v94) then v95=v10(v8(v42,16));if v30 then local v120=0;local v121;while true do if (0==v120) then v121=v13(v95,v30);v30=nil;v120=1;end if (v120==1) then return v121;end end else return v95;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v96=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + (2 -1))) ;return v96-(v96%1) ;else local v97=0;local v98;while true do if (v97==0) then v98=2^(v44-(1 -0)) ;return (((v43%(v98 + v98))>=v98) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (1==v48) then return (v50 * 256) + v49 ;end if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end end end local function v34() local v51,v52,v53,v54=v9(v27,v29,v29 + (7 -4) );v29=v29 + 4 ;return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==1) then v58=1;v59=(v31(v57,1,20) * (2^32)) + v56 ;v55=2;end if (v55==0) then v56=v34();v57=v34();v55=1;end if (2==v55) then v60=v31(v57,640 -(555 + 64) ,31);v61=((v31(v57,32)==1) and  -1) or 1 ;v55=3;end if (v55==3) then if (v60==0) then if (v59==0) then return v61 * 0 ;else local v122=0;while true do if (v122==0) then v60=932 -(857 + 74) ;v58=568 -(367 + 201) ;break;end end end elseif (v60==2047) then return ((v59==(927 -(214 + 713))) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/((1 + 1)^52))) ;end end end local function v36(v62) local v63=0;local v64;local v65;while true do if (v63==1) then v64=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;v63=2;end if (2==v63) then v65={};for v102=1, #v64 do v65[v102]=v10(v9(v11(v64,v102,v102)));end v63=3;end if (v63==0) then v64=nil;if  not v62 then local v117=0;while true do if (v117==0) then v62=v34();if (v62==0) then return "";end break;end end end v63=1;end if (3==v63) then return v14(v65);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66=0;local v67;local v68;local v69;local v70;local v71;local v72;while true do if (v66==0) then v67={};v68={};v69={};v70={v67,v68,nil,v69};v66=1;end if (v66==2) then for v104=1,v34() do local v105=0;local v106;while true do if (v105==0) then v106=v32();if (v31(v106,878 -(282 + 595) ,1638 -(1523 + 114) )==0) then local v124=0;local v125;local v126;local v127;while true do if (v124==2) then if (v31(v126,1066 -(68 + 997) ,1)==1) then v127[2]=v72[v127[2]];end if (v31(v126,2,1272 -(226 + 1044) )==1) then v127[3]=v72[v127[12 -9 ]];end v124=3;end if (v124==3) then if (v31(v126,3,120 -(32 + 85) )==(1 + 0)) then v127[1 + 3 ]=v72[v127[4]];end v67[v104]=v127;break;end if (v124==1) then v127={v33(),v33(),nil,nil};if (v125==0) then v127[3]=v33();v127[4]=v33();elseif (v125==1) then v127[3]=v34();elseif (v125==2) then v127[3]=v34() -(2^16) ;elseif (v125==3) then v127[3]=v34() -(2^16) ;v127[4]=v33();end v124=2;end if (v124==0) then v125=v31(v106,2,3);v126=v31(v106,4,6 + 0 );v124=1;end end end break;end end end for v107=1,v34() do v68[v107-1 ]=v39();end return v70;end if (v66==1) then v71=v34();v72={};for v109=1,v71 do local v110=0;local v111;local v112;while true do if (v110==1) then if (v111==1) then v112=v32()~=0 ;elseif (v111==2) then v112=v35();elseif (v111==3) then v112=v36();end v72[v109]=v112;break;end if (0==v110) then v111=v32();v112=nil;v110=1;end end end v70[1 + 2 ]=v32();v66=2;end end end local function v40(v73,v74,v75) local v76=v73[958 -(892 + 65) ];local v77=v73[2];local v78=v73[3];return function(...) local v79=v76;local v80=v77;local v81=v78;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -1 ;local v88={};local v89={};for v99=0,v87 do if (v99>=v81) then v85[v99-v81 ]=v86[v99 + 1 ];else v89[v99]=v86[v99 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do local v100=0;while true do if (v100==0) then v91=v79[v83];v92=v91[1];v100=1;end if (v100==1) then if (v92<=18) then if (v92<=8) then if (v92<=3) then if (v92<=1) then if (v92==0) then local v137=0;local v138;local v139;while true do if (v137==1) then v89[v138 + 1 ]=v139;v89[v138]=v139[v91[4]];break;end if (v137==0) then v138=v91[2];v139=v89[v91[7 -4 ]];v137=1;end end else v89[v91[2]]();end elseif (v92==2) then local v140;local v141,v142;local v143;v89[v91[2]]=v91[5 -2 ];v83=v83 + 1 ;v91=v79[v83];v143=v91[2];v89[v143]=v89[v143](v21(v89,v143 + 1 ,v91[3]));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v143=v91[2];v141,v142=v82(v89[v143](v21(v89,v143 + (1 -0) ,v91[3])));v84=(v142 + v143) -1 ;v140=0;for v201=v143,v84 do v140=v140 + 1 ;v89[v201]=v141[v140];end v83=v83 + 1 ;v91=v79[v83];v143=v91[2];v89[v143]=v89[v143](v21(v89,v143 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end else local v150=0;local v151;local v152;local v153;local v154;while true do if (v150==2) then for v295=v151,v84 do local v296=0;while true do if (0==v296) then v154=v154 + 1 ;v89[v295]=v152[v154];break;end end end break;end if (v150==1) then v84=(v153 + v151) -1 ;v154=0;v150=2;end if (v150==0) then v151=v91[2];v152,v153=v82(v89[v151](v21(v89,v151 + 1 ,v91[3])));v150=1;end end end elseif (v92<=5) then if (v92>(354 -(87 + 263))) then if v89[v91[182 -(67 + 113) ]] then v83=v83 + 1 ;else v83=v91[3];end else local v155;local v156;local v157;v89[v91[2]]={};v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v157=v91[2];v156=v89[v157];v155=v89[v157 + 2 ];if (v155>(0 + 0)) then if (v156>v89[v157 + (2 -1) ]) then v83=v91[3];else v89[v157 + 3 ]=v156;end elseif (v156<v89[v157 + 1 ]) then v83=v91[3];else v89[v157 + 3 ]=v156;end end elseif (v92<=6) then v89[v91[2]]=v91[3];elseif (v92>7) then local v210=0;local v211;local v212;local v213;local v214;local v215;while true do if (v210==3) then v91=v79[v83];v89[v91[2]]={};v83=v83 + (2 -1) ;v91=v79[v83];v210=4;end if (v210==4) then v89[v91[2]]=v74[v91[3]];v83=v83 + (1 -0) ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v210=5;end if (6==v210) then v91=v79[v83];v215=v91[2];v213,v214=v82(v89[v215](v21(v89,v215 + 1 ,v91[3])));v84=(v214 + v215) -1 ;v210=7;end if (v210==8) then v215=v91[2];v211=v89[v215];for v358=v215 + 1 ,v84 do v15(v211,v89[v358]);end break;end if (v210==2) then v83=v83 + (3 -2) ;v91=v79[v83];v89[v91[2]]=v74[v91[955 -(802 + 150) ]];v83=v83 + 1 ;v210=3;end if (v210==0) then v211=nil;v212=nil;v213,v214=nil;v215=nil;v210=1;end if (1==v210) then v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v74[v91[3 + 0 ]];v210=2;end if (v210==7) then v212=0;for v359=v215,v84 do local v360=0;while true do if (v360==0) then v212=v212 + 1 ;v89[v359]=v213[v212];break;end end end v83=v83 + 1 ;v91=v79[v83];v210=8;end if (5==v210) then v83=v83 + 1 ;v91=v79[v83];for v361=v91[2],v91[3] do v89[v361]=nil;end v83=v83 + 1 + 0 ;v210=6;end end else local v216=0;local v217;local v218;local v219;local v220;local v221;while true do if (v216==6) then v221=v91[2];v89[v221]=v89[v221](v21(v89,v221 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[3 -1 ]]();v83=v83 + 1 ;v216=7;end if (v216==0) then v217=nil;v218,v219=nil;v220=nil;v221=nil;v89[v91[2]]=v75[v91[3]];v83=v83 + 1 ;v216=1;end if (v216==7) then v91=v79[v83];v83=v91[3];break;end if (v216==5) then v218,v219=v82(v89[v221](v21(v89,v221 + 1 ,v84)));v84=(v219 + v221) -1 ;v217=0;for v363=v221,v84 do v217=v217 + 1 ;v89[v363]=v218[v217];end v83=v83 + (2 -1) ;v91=v79[v83];v216=6;end if (v216==3) then v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v221=v91[2];v218,v219=v82(v89[v221](v21(v89,v221 + 1 ,v91[3])));v216=4;end if (v216==2) then v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + (2 -1) ;v216=3;end if (v216==1) then v91=v79[v83];v221=v91[999 -(915 + 82) ];v220=v89[v91[3]];v89[v221 + 1 ]=v220;v89[v221]=v220[v91[4]];v83=v83 + 1 ;v216=2;end if (v216==4) then v84=(v219 + v221) -(1 + 0) ;v217=0 -0 ;for v366=v221,v84 do v217=v217 + (1188 -(1069 + 118)) ;v89[v366]=v218[v217];end v83=v83 + 1 ;v91=v79[v83];v221=v91[2];v216=5;end end end elseif (v92<=13) then if (v92<=10) then if (v92==9) then v89[v91[2]]=v89[v91[3]][v91[4]];else v89[v91[2]]={};end elseif (v92<=(2 + 9)) then do return v89[v91[2]]();end elseif (v92>12) then local v222=v91[2];v89[v222]=v89[v222](v21(v89,v222 + 1 ,v91[4 -1 ]));else local v224=0;local v225;local v226;local v227;while true do if (v224==1) then v227={};v226=v18({},{[v7("\254\228\233\180\197\222\248","\218\161\187\128")]=function(v369,v370) local v371=0;local v372;while true do if (v371==0) then v372=v227[v370];return v372[1][v372[2 + 0 ]];end end end,[v7("\67\118\213\74\18\120\114\77\222\87","\17\28\41\187\47\101")]=function(v373,v374,v375) local v376=0;local v377;while true do if (v376==0) then v377=v227[v374];v377[1][v377[2]]=v375;break;end end end});v224=2;end if (v224==2) then for v378=1,v91[4] do v83=v83 + 1 ;local v379=v79[v83];if (v379[792 -(368 + 423) ]==30) then v227[v378-1 ]={v89,v379[9 -6 ]};else v227[v378-1 ]={v74,v379[3]};end v88[ #v88 + 1 ]=v227;end v89[v91[20 -(10 + 8) ]]=v40(v225,v226,v75);break;end if (v224==0) then v225=v80[v91[3]];v226=nil;v224=1;end end end elseif (v92<=15) then if (v92>14) then local v169=0;local v170;while true do if (v169==0) then v170=v91[2];v89[v170](v21(v89,v170 + 1 ,v84));break;end end else local v171=0;local v172;while true do if (v171==0) then v172=v91[7 -5 ];do return v89[v172](v21(v89,v172 + 1 ,v91[3]));end break;end end end elseif (v92<=16) then local v173=0;while true do if (v173==2) then v89[v91[2]]=v75[v91[3]];v83=v83 + 1 ;v91=v79[v83];v173=3;end if (v173==7) then if  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end break;end if (5==v173) then v89[v91[2]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v173=6;end if (1==v173) then v89[v91[2]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v173=2;end if (0==v173) then v89[v91[2]]=v75[v91[445 -(416 + 26) ]];v83=v83 + 1 ;v91=v79[v83];v173=1;end if (v173==6) then v89[v91[2]]=v75[v91[3]];v83=v83 + 1 ;v91=v79[v83];v173=7;end if (v173==4) then v89[v91[2]]=v75[v91[3]];v83=v83 + 1 ;v91=v79[v83];v173=5;end if (v173==3) then v89[v91[6 -4 ]]=v89[v91[3]][v91[4]];v83=v83 + 1 ;v91=v79[v83];v173=4;end end elseif (v92==17) then local v228;local v229,v230;local v231;v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[1 + 1 ]]=v74[v91[3]];v83=v83 + (1 -0) ;v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v74[v91[441 -(145 + 293) ]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]] + v91[4] ;v83=v83 + (431 -(44 + 386)) ;v91=v79[v83];v231=v91[2];v229,v230=v82(v89[v231](v21(v89,v231 + 1 ,v91[3])));v84=(v230 + v231) -1 ;v228=0;for v281=v231,v84 do local v282=0;while true do if (0==v282) then v228=v228 + 1 ;v89[v281]=v229[v228];break;end end end v83=v83 + 1 ;v91=v79[v83];v231=v91[2];v89[v231]=v89[v231](v21(v89,v231 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[1488 -(998 + 488) ]]=v74[v91[1 + 2 ]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 + 0 ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[3] + v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]= #v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[775 -(201 + 571) ]]%v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[1140 -(116 + 1022) ]]=v91[3] + v89[v91[4]] ;v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]] + v91[4] ;v83=v83 + 1 ;v91=v79[v83];v231=v91[2];v229,v230=v82(v89[v231](v21(v89,v231 + 1 ,v91[12 -9 ])));v84=(v230 + v231) -1 ;v228=0;for v283=v231,v84 do v228=v228 + 1 + 0 ;v89[v283]=v229[v228];end v83=v83 + 1 ;v91=v79[v83];v231=v91[2];v229,v230=v82(v89[v231](v21(v89,v231 + 1 ,v84)));v84=(v230 + v231) -1 ;v228=0;for v286=v231,v84 do v228=v228 + 1 ;v89[v286]=v229[v228];end v83=v83 + 1 ;v91=v79[v83];v231=v91[2];v89[v231]=v89[v231](v21(v89,v231 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v89[v91[3]]%v91[4] ;v83=v83 + 1 ;v91=v79[v83];v231=v91[2];v229,v230=v82(v89[v231](v89[v231 + 1 ]));v84=(v230 + v231) -1 ;v228=0;for v289=v231,v84 do v228=v228 + 1 ;v89[v289]=v229[v228];end v83=v83 + 1 ;v91=v79[v83];v231=v91[2];v89[v231](v21(v89,v231 + (3 -2) ,v84));else for v292=v91[2],v91[3] do v89[v292]=nil;end end elseif (v92<=27) then if (v92<=22) then if (v92<=20) then if (v92==19) then v89[v91[2]]=v75[v91[3]];else v89[v91[2]]=v91[3] + v89[v91[4]] ;end elseif (v92>21) then local v177=v91[2];local v178=v89[v177];local v179=v89[v177 + 2 ];if (v179>0) then if (v178>v89[v177 + 1 ]) then v83=v91[10 -7 ];else v89[v177 + 3 ]=v178;end elseif (v178<v89[v177 + 1 ]) then v83=v91[3];else v89[v177 + 3 ]=v178;end else local v180=0;local v181;local v182;local v183;local v184;while true do if (v180==0) then v181=v91[2];v182,v183=v82(v89[v181](v21(v89,v181 + (860 -(814 + 45)) ,v84)));v180=1;end if (v180==2) then for v305=v181,v84 do local v306=0;while true do if (v306==0) then v184=v184 + 1 ;v89[v305]=v182[v184];break;end end end break;end if (v180==1) then v84=(v183 + v181) -1 ;v184=0;v180=2;end end end elseif (v92<=24) then if (v92>23) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[7 -4 ];end else local v185=v91[2];local v186,v187=v82(v89[v185](v89[v185 + 1 ]));v84=(v187 + v185) -1 ;local v188=0;for v204=v185,v84 do v188=v188 + 1 ;v89[v204]=v186[v188];end end elseif (v92<=25) then v89[v91[1 + 1 ]]= #v89[v91[2 + 1 ]];elseif (v92==26) then local v244=v91[2];do return v21(v89,v244,v84);end else v89[v91[887 -(261 + 624) ]]=v89[v91[3]]%v89[v91[4]] ;end elseif (v92<=32) then if (v92<=(50 -21)) then if (v92>28) then v89[v91[2]]=v89[v91[1083 -(1020 + 60) ]]%v91[4] ;else do return;end end elseif (v92<=30) then v89[v91[2]]=v89[v91[3]];elseif (v92>31) then v89[v91[2]]=v74[v91[3]];else local v248=v91[2];v89[v248]=v89[v248](v21(v89,v248 + 1 ,v84));end elseif (v92<=(1457 -(630 + 793))) then if (v92==33) then local v193=v91[2];local v194=v89[v193 + 2 ];local v195=v89[v193] + v194 ;v89[v193]=v195;if (v194>0) then if (v195<=v89[v193 + 1 ]) then local v307=0;while true do if (0==v307) then v83=v91[3];v89[v193 + 3 ]=v195;break;end end end elseif (v195>=v89[v193 + 1 ]) then local v308=0;while true do if (0==v308) then v83=v91[3];v89[v193 + 3 ]=v195;break;end end end else local v197=v91[2];local v198=v89[v197];for v207=v197 + 1 ,v84 do v15(v198,v89[v207]);end end elseif (v92<=35) then v89[v91[2]]=v89[v91[3]] + v91[4] ;elseif (v92==36) then if  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else v83=v91[3];end v83=v83 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012103Q00013Q00206Q000200122Q000100013Q00202Q00010001000300122Q000200013Q00202Q00020002000400122Q000300053Q00062Q0003000A000100010004253Q000A0001001213000300063Q002009000400030007001213000500083Q002009000500050009001213000600083Q00200900060006000A00060C00073Q000100062Q001E3Q00064Q001E8Q001E3Q00044Q001E3Q00014Q001E3Q00024Q001E3Q00053Q001213000800013Q00200900080008000B0012130009000C3Q001213000A000D3Q00060C000B0001000100052Q001E3Q00074Q001E3Q00094Q001E3Q00084Q001E3Q000A4Q001E3Q000B4Q001E000C000B4Q000B000C00014Q001A000C6Q001C3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q000400025Q00122Q000300016Q00045Q00122Q000500013Q00042Q0003002100012Q002000076Q0011000800026Q000900016Q000A00026Q000B00036Q000C00046Q000D8Q000E00063Q00202Q000F000600014Q000C000F6Q000B3Q00024Q000C00036Q000D00046Q000E00016Q000F00016Q000F0006000F00102Q000F0001000F4Q001000016Q00100006001000102Q00100001001000202Q0010001000014Q000D00106Q000C8Q000A3Q000200202Q000A000A00024Q0009000A6Q00073Q00010004210003000500012Q0020000300054Q001E000400024Q000E000300044Q001A00036Q001C3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00060C5Q000100012Q00208Q0008000100016Q000200026Q000300026Q00048Q000500036Q00068Q000700076Q000500076Q00043Q0001002009000400040001001202000500026Q00030005000200122Q000400036Q000200046Q00013Q000200262Q00010018000100040004253Q001800012Q001E00016Q000A00026Q000E000100024Q001A00015Q0004253Q001B00012Q0020000100044Q000B000100014Q001A00016Q001C3Q00013Q00013Q00063Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403503Q00D9D7CF35F5E18851D5D1D233E3F5C011DEC4D720A8B8C8139ED6D87AE3A3D711C3D78621E9ACC912DEC2DF63EFBF9A4F8092E40DEBBCD40CD6F1DE74D5E8F70CFE918A32F6B2E537D294E201B1A9902E03083Q007EB1A3BB4586DBA7026Q00F03F010F3Q0006053Q000D00013Q0004253Q000D0001001213000100013Q001207000200023Q00202Q0002000200034Q00045Q00122Q000500043Q00122Q000600056Q000400066Q00028Q00013Q00024Q00010001000100044Q000E000100200900013Q00062Q001C3Q00017Q00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--