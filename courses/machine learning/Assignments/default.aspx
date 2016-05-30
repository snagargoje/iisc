<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">



<html>
  <!-- v:10.0.7.13 -->
	<head id="ctl00_ctl00_HeadTag"><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="assetType" content="Web Page" /><title>
	Large Margin Rank Boundaries for Ordinal Regression - Microsoft Research
</title><link rel="alternate" type="application/rss+xml" title="Microsoft Research - Downloads" href="http://research.microsoft.com/rss/downloads.xml" /><link rel="alternate" type="application/rss+xml" title="Microsoft Research - Kinect for Windows SDK" href="http://research.microsoft.com/en-us/um/redmond/projects/kinectsdk/kdkrss.xml" /><link rel="alternate" type="application/rss+xml" title="Microsoft Research - News" href="http://research.microsoft.com/rss/news.xml" /><link rel="alternate" type="application/rss+xml" title="Microsoft Research - Publications" href="http://research.microsoft.com/rss/publications.xml" /><link rel="alternate" type="application/rss+xml" title="Microsoft Research - Research Lectures" href="http://research.microsoft.com/rss/researchLectures.xml" /><link rel="alternate" type="application/rss+xml" title="Microsoft Research - Visiting Speaker Lectures" href="http://research.microsoft.com/rss/visitingSpeakers.xml" />
    <style type="text/css">
      
* {margin:0;}
body {background: #acc url(/a/i/c/bg.gif) repeat-x;font:100% verdana;margin:16px 0px 0px 0px;}

ul.horiz {padding-left:0px;margin:0px;}
ul.horiz li {float:left;list-style-type:none;border-left:1px solid #fff;border-right:1px solid #bbb;}
ul.horiz li.first {border-left:transparent;}
ul.horiz li.last {border-right:transparent;}

.center {margin:0 auto 0 auto;}
/* .FR .FL .FN  being kept for legacy purposes of existing pages already using this class */
.fr, .FR {float:right;}  
.fl, .FL {float:left;}   
.fn, .FN {float:none;}   
.w {width:994px;padding:0px 12px 0px 12px;}
.sw {width:1002px;}
.cl {clear:left;color:#fff;}
.cr {clear:right;height:1px;color:#fff;}
.bb {border-bottom:1px solid #cff;}
.bt {border-top:1px solid #cff;}
.b {font-weight:bold;}
.dn {display:none;}
.cB {color:#317ab1;}
.cG {color:#8ab438;}
.crP {cursor:pointer;}
.pa {position:absolute;}
.pr {position:relative;}

.tracking {display:none;}

.zone {overflow:hidden;}

.project1 .zone {overflow:hidden;}
.project1 #zone1 {width:280px;float:right;padding:50px 50px 0px 0px;}
.project1 #zone2 {width:560px;padding:50px 50px 0px 50px;}
.project1 #zone3 {width:560px;float:left;padding:0px 50px 10px 50px;}

.versal .date {font-size:70%;color:#666;}
.versal .title {margin-top: 6px; margin-bottom: 14px !important;}

.versal #zone1.conM {width:560px;float:left;margin:25px 36px 0px 0px;padding:0px;}
.versal #zone1 div.embeddedVideo {float:left;margin:6px 6px 0px 0px;}
.versal #zone1 div.imageFloatLeft {float:left;margin:6px 18px 10px 0px;}
.versal #zone1 div.imageFloatRight {float:right;margin:6px 0px 10px 10px;}
.versal #zone1 div.infographic {width:220px;float:left;margin:6px 6px 0px 0px;border:1px solid #999; padding:0px 0px 0px 0px;font-size:85%;}
.versal #zone1 div.infographic h5 {font:normal 110% Verdana;background-color:#dce6fa;color:#018;margin-bottom:6px;padding:3px 0px 3px 3px;}
.versal #zone1 div.infographicInner {padding:0px 6px 0px 6px;font-size:100%;}
.versal #zone1 img.inlineImageleft {margin-right:10px;}
.versal #zone1 img.inlineImageright {margin-left:10px;}

.versal #zone2.conM  {width:250px;float:left;margin-top:25px;padding:0px 0px 25px 0px;background:url(/apps/dp/i/shade_dn.png) bottom repeat-x;}
.versal #zone2 div {padding:6px 0px 0px 10px;border-left:1px solid #999;border-bottom:1px solid #999;}
.versal #zone2 div:first-child {padding-top:0px;}

.versal #versalBtm {margin:0px 0px 27px 0px;position:relative;}
.versal #versalBtm td p {white-space:nowrap;}
.versal #versalBtm img {vertical-align:middle;margin-left:27px;}
.versal #versalBtm img#iBtt {margin-left:0px;}
.versal #versalBtm td:first-child img {margin-left:0px;}
.versal #versalBtm a {color:#323223;}
.versal #versalBtm a:hover {text-decoration:none;color:#323223;}

.prjm {padding-bottom:25px;}
.prjm img {float:left;margin-right:20px;}
.prjm .title {padding-bottom:5px;}

.people {padding:0px 0px 0px 14px;}
.people .manager {margin-bottom:10px;}
.people .GroupContact {font-weight:bold;}
.people .person {width:75px;float:left;margin:0px 30px 0px 0px;padding:0px 0px 20px 0px;text-align:center;}
.people .person img {border:1px solid #999;}
.people .person .lastname {font-weight:bold;}
.people .person .BlankPictureDiv {width:75px;height:75px;background:#eee;}
.people .b {clear:both;}


/* Build your own support */
.compositeModule_2Zone, .compositeModule_3Zone, .compositeModule_4Zone, .compositeModule_1_2Zone, .compositeModule_2_1Zone, .compositeModule_1_3Zone, .compositeModule_3_1Zone, .compositeModule_1Zone, .compositeModule_1_2_1Zone {height: 100%;}
.compositeModule_2Zone > div.zone {	width: 49%; float: left; min-height: 100px; }
.compositeModule_3Zone > div.zone { width: 32%; float: left; min-height: 100px; }
.compositeModule_4Zone > div.zone { width: 24%; float: left; min-height: 100px; }
.compositeModule_4Zone > div.zone { width: 24%; float: left; min-height: 100px; }
.compositeModule_1_2Zone > div.zone:first-child { width: 32%; float: left; min-height: 100px; }
.compositeModule_1_2Zone > div.zone + div.zone { width: 66%; float: left; min-height: 100px; }
.compositeModule_2_1Zone > div.zone:first-child { width: 66%; float: left; min-height: 100px; }
.compositeModule_2_1Zone > div.zone + div.zone { width: 33%; float: left; min-height: 100px; }
.compositeModule_1_3Zone > div.zone:first-child { width: 25%; float: left; min-height: 100px; }
.compositeModule_1_3Zone > div.zone + div.zone { width: 70%; float: left; min-height: 100px; }
.compositeModule_3_1Zone > div.zone:first-child { width: 70%; float: left; min-height: 100px; }
.compositeModule_3_1Zone > div.zone + div.zone { width: 25%; float: left; min-height: 100px; }
.compositeModule_1Zone > div.zone { width: 100%; min-height: 100px; }
.compositeModule_1_2_1Zone > div.zone:first-child { width: 16%; float: left; min-height: 100px; }
.compositeModule_1_2_1Zone > div.zone + div.zone + div.zone  { width: 16%; float: left; min-height: 100px; }
.compositeModule_1_2_1Zone > div.zone + div.zone { width: 66%; float: left; min-height: 100px; }

/* Build your own support WITH NEW LAYOUT*/
.fw .compositeModule_2Zone > div.zone {	width: 49%; float: left;}
.fw .compositeModule_3Zone > div.zone { width: 33%; float: left;}
.fw .compositeModule_3Zone > div.zone + div.zone { width: 34%; float: left;}
.fw .compositeModule_3Zone > div.zone + div.zone + div.zone { width: 33%; float: left;}
.fw .compositeModule_4Zone > div.zone { width: 24%; float: left;}
.fw .compositeModule_4Zone > div.zone { width: 24%; float: left;}
.fw .compositeModule_1_2Zone > div.zone:first-child { width: 33%; float: left;}
.fw .compositeModule_1_2Zone > div.zone + div.zone { width: 67%; float: left;}
.fw .compositeModule_2_1Zone > div.zone:first-child { width: 67%; float: left;}
.fw .compositeModule_2_1Zone > div.zone + div.zone { width: 33%; float: left;}
.fw .compositeModule_1_3Zone > div.zone:first-child { width: 25%; float: left;}
.fw .compositeModule_1_3Zone > div.zone + div.zone { width: 74.9%; float: left;}
.fw .compositeModule_3_1Zone > div.zone:first-child { width: 70%; float: left;}
.fw .compositeModule_3_1Zone > div.zone + div.zone { width: 25%; float: left;}
.fw .compositeModule_1Zone > div.zone { width: 100%;}
.fw .compositeModule_1_2_1Zone > div.zone:first-child { width: 16%; float: left;}
.fw .compositeModule_1_2_1Zone > div.zone + div.zone + div.zone  { width: 16%; float: left;}
.fw .compositeModule_1_2_1Zone > div.zone + div.zone { width: 66%; float: left; min-height:}

#shadow {background:url(/a/i/c/s_mid.png);position:relative;z-index:5;}
#shadow #top {background:#f3fafb;height:26px;position:absolute;z-index:6;left:0px;}
                          
#border {border:1px solid #cff;border-top:1px solid #fff;margin:0px 11px 0px 11px;z-index:10;position:relative;background:#fff;}

#chTB {height:60px;}

#chTB #chLogo {position:absolute;top:0px;left:12px;}
#chTB #chLogo img {border:none;width:143px;height:41px;}

#chTB #chSearch {position:absolute;top:18px;left:258px;height:48px;width:316px;}
#chTB #chSearch div {position:absolute;top:24px;left:0px;height:18px;font:13px verdana;}
#chTB #chSearch input[type="text"] {position:absolute;left:0px;top:0px;height:18px;width:323px;font-family:Verdana;font-style:italic; font-size:13px;color:#bbb;border:1px solid #cff;border-left:1px solid #b6b6af;border-top:1px solid #b6b6af; padding-left:6px;padding-top:1px;}
#chTB #chSearch #cst {position:absolute;left:0px;top:0px;height:18px;width:295px;font-family:Verdana;font-style:italic; font-size:13px;color:#bbb;border:1px solid #cff;border-left:1px solid #b6b6af;border-top:1px solid #b6b6af; padding-left:6px;padding-top:1px;}
#chTB #chSearch #cst.sel {border:1px solid #cff;font-style:normal;color:#323223;}

#chTB #chSearch #goButton {left:302px;cursor:pointer;}


#chTB #chTer {position:absolute;top:3px;left:627px;width:360px;overflow:hidden;}
#chTB a {text-decoration:none;}
#chTB #chTer .item {text-align:center;padding-top:36px;width:20%;font-size:11px;color:#888;cursor:pointer;font-weight:normal;}
#chTB #chTer .item:hover {color:#0cc;/*font-size:13px;padding-top:30px;*/}
#chTB #chTer .item.t1 {background:url(/a/i/c/ter/n_downloads.gif) no-repeat top center;}
#chTB #chTer .item.t1:hover {background:url(/a/i/c/ter/h_downloads.gif) no-repeat top center;}
#chTB #chTer .item.t2 {background:url(/a/i/c/ter/n_papers.gif) no-repeat top center;}
#chTB #chTer .item.t2:hover {background:url(/a/i/c/ter/h_papers.gif) no-repeat top center;}
#chTB #chTer .item.t3 {background:url(/a/i/c/ter/n_people.gif) no-repeat top center;}
#chTB #chTer .item.t3:hover {background:url(/a/i/c/ter/h_people.gif) no-repeat top center;}
#chTB #chTer .item.t4 {background:url(/a/i/c/ter/n_projects.gif) no-repeat top center;}
#chTB #chTer .item.t4:hover {background:url(/a/i/c/ter/h_projects.gif) no-repeat top center;}
#chTB #chTer .item.t5 {background:url(/a/i/c/ter/n_video.gif) no-repeat top center;}
#chTB #chTer .item.t5:hover {background:url(/a/i/c/ter/h_video.gif) no-repeat top center;}

#chNav {position:relative;top:0px;left:0px;width:978px;height:61px;background:url(/a/i/c/grad.png);} 

#chNav #chP {position:absolute;top:7px;left:0px;width:649px;height:30px;z-index:2;}
#chNav #chP table {width:100%;}
#chNav #chP td {border-bottom:1px solid #fff;}
#chNav #chP td div {padding:9px 18px 3px 18px;font-size:14px;white-space:nowrap;}
/*#chNav #chP td div {padding-top:6px;padding-left:18px;padding-right:18px;;font-size:14px;white-space:nowrap;}*/
#chNav #chP a {text-decoration:none;color:#666;}
#chNav #chP a:hover {color:#0cc;}
#chNav #chP td.sel {background:url(/a/i/c/cover.png);border:1px solid #fff;border-bottom:none;border-right:1px solid #bbb;}
#chNav #chP td.sel div {padding-top:6px;padding-bottom:3px;/*font-size:16px;color:#323223;*/}
#chNav #chP td.sel a {font-size:15px;color:#323223;}

#chNav #chS {position:absolute;top:37px;left:0px;width:648px;height:24px;background:url(/a/i/c/cover.png);overflow:hidden;border-right:1px solid #bbb;z-index:1;}
#chNav #chS a {color:#666;text-decoration:none;}
#chNav #chS a:hover {color:#0cc;}
#chNav #chS li {font-size:12px;padding:0px 15px 0px 15px;margin-top:5px;}
#chNav #chS li a.sel {color:#323223;}
#chNav #chS li a.sel:hover {color:#323223;}

#chNav #chPM {position:absolute;top:7px;left:653px;width:324px;height:53px;background:url(/a/i/c/cover.png);border-top:1px solid #fff;border-left:1px solid #fff;}
#chNav #chPM img {border:none;}
#chNav #chPM {font-family:Verdana;font-size:12px;color:#323223; line-height:1.5;}
#chNav #chPM a {color:#16f; text-decoration:none;}
#chNav #chPM a:hover {text-decoration: underline;}
      
#crumbBar {color:#999;background:url(/a/i/c/s_bc.png) repeat-x;font-size:70%;padding:6px 6px 0px 6px;position:relative; border-top:solid 1px #cff;}
#crumbBar #tools {position:absolute;right:0px; }
#crumbBar #tools img {margin:0px 2px 0px 2px;vertical-align:middle; cursor:pointer}
#crumbBar #tools li {padding:0px 9px 0px 8px;border-left:none;border-right:1px solid #666;}
#crumbBar #tools li.last {border-right:0px transparent; padding:0px 3px 0px 5px;}
#crumbBar a {text-decoration:none;color:#16f;cursor:pointer;}
#crumbBar a:hover {color:#16f; text-decoration:underline;}
#bcHolder {display: inline-block; width: 810px; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;}

.fw #contentArea {padding:10px 6px 6px 6px;color:#323223;font-size: 80%}
.fw #contentArea .conM { padding-left:12px; padding-right:12px; padding-top:12px; /*margin-top:0px;*/word-wrap:break-word;}
.fw #contentArea .title+.compositeModule_2_1Zone  > .zone > .conM:first-child {padding-top: 0px !important;}
.fw #contentArea .conM ul {list-style-type:square;}
.fw #contentArea .conM ol {margin:0px 0px 18px 0px; padding:0px 0px 0px 28px;}
.fw #contentArea .conM ol ol, #contentArea .conM ul ol { list-style-type:upper-alpha;font-size:100%;}
.fw #contentArea .conM ol ol {margin-bottom: 0px;}
.fw #contentArea .conM ol ol ol {list-style-type:lower-roman;font-size:100%;}
.fw #contentArea .conM ol ol ol ol {list-style-type:lower-alpha;font-size:100%;}
.fw #contentArea .conM ul ul ul {padding:0px; margin-top:0px; padding-bottom:6px;}
.fw #contentArea .conM ul ul ul, #contentArea .conM ul ul ul ul, #contentArea .conM ul ul {font-size:100%;}
.fw #contentArea .conM blockquote {margin-left:15px;}
.fw #contentArea .conM ul ol {margin-top:0px; margin-bottom: 0px;}
.fw #contentArea .conM ul ul {padding:0px 18px; margin-top:0px; margin-bottom:6px;}
.fw #contentArea .conM ol ul {padding:0px 18px; margin-top:0px; margin-bottom:6px;}
.fw #contentArea .conM li p, #contentArea .conM table {font-size:100%;}
.fw #contentArea .conM li {padding:0px; margin:6px 0px; line-height:1.5;}
#contentArea {padding:10px 19px 0px 56px;color:#323223;font-size: 80%}
#contentArea .conM {padding:0px 18px 0px 18px; word-wrap:break-word;}
#contentArea .conM ul {list-style-type:square; margin:0px 0px 18px 0px;padding:0px 0px 0px 18px;}
#contentArea .conM ol {margin:0px 0px 18px 0px; padding:0px 0px 0px 28px;}
#contentArea .conM ol ol, #contentArea .conM ul ol { list-style-type:upper-alpha;font-size:100%;}
#contentArea .conM ol ol {margin-bottom: 0px;}
#contentArea .conM ol ol ol {list-style-type:lower-roman;font-size:100%;}
#contentArea .conM ol ol ol ol {list-style-type:lower-alpha;font-size:100%;}
#contentArea .conM ul ul ul, #contentArea .conM ul ul ul ul, #contentArea .conM ul ul {font-size:100%;}
#contentArea .conM blockquote {margin-left:15px;}
#contentArea .conM ul ol {margin-top:0px; margin-bottom: 0px;}
#contentArea .conM ul ul {padding:0px 18px; margin-top:0px; margin-bottom:6px;}
#contentArea .conM ol ul {padding:0px 18px; margin-top:0px; margin-bottom:6px;}
#contentArea .conM li p, #contentArea .conM table {font-size:100%;}
#contentArea .conM li {padding:0px; margin:0px 0px 6px 0px; line-height:1.5;}


#contentArea p {padding:0px; margin:0px 0px 18px 0px; line-height:1.5;}
#contentArea .conM p+ol {margin-top: -9px;}
#contentArea .conM p+ul {margin-top: -9px;}
#contentArea h1, #contentArea .H1 {font:normal 175% georgia;color:#000;padding-bottom:15px;}
#contentArea h1.rule, #contentArea .H1.rule {padding-bottom:4px;margin-bottom:3px;border-bottom:1px solid #998;}
#contentArea h2, #contentArea .H2 {font:normal 150% georgia;color:#000;padding: 0px 0px 12px 0px;}
#contentArea h2.rule, #contentArea .H2.rule {padding-bottom:4px;margin-bottom:3px;border-bottom:1px solid #998;}
#contentArea h3, #contentArea .H3 {font:normal 121% georgia;color:#000;padding: 0px 0px 6px 0px;}
#contentArea h4, #contentArea .H4 {font:italic 109% georgia;color:#000;padding: 0px 0px 6px 0px;}
#contentArea h5, #contentArea .H5 {font:normal 120% Verdana ;color: #018; padding: 0px 0px 6px 0px; line-height: 1.25;}
#contentArea h6, #contentArea .H6 {font: normal 100% 'Courier New'; color:#000; margin-bottom: 18px; }
#contentArea td {line-height:1.5;}

#contentArea a {color:#16F;text-decoration:none;}
#contentArea a:hover {color:#16F;text-decoration:underline;}
#contentArea a:visited {color:#808;}
#contentArea a:hover {text-decoration:underline;}

#contentArea .title {font:normal 225% georgia;color:#776;margin-top: 6px !important; margin-bottom:18px !important;}
#contentArea .subTitle {color:#998;margin-bottom:18px;}
#contentArea .dirTagLink {font:normal 87% Verdana:color:#16f;}
#contentArea .byLine {font:normal 87% Verdana;color:#665; line-height: 1.5;}
#contentArea .copyright {font:normal 87% Verdana;color:#998;line-height:1.5;}
#contentArea .relatedLinksHead {font:normal 95% Verdana;color:#026; text-transform:uppercase; letter-spacing:1px;}
#contentArea .smallText {font:normal 88% verdana;color:#323223; line-height:1.5}
#contentArea .largeText {font:normal 125% verdana;color:#323223; line-height:1.5}

.fw #contentArea .deM {margin: 6px 6px 12px 12px;}
#contentArea .deM {margin:0px 18px 0px 18px;}
#contentArea #dedM img {margin:6px 15px 18px 0px;}
#contentArea #dedM img+p {margin-bottom:0px;}
#contentArea #dedM {word-wrap:break-word;}
#contentArea #dpeM {margin:6px 18px 12px 18px; word-wrap:break-word;}
#contentArea #dpeM img {margin-right:12px;width:72px;height:72px;}

/*#contentArea #dedlM > p:first-child {margin-top: -10px;}*/
#contentArea #dedlM table {width:100%;}
#contentArea #dedlM table.outer td {vertical-align:top;padding:24px;}
#contentArea #dedlM table.outer td.left {width:297px;border:1px solid #999;border-right:none;background:url(/apps/dp/i/shade_dn.png) repeat-x;}
#contentArea #dedlM table.outer td.right {width:164px;border:1px solid #999;background:url(/apps/dp/i/shade_dn.png) repeat-x; font-size: 85%;}
#contentArea #dedlM table.outer td.right p {margin-top: 21px;}
#contentArea #dedlM table.inner {width:100%;margin-top:18px;}
#contentArea #dedlM table.inner td {padding:9px 0px 9px 0px;font:normal 85% verdana;}
#contentArea #dedlM table.inner td.left {width:40%;border:none;background:none;border-top:1px solid #ccc;font-weight:bold;}
#contentArea #dedlM table.inner td.right {width:60%;border:none;text-align:right;background:none;border-top:1px solid #ccc;}
#contentArea #dedlM table.inner tr:first-child td.left {border:none;}
#contentArea #dedlM table.inner tr:first-child td.right {border:none;}
#contentArea #dedlM table.inner form {margin:0px;}
#contentArea #dedlM button img {vertical-align:middle;}
#contentArea #dedlM button {color:#16f; font-size:16px;font-family:verdana;border:none;background:url(/a/i/n_btn_dl.gif) no-repeat; width:163px; height:37px;cursor:pointer;margin-top:4px; margin-left: -3px; margin-right: -3px;}
#contentArea #dedlM button:hover {background:url(/a/i/h_btn_dl.gif) no-repeat;}
#contentArea #dedlM div.btm {height:25px;background:url(/apps/dp/i/shade_dn.png) repeat-x;}


#contentArea .peM  .item, #contentArea .peMi .item {font-size:100%;}
#contentArea .peMi .item {float:left;width:134px;height:134px;margin:0px 12px 12px 0px;}
#contentArea .peMi img {width:72px;height:72px;}
#contentArea .peMi .item .byLine {line-height: 1.25;}
#contentArea .peMi .item a, #contentArea .peMi .item span {line-height: 1;}
#contentArea .peMi .itemShort {float:left;width:134px;height:110px;margin:0px 12px 12px 0px;}

#contentArea .rssM td img {margin:0px 10px 0px 0px;}
#contentArea .rssM td {padding-bottom:18px;}
#contentArea .rssM td ul {line-height:1;}
#contentArea .rssM .date {font:normal 87% Verdana;color:#665; margin-top: 4px;}
#contentArea .rssM p+.date {margin-top: -14px;}
#contentArea .rssM .publisher {color: #7a2;}

#contentArea .conM table {border-collapse:collapse;}

.lNavVertical a, .lNavHorizontal a,.lNavVertical a:hover, .lNavHorizontal a:hover,.lNavVertical a:visited, .lNavHorizontal a:visited {color:#16f!important;text-decoration:none!important;}
.lNavVerticalTabs a, .lNavHorizontalTabs a,.lNavVerticalTabs a:hover, .lNavHorizontalTabs a:hover,.lNavVerticalTabs a:visited, .lNavHorizontalTabs a:visited {color:#16f!important;text-decoration:none!important;}
.lNavVertical ul, .lNavVerticalTabs ul, .lNavHorizontal ul, .lNavHorizontalTabs ul {font:verdana;list-style:none;margin:6px 0px 18px 0px;padding:0px 0px 0px 18px;}
.lNavVertical li {padding:6px 0px 7px 0px;border-bottom:1px solid #ccc;}
.lNavVerticalTabs li {padding:6px 0px 7px 12px;border-bottom:1px solid #ccc;border-left:1px solid #ccc; border-right:1px solid #ccc;background:url(/apps/dp/i/shade_dn.png) repeat-x;}
.lNavVertical li:first-child, .lNavVerticalTabs li:first-child {border-top:1px solid #ccc;}

.lNavHorizontal li {padding:2px 12px 3px 12px;float:left;border-left:1px solid #ccc;}
.lNavHorizontal li:first-child {border-left:transparent; padding-left:0px;}
.lNavHorizontalTabs li {padding:6px 12px 6px 12px;float:left;border-right:1px solid #ccc;border-top:1px solid #ccc;border-bottom:1px solid #ccc;background:url(/apps/dp/i/shade_dn.png) repeat-x;}
.lNavHorizontalTabs li.sel {background:none;border-bottom:none;}
.lNavHorizontalTabs li:first-child {border-left:1px solid #ccc;}

.pubD #contentArea td {font:normal 100% Verdana;color:#323223;}
.pubD #contentArea td.heading {font:bold 100% Verdana;color:#323223;}
.pubD .title {margin-top: 6px; margin-bottom: 14px !important;}



#bGrad {background:url(/a/i/c/grad3.gif);height:10px;}

#footer {background:url(/a/i/c/s_btm.png) no-repeat;height:25px;padding-top:5px;font-size:60%;}
#footer a {color:#323223;text-decoration:none;}
#footer a:hover {color:#cff;}
#footer span {margin-right:68px;}
#footer img {margin-right:10px;}
#footer ul {margin-left:15px; margin-top:8px;}
#footer li {padding:0em 1em 0em 1em;border-left:1px solid #fff;border-right:1px solid #8e9b6b;}
#footer .first {padding-left:0em;}
#footer li.first {border-left:0px transparent;}
#footer li.last {border-right:0px transparent;}

#cShare {top:170px;left:850px;width:150px;}

/* Pop box */
.pop {border:1px solid #000;background:#fff;position:absolute;z-index:10;}
.pop .h {margin:0px;font-size:80%;color:#fff;padding:3px;background:#999;border-bottom:1px solid #000;}
.pop ul li {margin:3px 5px;list-style-type:circle;font-size:70%;}
.pop a {color:#323223;}
.pop a:hover {color:#0cc;}


/* Custom Image Management */

.JustifyLeft{text-align:left;}
.JustifyCenter{text-align:center;}
.JustifyRight{text-align:right;}
.JustifyFull{text-align:justify;}


#contentArea .contentModule .BorderedImageWrapper, .conM .BorderedImageWrapper
{ 
    border: 1px solid #999999 !important; 
}


#contentArea span.ImageBlock img, font.ImageBlock img, span.ImageBlock, font.ImageBlock
{
    border-style:none;
}


#contentArea font.ImageBlock, span.ImageBlock
{
    /* for future expansion */    
    font-style:normal;
    font-family:Verdana;    
    color:#666;
    font-weight:normal;
    white-space: pre-wrap;       /* css-3 */
    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
    white-space: -pre-wrap;      /* Opera 4-6 */
    white-space: -o-pre-wrap;    /* Opera 7 */
    word-wrap: break-word;      /* Internet Explorer 5.5+ */
    font-size:80%; 
    zoom:1;    
    margin-bottom: 12px;
}


#contentArea H1 .ImageBlock, #contentArea .H1 .ImageBlock
{
    font-size:46%!important;              /* (100% / 175%) x 80% font-size = 45.71429% */
}

#contentArea H2 .ImageBlock, #contentArea .H2 .ImageBlock
{
    font-size:53.333%!important;              /* (100% / 150%) x 80% font-size = 53.333% */
}

#contentArea H3 .ImageBlock, #contentArea .H3 .ImageBlock
{
    font-size:66%!important;              /* (100% / 121%) x 80% font-size = 66.1157% */    
}

#contentArea H4 .ImageBlock, #contentArea .H4 .ImageBlock
{
    font-size:73%!important;              /* (100% / 109%) x 80% font-size = 73.3945% */
}

#contentArea H5 .ImageBlock, #contentArea .H5 .ImageBlock 	          
{
    font-size:84.2%!important;			  /* (95% / 125%) x 80% font-size = 84.2% */
}

#contentArea H6 .ImageBlock, #contentArea .H6 .ImageBlock
{
    font-size:100%!important;             /* (100% / 80%) x 80% font-size = 100% */
}

/*  Styles for TableWizard */
#contentArea td p
{
    MARGIN: 0px 0px 0px 0px;    
}

/* Style PubsModule Abstract */
#contentArea .pubsM > ul > li > .smallText {margin-top:4px;}

/* Style VideoModule Abstract */
#contentArea .videoM .tile, #contentArea .videoM .tileExtra {float:left;margin:0px 42px 18px 0px;width:200px;height:150px; overflow:hidden;}
#contentArea .videoM .tileExtra {height:185px;}
#contentArea .videoM .tile div:first-child, #contentArea .videoM .tileExtra div:first-child {background-repeat:no-repeat;}
#contentArea .videoM .tile > img, #contentArea .videoM .tileExtra > img {width:200px;height:150px; }
#contentArea .videoM .ImageBlock {width:200px;height:150px;background-repeat:no-repeat; margin: 5px 15px 15px 0px; padding: 0px;}
#contentArea .videoM .SmallImageBlock {width:96px;height:72px;background-repeat:no-repeat; padding: 0px;margin-bottom:18px;}
#contentArea .videoM .ImageBlock img {width:200px;height:150px; margin: 0px !important;}
#contentArea .videoM .SmallImageBlock img {width:96px;height:72px; margin: 0px 15px 15px 0px;}
#contentArea .videoM p {margin: 0px 0px 18px 0px;}
#contentArea .videoM td {padding-bottom: 0px;}
#contentArea .videoM .date+p {margin-top: 6px;}

/*Temporary. These will be replaced by the real module styles to be defined by UX*/

.borderTop {border-top: solid 1px;}
.borderRight{border-right: solid 1px }
.borderBottom {border-bottom: solid 1px;}
.borderLeft{border-left: solid 1px }

.gradTop {border-top:1px solid #999;background:url(/apps/dp/i/shade_dn.png) repeat-x;}/*YES!*/
.medMargin{margin:0px 12px 0px 18px; padding-top: 50px;/*padding:12px 6px;*/} /*YES!*/
.borderDarkColor{ border-color: #999 }/*YES!*/
.borderLightColor{ border-color: #ddd}/*YES!*/

.mSmallTop {margin-top:6px;}
.mMedTop {margin-top:12px;}
.mLargeTop {margin-top:18px;}
.mXlargeTop {margin-top:21px;}

.mSmallRight {margin-right:6px;}
.mMedRight {margin-right:12px;}
.mLargeRight {margin-right:18px;}
.mXlargeRight {margin-right:21px;}

.mSmallBottom {margin-bottom:6px;}
.mMedBottom {margin-bottom:12px;}
.mLargeBottom {margin-bottom:18px;}
.mXlargeBottom {margin-bottom:21px;}

.mSmallLeft {margin-left:6px;}
.mMedLeft {margin-left:12px;}
.mLargeLeft {margin-left:18px;}
.mXlargeLeft {margin-left:21px}

.black-and-white {}
.gray-stripe {border-color: #666 !important;}
.teal-stripe {border-color: #4D8C8C !important;}
.blue-stripe {border-color: #369 !important;}
.blue {border-color: #FFF !important;}
 
/* Classic Black and White */
.black-and-white tr.black-and-whiteTableHeaderRow {background-color: Black; color: #FFF; } 
.black-and-white tr.black-and-whiteTableHeaderRow th {font-weight: bold; } 
.black-and-white tr.black-and-whiteTableHeaderRow td {font-weight: bold; } 
.black-and-white td.black-and-whiteTableHeaderFirstCol {border-left: solid 1px black; border-right: solid 2px black !important; font-weight: bold;} 
.black-and-white td.black-and-whiteTableHeaderLastCol {font-weight: bold; border-right: 1px solid black;} 
.black-and-white td.black-and-whiteTableHeaderOddCol {} 
.black-and-white td.black-and-whiteTableHeaderEvenCol {} 

.black-and-white tr.black-and-whiteTableOddRow {} 
.black-and-white tr.black-and-whiteTableEvenRow {} 
.black-and-white td.black-and-whiteTableFirstCol {border-left: solid 1px black; border-right: solid 2px black !important; font-weight: bold;} 
.black-and-white th.black-and-whiteTableFirstCol {border-left: solid 1px black; border-right: solid 2px black !important; font-weight: bold;} 
.black-and-white td.black-and-whiteTableLastCol {border-left: 1px solid black; border-right: solid 1px black; font-weight: bold;} 
.black-and-white th.black-and-whiteTableLastCol {border-left: 1px solid black; border-right: solid 1px black; font-weight: bold;} 
.black-and-white td.black-and-whiteTableOddCol {} 
.black-and-white td.black-and-whiteTableEvenCol {} 

.black-and-white tr.black-and-whiteTableFooterRow {font-weight: bold;} 
.black-and-white tr.black-and-whiteTableFooterRow td {border-bottom: solid 1px black; border-top: 1px solid black;} 
.black-and-white td.black-and-whiteTableFooterFirstCol {border-left: 1px solid black; border-right: solid 2px black !important; font-weight: bold;} 
.black-and-white td.black-and-whiteTableFooterLastCol {font-weight: bold; border-right: solid 1px black; border-left: 1px solid black;} 
.black-and-white td.black-and-whiteTableFooterOddCol {} 
.black-and-white td.black-and-whiteTableFooterEvenCol {} 

.black-and-white th {font-weight: normal;}


/* Classic Grayscale Zebra */
.gray-stripe tr.gray-stripeTableHeaderRow {background-color: #666; color: #FFF; } 
.gray-stripe tr.gray-stripeTableHeaderRow th {font-weight: bold; } 
.gray-stripe tr.gray-stripeTableHeaderRow td {font-weight: bold; } 
.gray-stripe td.gray-stripeTableHeaderFirstCol {border-left: solid 1px #666 !important; border-right: solid 2px #666 !important; font-weight: bold;} 
.gray-stripe td.gray-stripeTableHeaderLastCol {font-weight: bold; border-right: 1px solid #666 !important;} 
.gray-stripe td.gray-stripeTableHeaderOddCol {} 
.gray-stripe td.gray-stripeTableHeaderEvenCol {} 

.gray-stripe tr.gray-stripeTableOddRow {} 
.gray-stripe tr.gray-stripeTableEvenRow {background-color: #eee;} 
.gray-stripe td.gray-stripeTableFirstCol {border-left: solid 1px #666 !important; border-right: solid 2px #666 !important; font-weight: bold;} 
.gray-stripe th.gray-stripeTableFirstCol {border-left: solid 1px #666 !important; border-right: solid 2px #666 !important; font-weight: bold;} 
.gray-stripe td.gray-stripeTableLastCol {border-left: 1px solid #666 !important; border-right: solid 1px #666 !important; font-weight: bold;} 
.gray-stripe th.gray-stripeTableLastCol {border-left: 1px solid #666 !important; border-right: solid 1px #666 !important; font-weight: bold;} 
.gray-stripe td.gray-stripeTableOddCol {} 
.gray-stripe td.gray-stripeTableEvenCol {} 

.gray-stripe tr.gray-stripeTableFooterRow {font-weight: bold;}
.gray-stripe tr.gray-stripeTableFooterRow td {border-top: 3px solid #666 !important; border-bottom: 2px solid #666 !important;} 
.gray-stripe td.gray-stripeTableFooterFirstCol {border-left: 1px solid #666 !important; border-right: solid 2px #666 !important; font-weight: bold;} 
.gray-stripe td.gray-stripeTableFooterLastCol {border-left: 1px solid #666 !important; border-right: solid 1px #666 !important; font-weight: bold;} 
.gray-stripe td.gray-stripeTableFooterOddCol {} 
.gray-stripe td.gray-stripeTableFooterEvenCol {} 

.gray-stripe th {font-weight: normal;}
.gray-stripe td {border-color: #666 !important; }
.gray-stripe th {border-color: #666 !important; }

/* Simple Teal Zebra */
.teal-stripe tr.teal-stripeTableHeaderRow {background-color: #4D8C8C; color: #FFF;} 
.teal-stripe tr.teal-stripeTableHeaderRow th {font-weight: bold; border-top: 1px solid #4D8C8C !important; border-bottom: 1px solid #4D8C8C !important; } 
.teal-stripe tr.teal-stripeTableHeaderRow td {font-weight: bold; border-top: 1px solid #4D8C8C !important; border-bottom: 1px solid #4D8C8C !important;} 
.teal-stripe td.teal-stripeTableHeaderFirstCol {border-left: solid 1px #4D8C8C !important; border-right: solid 2px #4D8C8C !important; font-weight: bold;} 
.teal-stripe td.teal-stripeTableHeaderLastCol {font-weight: bold; border-left: 1px solid #4D8C8C !important; border-right: 1px solid #4D8C8C !important;} 
.teal-stripe td.teal-stripeTableHeaderOddCol {} 
.teal-stripe td.teal-stripeTableHeaderEvenCol {} 

.teal-stripe tr.teal-stripeTableOddRow {} 
.teal-stripe tr.teal-stripeTableEvenRow {background-color: #E8F0F0;} 
.teal-stripe td.teal-stripeTableFirstCol {border-left: solid 1px #4D8C8C !important; border-right: solid 2px #4D8C8C !important; font-weight: bold;} 
.teal-stripe th.teal-stripeTableFirstCol {border-left: solid 1px #4D8C8C !important; border-right: solid 2px #4D8C8C !important; font-weight: bold;} 
.teal-stripe td.teal-stripeTableLastCol {border-left: 1px solid #4D8C8C !important; border-right: solid 1px #4D8C8C !important; font-weight: bold;} 
.teal-stripe th.teal-stripeTableLastCol {border-left: 1px solid #4D8C8C !important; border-right: solid 1px #4D8C8C !important; font-weight: bold;} 
.teal-stripe td.teal-stripeTableOddCol {} 
.teal-stripe td.teal-stripeTableEvenCol {} 

.teal-stripe tr.teal-stripeTableFooterRow {font-weight: bold;} 
.teal-stripe tr.teal-stripeTableFooterRow td {border-top: 3px solid #4D8C8C !important; border-bottom: 2px solid #4D8C8C !important;} 
.teal-stripe td.teal-stripeTableFooterFirstCol {border-left: 1px solid #4D8C8C !important; border-right: solid 2px #4D8C8C !important; font-weight: bold;} 
.teal-stripe td.teal-stripeTableFooterLastCol {border-left: 1px solid #4D8C8C !important; border-right: solid 1px #4D8C8C !important;} 
.teal-stripe td.teal-stripeTableFooterOddCol {} 
.teal-stripe td.teal-stripeTableFooterEvenCol {} 

.teal-stripe th {font-weight: normal;}
.teal-stripe td {border-color: #4D8C8C !important; }
.teal-stripe th {border-color: #4D8C8C !important; }

/* Simple Blue Horizontal Zebra */
.blue-stripe tr.blue-stripeTableHeaderRow {background-color: #369; color: #FFF; } 
.blue-stripe tr.blue-stripeTableHeaderRow th {font-weight: bold; } 
.blue-stripe tr.blue-stripeTableHeaderRow td {font-weight: bold; } 
.blue-stripe td.blue-stripeTableHeaderFirstCol {border-left: solid 1px #369 !important; border-right: solid 2px #369 !important; font-weight: bold;} 
.blue-stripe td.blue-stripeTableHeaderLastCol {border-left: 1px solid #369 !important; border-right: 1px solid #369 !important; font-weight: bold; } 
.blue-stripe td.blue-stripeTableHeaderOddCol {} 
.blue-stripe td.blue-stripeTableHeaderEvenCol {} 

.blue-stripe tr.blue-stripeTableOddRow {} 
.blue-stripe tr.blue-stripeTableEvenRow {background-color: #E5EBF2;} 
.blue-stripe td.blue-stripeTableFirstCol {border-left: 1px solid #369 !important; border-right: solid 2px #369 !important; font-weight: bold;} 
.blue-stripe th.blue-stripeTableFirstCol {border-left: 1px solid #369 !important; border-right: solid 2px #369 !important; font-weight: bold;}
.blue-stripe td.blue-stripeTableLastCol {border-left: 1px solid #369 !important; border-right: solid 1px #369 !important; font-weight: bold;} 
.blue-stripe th.blue-stripeTableLastCol {border-left: 1px solid #369 !important; border-right: solid 1px #369 !important; font-weight: bold;}
.blue-stripe td.blue-stripeTableOddCol {} 
.blue-stripe td.blue-stripeTableEvenCol {} 

.blue-stripe tr.blue-stripeTableFooterRow {font-weight: bold;}
.blue-stripe tr.blue-stripeTableFooterRow td {border-top: 3px solid #369 !important; border-bottom: 2px solid #369 !important;} 
.blue-stripe td.blue-stripeTableFooterFirstCol {border-left: 1px solid #369 !important; border-right: solid 2px #369 !important; font-weight: bold;} 
.blue-stripe td.blue-stripeTableFooterLastCol {border-left: 1px solid #369 !important; border-right: solid 1px #369 !important; font-weight: bold;} 
.blue-stripe td.blue-stripeTableFooterOddCol {} 
.blue-stripe td.blue-stripeTableFooterEvenCol {} 

.blue-stripe th {font-weight: normal;}
.blue-stripe td {border-color: #369 !important; }
.blue-stripe th {border-color: #369 !important; }

/* Simple Blue */
.blue tr.blueTableHeaderRow {background-color: #C1D1E0;} 
.blue tr.blueTableHeaderRow th {font-weight: bold; } 
.blue tr.blueTableHeaderRow td {font-weight: bold; } 
.blue td.blueTableHeaderFirstCol {border-left: solid 1px #FFF !important; border-right: solid 2px #FFF !important; font-weight: bold;} 
.blue td.blueTableHeaderLastCol {border-left: 1px solid #FFF !important; border-right: 1px solid #FFF !important; font-weight: bold;} 
.blue td.blueTableHeaderOddCol {} 
.blue td.blueTableHeaderEvenCol {} 

.blue tr.blueTableOddRow {} 
.blue tr.blueTableEvenRow {} 
.blue td.blueTableFirstCol {border-left: 1px solid #FFF !important; border-right: solid 2px #FFF !important; font-weight: bold;} 
.blue th.blueTableFirstCol {border-left: 1px solid #FFF !important; border-right: solid 2px #FFF !important; font-weight: bold;} 
.blue td.blueTableLastCol {border-left: 1px solid #FFF !important; border-right: solid 1px #FFF !important; font-weight: bold;} 
.blue th.blueTableLastCol {border-left: 1px solid #FFF !important; border-right: solid 1px #FFF !important; font-weight: bold;} 
.blue td.blueTableOddCol {} 
.blue td.blueTableEvenCol {} 

.blue tr.blueTableFooterRow {font-weight: bold;}
.blue tr.blueTableFooterRow td {border-top: 3px solid #FFF !important; border-bottom: 2px solid #FFF !important;} 
.blue td.blueTableFooterFirstCol {border-left: 1px solid #FFF !important; border-right: solid 2px #FFF !important; font-weight: bold;} 
.blue td.blueTableFooterLastCol {border-left: 1px solid #FFF !important; border-right: solid 1px #FFF !important; font-weight: bold;} 
.blue td.blueTableFooterOddCol {} 
.blue td.blueTableFooterEvenCol {} 

.blue th {font-weight: normal;}
.blue tr {background-color: #E5EBF2;}
.blue td {border-bottom-color: #FFF !important; border-bottom-style: solid; border-bottom-width: 1px!important;}
.blue td {border-color: #FFF !important; }
.blue th {border-color: #FFF !important; }
#contentArea .conM table.tWiz { }
#contentArea .conM table.tWiz, #contentArea .conM table.tWiz td, #contentArea .conM table.tWiz th { border-color: #323223 }
#contentArea .conM table.tableBorder { border: solid 1px }
#contentArea .conM table.tableBorderTop    { border-top: solid 1px }
#contentArea .conM table.tableBorderBottom { border-bottom: solid 1px }
#contentArea .conM table.borderRows td, table.borderRows th { border-top: solid 1px; border-bottom: solid 1px;}
#contentArea .conM table.borderColumns td, table.borderColumns th { border-left: solid 1px; border-right: solid 1px;}
    
    </style>
    <script type="text/javascript">
      var rmc = {
  b: {
    IE: (navigator.appName.toLowerCase() == "microsoft internet explorer"),
    O: (typeof (window.opera) != "undefined")
  },
  Hovers: [],
  Fades: [],
  Xml: [],
  Xsl: [],
  MaxS: 0,
  GE: function(s) { return document.getElementById(s); },
  AE: function(o, e, r) {
    if (o == null) { return; }
    (this.b.IE) ? o.attachEvent("on" + e, r) : o.addEventListener(e, r, false);
  },
  RE: function(o, e, r) {
    if (o == null) { return; }
    (this.b.IE) ? o.detachEvent("on" + e, r) : o.removeEventListener(e, r, false);
  },
  Print: function() { window.print(); },
  Email: function(u) {
    if (!u) { u = location.href; }
    location.href = "mailto:?subject=" + ((document.title != '') ? document.title : 'Microsoft Research') + "&body=" + escape(u);
  },
  Share: function(s, u) {
    if (!u) { u = location.href; }
    u = escape(u);
    var n = "rmcshare";
    switch (s) {
      case "L":
        this.Open("/apps/c/1051.aspx?url=" + u + "&title=" + document.title, n, "");
        break;
      case "D":
        this.Open("/apps/c/1052.aspx?url=" + u + "&title=" + document.title, n, "");
        break;
      case "d":
        this.Open("/apps/c/1053.aspx?url=" + u + "&title=" + document.title, n, "");
        break;
//      case "m":
//        this.Open("http://ma.gnolia.com/bookmarklet/add?url=" + location.href + "&title=" + document.title, n, "");
//        break;
      case "T":
        this.Open("/apps/c/1054.aspx?url=" + u + "&title=" + document.title, n, "");
        break;
      case "N":
        this.Open("/apps/c/1055.aspx?url=" + u + "&title=" + document.title, n, "");
        break;
      case "F":
        this.Open("/apps/c/1056.aspx?url=" + u + "&title=" + document.title, n, "");
        break;
    }
  },
  Open: function(u, n, f) { return window.open(u, n, f); },
  NewHover: function(o, c, dx, dy, b) { this.Hovers[o] = new this.Hover(o, c, this, dx, dy, b); },
  Hover: function(o, c, r, dx, dy, b) {
    this.Clear = function() {
      clearTimeout(t);
    }
    this.Show = function(evt) {
      z.Clear();
      if (b) {
        var e = evt.target || evt.srcElement;
        var rx = evt.layerX || evt.offsetX;
        var ry = evt.layerY || evt.offsetY;
        var px = evt.pageX || (evt.clientX + document.body.scrollLeft);
        var py = evt.pageY || (evt.clientY + document.documentElement.scrollTop);
        var ow = e.clientWidth;
        var oh = e.clientHeight;
        var x = px - rx;
        var y = py + (oh - ry);
        c.style.left = x + dx + "px";
        c.style.top = y + dy + "px";
      }
      c.style.display = "block";
    }
    this.Hide = function() {
      c.style.display = "none";
    }
    this.Out = function() {
      z.Clear();
      t = setTimeout("rmc.Hovers['" + n + "'].Hide();", z.Time);
    }
    var z = this, n = o, t = null;
		this.Time = 1000;
    o = r.GE(o);
    c = r.GE(c);
    r.AE(o, "mouseover", z.Show);
    r.AE(o, "mouseout", z.Out);
    r.AE(c, "mouseover", z.Clear);
    r.AE(c, "mouseout", z.Out);
  },
  GetXml: function(p, b, cb) {
    var x;
    try {
      x = new XMLHttpRequest();
      if (b) { x.onreadystatechange = cb; }
      x.open("GET", p, b);
    }
    catch (e) {
      x = new ActiveXObject("MSXML2.DOMDocument");
      x.async = false;
    }
    return x;
  },
  AddXml: function(n, p, cb, b) {
    this.Xml[n] = this.GetXml(p, b, cb);
    try {
      this.Xml[n].send(null);
      if (!b && cb != null) { cb(); }
    }
    catch (e) {
      this.Xml[n].load(p);
      cb();
    }
  },
  AddXsl: function(n, p) {
    if (this.b.IE) {
      var x = this.GetXml(p, false);
      try {
        x.send(null);
        this.Xsl[n] = x.responseXML;
      }
      catch (e) {
        x.load(p);
        this.Xsl[n] = x;
      }
    }
    else {
      this.Xsl[n] = new XSLTProcessor();
      try {
        var w = this.GetXml(p);
        w.send(null);
        this.Xsl[n].importStylesheet(w.responseXML);
      }
      catch (e) {
        // xsl error
      }
    }
  },
  Transform: function(x, s) {
    if (this.b.IE) {
      return x.transformNode(s);
    }
    else {
      var xs = new XMLSerializer();
      return xs.serializeToString(s.transformToFragment(x, document));
    }
  },
  Calendar: function(holderId, name, cb) {
    var holder = document.getElementById(holderId);
    var month, year;
    var monthName = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var monthLength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    this.Show = function(selDate) {
      if (holder == null) { return; }

      var cDate = (selDate != null) ? new Date(selDate) : new Date();
      month = cDate.getMonth() + 1;
      year = cDate.getFullYear();

      var sDate = new Date(formatDate(month, 1, year));

      var mLength = monthLength[sDate.getMonth()];
      if (month == 2) { mLength = (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) ? 29 : 28; }
      var out = "<table cellspacing='0' cellpadding='0' class='cal'><tr><td class='delta prev' onclick='" + name + ".PrevMonth();'><img src='/apps/dp/i/prev.gif' alt='Previous month'/></td><td colspan='5' class='month'>" + monthName[sDate.getMonth()] + ", " + year + "</td><td class='delta next' onclick='" + name + ".NextMonth();'><img src='/apps/dp/i/next.gif' alt='Next month'/></td></tr>";
      out += "<tr><th>S</th><th>M</th><th>T</th><th>W</th><th>T</th><th>F</th><th>S</th></tr>";
      var date = 0;
      d = 1 - sDate.getDay();

      do {
        out += "<tr>";
        for (var cd = 0; cd < 7; cd++) {
          date = (d++);
          if (date > 0 && date <= mLength) { out += "<td class='day' onclick='" + name + ".Select(" + date + ");'>" + date + "</td>"; }
          else { out += "<td>&nbsp;</td>"; }
          if (date >= mLength && cd >= 6) { break; }
        }
        out += "</tr>";
      }
      while (date < mLength)

      holder.innerHTML = out + "</table>";
    };
    this.NextMonth = function() {
      this.Show(formatDate(++month, 1, year));
    };
    this.PrevMonth = function() {
      this.Show(formatDate(--month, 1, year));
    };
    this.Select = function(day) {
      cb(new Date(formatDate(month, day, year)));
    }
    var formatDate = function(m, d, y) {
      return m + "/" + d + "/" + y;
    };
  },
  Search: {
    Focus: function(o) {
      o.value = "";
      o.className = "sel";
      o = rmc.GE("goButton");
      if (o != null) { o.src = o.src.substr(0, o.src.indexOf("_"))+"_s.gif"; }
    },
    Blur: function(o) {
      if (o.value == "") { o.value = "Search Microsoft Research"; }
      o.className = "";
      o = rmc.GE("goButton");
      if (o != null) { o.src = o.src.substr(0, o.src.indexOf("_")) + "_n.gif"; }
    },
    Submit: function() {
      var q = rmc.GE("cst");
      if (q != null && q.value != "Search Microsoft Research" && q.value != "") {
        var f = rmc.GE("csf");
        if (f != null) { f.submit(); }
      }
    }
  },
  BreadCrumb: function(o) {
    var h, s = "";
    if ((h = this.GE("bcHolder")) == null) { return; }
    for (var i in o) {
      s += " > ";
      if (o[i].u != null) {
        s += "<a href='" + o[i].u + "'>" + o[i].t + "</a>";
      }
      else { s += o[i].t; }
    }
    h.innerHTML = s;
  },
  PageDepth: function() {
    if (document.documentElement) {
      var de = document.documentElement;
      var p = "http://" + location.host + "/a/bi.txt?t=2&e=0&v=" + de.clientHeight + "," + de.scrollHeight + "," + rmc.MaxS;
      rmc.AddXml("bi", p, null, false);
    }
  },
  MaxScroll: function() {
    if (document.documentElement) {
      var x = document.documentElement.scrollTop;
      if (x > rmc.MaxS) { rmc.MaxS = x; }
    }
  },
  DOE: function(s) {
    s = s.replace(/&lt;/gi, "<");
    s = s.replace(/&gt;/gi, ">");
    return s;
  },
  NewFade: function(name, holder, buttons, control) { this.Fades[name] = new this.Fade(name, holder, buttons, control); },
  Fade: function(name, holder, buttons, control) {
    var timer = null;
    holder = rmc.GE(holder);
    if (holder == null) { return; }
    buttons = rmc.GE(buttons);
    control = rmc.GE(control);
    var intervalChange = 20;
    var intervalChild = 5000;
    var amountChange = 3.5;
    var children = holder.children;
    var currentChild = 0;
    var currentPercent = 0;
    var timerAmount = intervalChild;
    var toggled = false;

    var setTimer = function() { timer = setTimeout("rmc.Fades['" + name + "'].Update();", timerAmount); }
    var nextChild = function() { return (currentChild + 1 > children.length - 1) ? 0 : currentChild + 1; }
    var setOpacity = function(o, i, f) {
      o = o.children[0];
      (rmc.b.IE) ? o.style.filter = "alpha(opacity=" + i + ")" : o.style.opacity = f;
      o.style.display = (i <= 0) ? "none" : "block";
    }
    var toggleButtons = function(c, n) {
      if (buttons == null) { return; }
      buttons.children[c].className = "";
      buttons.children[n].className = "sel";
    }
    var PauseMouse = function() {
      clearTimeout(timer);
      if (control != null) {
        control.children[1].style.display = "none";
        control.children[0].style.display = "block";
      }
    }
    var PlayMouse = function() {
      if (control != null) {
        control.children[0].style.display = "none";
        control.children[1].style.display = "block";
      }
      setTimer();
    }

    this.Play = function() {
      rmc.AE(holder, "mouseover", PauseMouse);
      rmc.AE(holder, "mouseout", PlayMouse);
      PlayMouse();
    }
    this.Pause = function() {
      rmc.RE(holder, "mouseover", PauseMouse);
      rmc.RE(holder, "mouseout", PlayMouse);
      PauseMouse();
    }
    this.Update = function() {
      if (currentPercent == 0) { timerAmount = intervalChange; }
      else if (currentPercent > 100) {
        timerAmount = intervalChild;
        currentChild = nextChild();
        currentPercent = 0;
        setTimer();
        toggled = false;
        return;
      }
      currentPercent += amountChange;
      if (!toggled && currentPercent > 5) { toggleButtons(currentChild, nextChild()); toggled = true; }
      setOpacity(children[nextChild()], currentPercent, (currentPercent / 100));
      setOpacity(children[currentChild], (100 - currentPercent), 1 - (currentPercent / 100));
      setTimer();
    }
    this.GoTo = function(evt) {
      var n;
      for (n = 0; n < buttons.children.length; n++) {
        var e = evt.target || evt.srcElement;
        if (e === buttons.children[n]) { break; }
      }
      clearTimeout(timer);
      setOpacity(children[nextChild()], 0, 0);
      setOpacity(children[currentChild], 0, 0);
      setOpacity(children[n], 100, 1);
      toggleButtons(currentChild, n);
      currentChild = n;
      timerAmout = intervalChild;
      setTimer();
    }
    var z = this;
    if (buttons != null && holder.children.length > 1) {
      for (var x = 0; x < holder.children.length; x++) {
        var d = document.createElement("div");
        if (x == 0) { d.className = "sel"; }
        rmc.AE(d, "click", z.GoTo);
        buttons.appendChild(d);
      }
    }
    if (control != null) {
      rmc.AE(control.children[0], "click", z.Play);
      rmc.AE(control.children[1], "click", z.Pause);
    }
  }
};

    </script>
    <script type="text/javascript" language="javascript">
        function OpenFeedback() {
            var cci = rmc.GE("clickCountImg");
            if (cci != null) { cci.src = "/c/1171"; }
            rmc.Open("/apps/feedback/Feedback.aspx", "popwindow", "width=500px,height=540px,status=0,directories=0");
        }
    </script>
		
  <style>
    .pubD #left {width:570px;margin-left:24px;margin-right:50px;margin-top:14px;}
    .pubD #left table {margin-bottom:20px;}
    .pubD #left table .name {text-align:right;width:130px;vertical-align:top;}
    .pubD #left .files img {margin-bottom:9px;}
    .pubD #left table tr td {padding: 6px 9px;}
    .pubD #left table.files {margin-bottom:0px;}
    .pubD #left table.files td {padding:0px;font-size:70%;height:65px;width:140px;}
    .pubD #right {width:242px;margin:21px 11px 0px 0px;padding-bottom:25px;background:url(/apps/dp/i/shade_dn.png) bottom repeat-x;}
    .pubD #right div {width:223px;padding:0px 0px 10px 18px;border-left:1px solid #665;border-bottom:1px solid #665;}
    .pubD #right .conM {margin:0px;}
    .pubD #pubDeTop {margin-left:24px;}
  </style>
</head>

	<body>
	<!--NOINDEX_START-->
	  <div class="dn">
      <script type="text/javascript">
        var s_account = 'msnportalbetarmc';
      </script>
      <script type="text/javascript" src="http://stj.msn.com/br/om/js/s_code.js"></script>
      <script type="text/javascript">
        s.pageName = document.title;
        s.server = "research.microsoft.com";
        //s.channel="beta.research.microsoft.com";
        s.pageType = "betarmc_pageType";
        s.prop1 = "Research";
        s.prop2 = "en-us";
      </script>
    </div>
    
		<div id="cShare" class="pop dn">
			<div class="h">Share this page</div>
			<ul>
				<li><a href="javascript:rmc.Share('L');void(0);">Live Favorites</a></li>
				<li><a href="javascript:rmc.Share('D');void(0);">Digg</a></li>
				<li><a href="javascript:rmc.Share('d');void(0);">del.icio.us</a></li>
				<li><a href="javascript:rmc.Share('T');void(0);">Twitter</a></li>
				<li><a href="javascript:rmc.Share('N');void(0);">Newsvine</a></li>
				<li><a href="javascript:rmc.Share('F');void(0);">Facebook</a></li>
			</ul>
		</div>
	

		
<div class="pubD">

		  <a name="rmcTop"></a>
			<div id="chTB" class="center sw pr">
			  <div id="chLogo"><a href="/c/1040" onClick="stc(this, 1)"><img alt="Microsoft Research" src="/a/i/c/logo_msr.png"/></a></div>
			  <!--div id="chLogo"><a href="/c/1040" onClick="stc(this, 2)"><img alt="Microsoft Research" src="/a/i/c/logo_msr.png"/></a></div-->
				<div id="chSearch">
					<form method="get" id="csf" onsubmit="rmc.Search.Submit();return false;" action="/apps/dp/search.aspx"/>
						<input class="pa" onfocus="rmc.Search.Focus(this);" onblur="rmc.Search.Blur(this);" name="q" id="cst" type="text" value="Search Microsoft Research" />
						<input class="pa" alt="Submit search" id="goButton" type="image" src="/a/i/c/search_n.gif"/>
					</form>
				</div>

				
				    <div id="chTer">
					    <a href="/c/1048" onClick="stc(this, 3)">
						    <b class="item t5 fl">
							    <div>Videos</div>
						    </b>
					    </a>
					    <a href="/c/1042" onClick="stc(this, 4)">
						    <b class="item t4 fl">
							    <div>Projects</div>
						    </b>
					    </a>
					    <a href="/c/1043" onClick="stc(this, 5)">
						    <b class="item t2 fl">
							    <div>Publications</div>
						    </b>
					    </a>
					    <a href="/c/1044" onClick="stc(this, 6)">
						    <b class="item t3 fl">
							    <div>People</div>
						    </b>
					    </a>
					    <a href="/c/1045" onClick="stc(this, 7)">
						    <b class="item t1 fl">
							    <div>Downloads</div>
						    </b>
					    </a>
				    </div>
				
			</div>
			<div id="shadow" class="center sw">
				<div id="top">
					<img src="/a/i/c/s_top.png"/>
					<!--img src="/a/i/c/s_top.png" /-->
				</div>
				<div id="border">
				  <div id="chNav">
      		  <div id="chP">
              <table cellspacing="0" cellpadding="0" border="0">
                <col width="6"/>
                <tr>
                  <td>&nbsp;</td>
      		            <div id="ctl00_ctl00_Navigation2_holder"><td>
  <div><a href="/c/1000" onClick="stc(this, 8)">Home</a></div>
</td>
<td class="sel">
  <div><a href="/c/1010" onClick="stc(this, 9)">Our Research</a></div>
</td>
<td>
  <div><a href="/c/1020" onClick="stc(this, 10)">Connections</a></div>
</td>
<td>
  <div><a href="/c/1030" onClick="stc(this, 11)">Careers</a></div>
</td>
<td>
  <div><a href="/c/1180" onClick="stc(this, 12)">Hub</a></div>
</td></div>

                  <td width="100%">&nbsp;</td>
                </tr>
              </table>			
      		  </div>
      		  <div id="chS"><div id="ctl00_ctl00_Navigation1_holder"><ul class="horiz">
  <li class="first"><a href="/c/1011" onClick="stc(this, 13)">Worldwide Labs</a></li>
  <li class=""><a href="/c/1012" onClick="stc(this, 14)">Research Areas</a></li>
  <li class="last"><a href="/c/1013" onClick="stc(this, 15)">Research Groups</a></li>
</ul></div>
</div>
      		  <div id="chPM"><div id="ctl00_ctl00_ctl00_holder"><table cellpadding="0" cellspacing="0" border="0" id="pmleft"><tr><td valign="top"><a href="/c/1170" onClick="stc(this, 16)"><img border="0" src="/en-us/images/ads/chrome/beaninsider3.png" alt="Be an insider"></a></td><td><b><div>Be an insider</div></b><div><a alt="" href="/c/1170" onClick="stc(this, 17)">The Inside Microsoft Research blog</a></div></td></tr></table></div>
</div>
    		  </div>
					<div id="crumbBar">
						<div id="tools">
	<ul class="horiz">
	    <li>
	        <a href="javascript:rmc.Share('T');void(0);"><img title="Share this page on Twitter" alt="Share this page on Twitter" src="/a/i/c/twitter_16x16.png" border="0" width="16" height="16" /></a>
	        <a href="javascript:rmc.Share('F');void(0);"><img title="Share this page on Facebook" alt="Share this page on Facebook " src="/a/i/c/facebook_16x16.png" border="0" width="16" height="16" /></a>
	        <a href="javascript:rmc.Share('D');void(0);"><img title="Share this page on Digg" alt="Share this page on Digg" src="/a/i/c/digg_16x16.png" border="0" width="16" height="16" /></a>
	        <a href="javascript:rmc.Share('d');void(0);"><img title="Share this page on Del.icio.us" alt="Share this page on Del.icio.us" src="/a/i/c/delicious_16x16.gif" border="0" width="16" height="16" /></a>
	        <a href="/c/1057" onClick="stc(this, 18)"><img title="Read the Inside Microsoft Research blog" alt="Read the Inside Microsoft Research blog" src="/a/i/c/blog_16x16.png" border="0" width="16" height="16" /></a>
	    </li>
	    <li>
	        <a href="javascript:rmc.Email();void(0);"><img title="E-mail this page" alt="E-mail this page" src="/a/i/c/t_email.gif" border="0" width="16" height="16" /></a>
	        <a href="javascript:rmc.Print();void(0);"><img title="Print this page" alt="Print this page" src="/a/i/c/t_print.gif" border="0" width="16" height="16" /></a>
	    </li>
	    <li class="last">
	        <a href="/c/1046" onClick="stc(this, 19)"><img title="RSS feeds" alt="RSS feeds" src="/a/i/c/rss.gif" border="0" width="18" height="18" /></a>
	    </li>
	</ul>
</div>
						<a href="/c/1047" onClick="stc(this, 20)"><img alt="Home" border="0" src="/a/i/c/bc_home.png" /></a>
						<span id="bcHolder">
  > <a href="/apps/dp/pu/publications.aspx" onClick="stc(this, 21)">Publications</a> > <span id="ctl00_ctl00_BreadCrumb_BreadCrumb_breadCrumbs">Large Margin Rank Boundaries for Ordinal Regression</span>
</span>
					</div>
					<!--NOINDEX_STOP-->
					<div id="contentArea">
						
  <div id="ctl00_ctl00_ContentArea_ContentArea_holder"><div id="pubDeTop"><div class="title">Large Margin Rank Boundaries for Ordinal Regression</div><p class="byLine">Ralf Herbrich, Thore Graepel, and  Klaus Obermayer<br> January 2000</p></div><div id="left" class="fl"><p>In contrast to the standard machine learning tasks of classification and metric regression we investigate the problem of predicting variables of ordinal scale, a setting referred to as ordinal regression. This problem arises frequently in the social sciences and in information retrieval where human preferences play a major role. Whilst approaches proposed in statistics rely on a probability model of a latent (unobserved) variable we present a distribution independent risk formulation of ordinal regression which allows us to derive a uniform convergence bound. Applying this bound we present a large margin algorithm that is based on a mapping from objects to scalar utility values thus classifying pairs of objects. We give experimental results for an information retrieval task which show that our algorithm outperforms more naive approaches to ordinal regression such as Support Vector Classification and Support Vector Regression in the case of more than two ranks.</p><table cellspacing="0" cellpadding="6" border="0" class="files"><tr><td valign="top" align="center"><a title="herobergrae99.ps" target="_blank" href="/pubs/65610/herobergrae99.ps" onClick="stc(this, 22)"><img alt="herobergrae99.ps" border="0" src="i/ps.jpg"><div>PostScript file</div></a></td></tr></table><p><span class="b">In: </span>Advances in Large Margin Classifiers</p><p><span class="b">Publisher: </span>MIT Press<br><span class="copyright">All copyrights reserved by MIT Press 2000.</span></p><h2 class="rule">Details</h2><table cellspacing="0" border="0"><tr><td class="name heading">Type:
        </td><td class="value">Chapter</td></tr><tr><td class="name heading">Pages:
        </td><td class="value">115–132</td></tr><tr><td class="name heading">Chapter:
        </td><td class="value">7</td></tr></table></div><div id="right" class="fl"><div class="conM"><h5>Related People</h5><ul><li><a href="/jump/49072" onClick="stc(this, 23)">Ralf Herbrich</a></li><li><a href="/jump/49462" onClick="stc(this, 24)">Thore Graepel</a></li></ul><h5>Related Groups</h5><ul><li><a href="/jump/72956" onClick="stc(this, 25)">Online Services and Advertising</a></li></ul><h5>Related Labs</h5><ul><li><a href="/jump/47182" onClick="stc(this, 26)">Microsoft Research Cambridge</a></li></ul><h5>Related Research Areas</h5><ul><li><a href="/jump/47200" onClick="stc(this, 27)">Machine learning</a></li><li><a href="/jump/47205" onClick="stc(this, 28)">Theory</a></li></ul></div></div></div>

					</div>
					<!--NOINDEX_START-->
					<div class="cl"></div>
					<div id="bGrad" class="bt"></div>
				</div>
			</div>
			<div id="ctl00_ctl00_ctl01_holder" class="shellFooter"><div id="footer" class="center sw"><div class="fr"><span>&copy;2012 Microsoft Corporation. All rights reserved.</span><a href="/c/1064" onClick="stc(this, 29)"><img alt="Microsoft" src="/a/i/c/logo_ms.png" border="0"></a></div><ul class="horiz"><li class="first"><a href="/c/1060" onClick="stc(this, 30)">Contact Us</a></li><li class=""><a href="/c/1061" onClick="stc(this, 31)">Terms of Use</a></li><li class=""><a href="/c/1062" onClick="stc(this, 32)">Trademarks</a></li><li class=""><a href="/c/1063" onClick="stc(this, 33)">Privacy Statement</a></li><li class="last"><a href="javascript:OpenFeedback();">Give Us Feedback</a></li></ul></div></div>
<script language="javascript">
<!--
  if(location.host.toLowerCase() == "research.microsoft.com"){
    var s_code=s.t();
    if(s_code){document.write(s_code);}
  }
//-->
</script>

<noscript>
  <img src=http://msnportalbetarmc.112.2O7.net/b/ss/msnportalbetarmc/1/H.1--NS/0 height="1" width="1" border="0" alt="" />
</noscript>

			<script type="text/javascript">
				rmc.AE(window, "unload", rmc.PageDepth);
				rmc.AE(window, "scroll", rmc.MaxScroll);
			</script>
		</div>
		<!--NOINDEX_STOP-->
        <!-- this used to click count when feedback popup is clicked -->
        <img id="clickCountImg" style="display:none" />
	<script type="text/javascript">
function stc(e,linkIndex){if(document.images){var linkText;if(navigator.appName.toLowerCase()=="microsoft internet explorer"){linkText=e.innerText}else{linkText=e.textContent}if(linkText==""){if(e.firstChild){var firstChild=e.firstChild.nodeName.toUpperCase();if(firstChild=="IMG"){linkText="Image: "+getName(e.firstChild.getAttribute('src'))}}else{var nodeName=e.nodeName.toUpperCase();if(nodeName=="AREA"){linkText="ImageMap: "+e.href}}}if(linkText==""){linkText=e.href}(new Image()).src="/a/i/stg.gif?f="+escape(document.location.href)+"&t="+escape(e.href)+"&i="+linkIndex+"&n="+escape(trimString(linkText))}}function getName(s){if(s.lastIndexOf('/')>=0){return(s.substring(s.lastIndexOf('/')+1,s.length))}else{return(s)}}function trimString(s){return(s.replace(/^\s*/,"").replace(/\s*$/,""))}
</script>
</body>
</html>