<%@page import="poly.dto.ImgDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<title>TBC : 더 빅 코퍼레이션</title>
        <meta name="description" content="TBC, 감각적인 BTL 기업행사, 대규모 창립행사, 컨텐츠 개발 이벤트회사, 행사 대행 및 광고 대행업체">
        <script>
	        
		function getCookie(name) {
			var cookies = document.cookie.split(";");
			for (var i = 0; i < cookies.length; i++) {
				if (cookies[i].indexOf("=") == -1) {
					if (name == cookies[i])
						return "";
				} else {
					var crumb = cookies[i].split("=");
					if (name == crumb[0].trim())
						return unescape(crumb[1].trim());
				}
			}
		};
		var desktopModeTF = getCookie("DesktopMode");
		var Scale = getCookie("DesktopModeScale");
		var defWidth = 1920;
		if (desktopModeTF == "true") {
			
			document
					.write('<meta name="viewport" content="width='+defWidth+', user-scalable=yes, initial-scale='+Scale+'">');
			
		} else {
			
			document
					.write('<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0">');
			
		}
		function desktopMode() {
			if(getCookie("DesktopMode") == "true"){
				setModeCookie(false);
				
			}else{
				
				setModeCookie(true);
				window.scrollTo(0, 0);
			}
			location.reload();
	
		}
		function setModeCookie(switchOn){
			var now = new Date();
			var time = now.getTime();
			time += 3600 * 1000;
			now.setTime(time);
			document.cookie ='DesktopMode='+switchOn +'; expires=' + now.toUTCString() ;
			if(switchOn){
				document.cookie = "DesktopModeScale=" + $('html').width() / defWidth +'; expires=' + now.toUTCString() ;;
			}
		}
	</script>
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
		
		<!-- enquire -->
		<script type="text/javascript" src="../js/enquire.js"></script>
		<script type="text/javascript">
			// This loads JS files in the head element
			function loadJS(url) {
				// adding the script tag to the head
				var head = document.getElementsByTagName('head')[0];
				var script = document.createElement('script');
				script.type = 'text/javascript';
				script.src = url;
		
				// fire the loading
				head.appendChild(script);
			}
		</script>
		
		
		<!-- import -->
		<link rel="stylesheet" media="screen and (min-width: 768px)" href="../import/css/default_gnu0d2a.css?ver=161020">
		<!--  [if lte IE 8]>
		<script src="../import/js/html5.js"></script>
		<![endif]-->
		<script>
		// 자바스크립트에서 사용하는 전역변수 선언
		var g5_url       = "http://www.thebigc.kr/";
		var g5_bbs_url   = "http://www.thebigc.kr/bbs";
		var g5_is_member = "";
		var g5_is_admin  = "";
		var g5_is_mobile = "";
		var g5_bo_table  = "";
		var g5_sca       = "";
		var g5_editor    = "";
		var g5_cookie_domain = "";
		</script>

		
		<link rel="stylesheet" type="text/css" media="screen and (min-width: 768px)" href="../import/css/common.css" />
		<link rel="stylesheet" type="text/css" media="screen and (min-width: 768px)" href="../import/css/default.css" />
		<link rel="stylesheet" type="text/css" media="screen and (min-width: 768px)" href="../import/css/bxslider.css" />
		<link rel="stylesheet" type="text/css" media="screen and (min-width: 768px)" href="../import/css/fancybox.css" />
		
		<script type="text/javascript">
		
		    enquire.register("screen and (min-width: 768px)", {
		        match : function() {
		            // Load a mobile JS file
		            loadJS('../import/js/jquery-1.8.3.min.js');
		            loadJS('../import/js/jquery.menu0d2a.js\?ver=161020');
		            loadJS('../import/js/common0d2a.js?ver=161020');
		            loadJS('../import/js/wrest0d2a.js?ver=161020');
		            loadJS('../import/js/jquery.easing.1.3.js');
		            loadJS('../import/js/jquery.bxslider.min.js');
		            loadJS('../import/js/jquery.fancybox.js');
		            loadJS('../import/js/com.js');
		            loadJS('../import/js/holder.js');
		        }
		    }).listen();
		
		</script>
		
		<!-- <script src="../import/js/jquery-1.8.3.min.js"></script>
		<script src="../import/js/jquery.menu0d2a.js?ver=161020"></script>
		<script src="../import/js/common0d2a.js?ver=161020"></script>
		<script src="../import/js/wrest0d2a.js?ver=161020"></script>
		
		<script type="text/javascript" src="../import/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="../import/js/jquery.bxslider.min.js"></script>
		<script type="text/javascript" src="../import/js/jquery.fancybox.js"></script>
		<script type="text/javascript" src="../import/js/com.js"></script>
		<script type="text/javascript" src="../import/js/holder.js"></script> -->
		
		
		<style type="text/css">.fancybox-margin{margin-right:26px;}</style>
        <!-- Link Swiper's CSS -->
 		<link rel="stylesheet" href="../css/swiper.min.css">
 		 
        <!-- App favicon -->
        <link rel="shortcut icon" href="../assets/images/favicon.ico">

        <!-- Lightbox css -->
        <link href="../assets/libs/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" />
        
        <!-- 한글폰트 -->
        <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
        
        <style type="text/css">
			.navbar-custom .topnav-menu .nav-link {
				color: rgba(255, 255, 255, 1);
			}
			
			.navbar-custom .dropdown.show .nav-link {
				background-color: rgba(255, 255, 255, .05);
				color: #ffd700;
			}
			
			a:hover {
				color: #ffd700;
				text-decoration: none;
			}
			
			.megamenu-list li:before {
				content: none;
			}
			.dropdown-megamenu {
			    left: 270px!important;
			    right: 130px!important;
			    background-image: none;
			}
			#sidebar-menu>ul>li>a {
			    color: white;
			}
			.metismenu li a[aria-expanded=true] {
			    color: #ffd700!important;
			}
			.nav-second-level li a, .nav-thrid-level li a {
			    color: white;
			}
			.left-side-menu {height: fit-content;
			    position: absolute;z-index: 10;
			}
			.enlarged .left-side-menu {height: fit-content;
			   
			}
			.enlarged .left-side-menu #sidebar-menu>ul ul {
			    background-color: BLACK;
			    background-color: rgba(0, 0, 0, 0.9);
			}
			.enlarged .left-side-menu #sidebar-menu>ul>li:hover>a {
			    background-color: BLACK;
			    background-color: rgba(0, 0, 0, 0.8);
			}
			.enlarged .logo-box {
			    text-align: center;
			}
			.text-dark {
			    color: #fff!important;
			}
			.megamenu-list li a {
			    color: rgba(255, 255, 255, 0.7);
			}
			#sidebar-menu>ul>li>a:active, #sidebar-menu>ul>li>a:focus, #sidebar-menu>ul>li>a:hover {
			    color: #ffd700;
			}
			.enlarged .left-side-menu #sidebar-menu>ul>li:hover>a {
			    color: #ffd700;
			}
			.enlarged .left-side-menu #sidebar-menu>ul>li:hover>ul a:hover {
			    color: #ffd700;
			}
			.nav-second-level li a:hover, .nav-thrid-level li a:focus, .nav-thrid-level li a:hover {
			    color: #ffd700;
			}
			.megamenu-list li a:hover {
				color: #ffd700;
			}
			#sidebar-menu>ul>li>a.active {
 			    color: #ffd700; 
			}
			.nav-second-level li>a.active, .nav-thrid-level li>a.active {
			    color: #ffd700;
			}
			.logo-box {
			    display: block;
			}
		    .swiper-container {
		      width: 100%;
		      height: 73vh;
		
		    }
		    .swiper-slide {
		      text-align: center;
		      font-size: 18px;
		      background: #fff;
		
		      /* Center slide text vertically */
		      display: -webkit-box;
		      display: -ms-flexbox;
		      display: -webkit-flex;
		      display: flex;
		      -webkit-box-pack: center;
		      -ms-flex-pack: center;
		      -webkit-justify-content: center;
		      justify-content: center;
		      -webkit-box-align: center;
		      -ms-flex-align: center;
		      -webkit-align-items: center;
		      align-items: center;
		    }
		    
 		    @media (max-width: 768px){
 		    	.mcon {
 		    		display: none;
 		    	}
 		    	#wrap{
 		    		display: none;
 		    	}
				.sidebar-enable .left-side-menu {height: fit-content;
				    display: block;
				    position: fixed;
				    height: 500px;
				}
				#pc_logo{
					display: none;
				}
				#logo_li{
				    float: none;
				    height: 0px;
				    text-align: center;
				}
				.left-side-menu{
					right: 0px;
				}
				.navbar-custom{
					padding-right: 0px;
				}
				.font-16 {
			    	font-size: 25px!important;
				}
				#top_bar{
		max-width: 150%;
	}
	
				#mobile_call{display: flow-root;
					display:flex;
				}
				.navbar-custom ul{
					float: right;
				    position: relative;
				    left: -50%;
				}
				.navbar-custom ul li{
					float: left;
				    position: relative;
				    left: 50%;
				}
				.content-page, .enlarged .content-page {
				    padding: 0 0;
				}
			}
			@media (min-width: 768px){
				.footer{
					display: none;
				}
				#footer_wrap {
				    background-color: BLACK;
				    background-color: rgba(0, 0, 0, 0.9);
				    color: white;
				}
				#footer_wrap1 {
				    display: none;
				}
				#mobile_logo{
					display: none;
				}
				.mfp-close{
					right: 200px;
					top: 60px;
				}
				
				.font-16 {
			    	font-size: 39px!important;
				}
				#mobile_call{
					display:none;
				}
				#footer_wrap .f_link li {
				    margin-right: 87px;
				}
				.left-side-menu{
					position: fixed;
				}
			}
			
			img {
				max-width: 100%;
			    height: auto;
		    }
		    .s_page .s_title .inner {
			    width: 1260px;
			    height: 190px;
			    display: table-cell;
			    vertical-align: middle;
			}
			.s_page .s_title {
			    height: 190px;
			    font-size: 30px;
			    letter-spacing: -1px;
			}
			.s_page .s_title .cap {
			    margin-top: 5px;
			    font-size: 20px;
			    letter-spacing: 0px;
			    line-height: 1.4;
			}
			
			/* 추가된 gall css */
			.gal-box {
			  position: relative;
			  display: block;
			}
			.gal-box img {
			  width: 100%;
			  height: 100%;
			}
			.gal-box:hover .overlay {
			  display: block;
			}
			.gal-box .overlay {
			  position: absolute;
			  background: rgba(0, 0, 0, 0.4);
			  color: #fff;
			  width: 100%;
			  height: 100%;
			  top: 0;
			  left: 0;
			  display: none;
			  z-index: 1;
			}
			.gal-box .overlay .close {
			  position: absolute;
			  cursor: pointer;
			  font-size: 1.8rem;
			  top: 5px;
			  right: 8px;
			}
			.gal-box .overlay .gall-info {
				background-color: white;
		    }
		    .cropping {
	max-height: 237px;
	max-width: 100%;
	overflow: hidden;
}

.cropping img {
	max-height: initial;
}
#wrapper{
				border-left-width: 0px;
    			border-right-width: 0px;
			}
			.content-page {
			    margin-left: 0px!important;
			    padding-left: 0px;
    			padding-right: 0px;
			}
			.content-page {margin-left: 0px !important;padding-left: 0px;padding-right: 0px;
			    
			}
			.dropdown-menu {
				-webkit-animation-name : DropDownSlide;
				-ms-animation-name : none;
			}
			.slimscroll-menu{
			height: fit-content!important;
		}
		.enlarged .left-side-menu #sidebar-menu>ul>li#contact{display:none;}@media (min-width: 768px) and (max-width: 1535px){.navbar-custom{width:160%;}}</style>
		
		<%
			String user_right = "0";
			try{
				user_right = (String) session.getAttribute("user_right");user_right.length();
			}catch(Exception e) {
				user_right = "0";
			}
			
			String select = "";
			try{
				select = (String) request.getAttribute("select");
				
				if(select.equals(null) || select.length() < 0){
					select = "";
				}
			}catch(Exception e){
				select = "";
			}
			
			List<ImgDTO> bList = (List<ImgDTO>)request.getAttribute("bList");
		%>
		<script type="text/javascript">
									var select = "${select}";
									var finish = 0;
									
									function select_click() {
										if(select=="univ_events"){
											document.getElementById("univ_events").click();
											finish = 1;
										}else if(select=="local_events"){
											document.getElementById("local_events").click();
											finish = 1;
										}else if(select=="co_events"){
											document.getElementById("co_events").click();
											finish = 1;
										}else if(select=="concert"){
											document.getElementById("concert").click();
											finish = 1;
										}else if(select=="broadcast"){
											document.getElementById("broadcast").click();
											finish = 1;
										}else{
											document.getElementById("all").click();
											finish = 1;
										}
										if(finish == 0){
											select_click();
										}
									};
									
									setTimeout("select_click()", 500);
									
									$(document).ready(function() { if(select=="univ_events"){
										document.getElementById("univ_events").click();
										select_click();
									}else if(select=="local_events"){
										document.getElementById("local_events").click();
										select_click();
									}else if(select=="co_events"){
										document.getElementById("co_events").click();
										select_click();
									}else if(select=="concert"){
										document.getElementById("concert").click();
										select_click();
									}else if(select=="broadcast"){
										document.getElementById("broadcast").click();
										select_click();
									}else{
										document.getElementById("all").click();
										select_click();
									}
									setTimeout("select_click()", 500);
								});
									
									window.onload = function() {
										if(select=="univ_events"){
											document.getElementById("univ_events").click();
											select_click();
										}else if(select=="local_events"){
											document.getElementById("local_events").click();
											select_click();
										}else if(select=="co_events"){
											document.getElementById("co_events").click();
											select_click();
										}else if(select=="concert"){
											document.getElementById("concert").click();
											select_click();
										}else if(select=="broadcast"){
											document.getElementById("broadcast").click();
											select_click();
										}else{
											document.getElementById("all").click();
											select_click();
										}
										setTimeout("select_click()", 500);
									};
									
									function ChangeTitle(num) {
										if(num == 1){
											document.getElementById("top_bar").src = "../img/tbc/bar_univ.jpg";
											
										}else if(num == 2){
											document.getElementById("top_bar").src = "../img/tbc/bar_local.jpg";
										}else if(num == 3){
											document.getElementById("top_bar").src = "../img/tbc/bar_co.jpg";
										}else if(num == 4){
											document.getElementById("top_bar").src = "../img/tbc/bar_concert.jpg";
										}else if(num == 5){
											document.getElementById("top_bar").src = "../img/tbc/bar_broad.jpg";
										}else{
											document.getElementById("top_bar").src = "../img/tbc/bar_portfolio.jpg";
										}
									};
									</script>
		<%
						if(user_right.equals("1")){
					%>
				<!-- ReCaptcha -->
<script
	src='https://www.google.com/recaptcha/api.js?render=6Ldbxc4UAAAAADdY7H1Ri0953oEb20yCOZkP2GZ0'></script>
<%} %>
</head>

    <body class="enlarged" data-keep-enlarged="true">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Topbar Start -->
		<div class="navbar-custom"
			style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">

			<!-- LOGO -->
			<div class="logo-box" id="pc_logo"
				style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9); width: 70px; text-align: center;">
				<button class="button-menu-mobile waves-effect waves-light">
					<i class="fe-menu"></i>
				</button>
			</div>
			<div class="logo-box" id="mobile_call"
				style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9); width: 70px; text-align: center;">
				<button class="waves-effect waves-light" onclick="location.href='tel:032-710-6244'"
					style="border: none; color: #fff; display: inline-block; height: 70px; line-height: 70px; width: 60px; background-color: transparent; font-size: 24px; cursor: pointer;">
					<i class="fe-phone"></i>
				</button>
			</div>

			<ul class="list-unstyled topnav-menu topnav-menu-left m-0">
				<li id="logo_li"><a href="./main.do"><img alt="TBC로고"
						src="../img/tbc_logo.png" style="width: 130px;"></a></li>

				<li id="dropdown_li1"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 120.82px; margin-left: 82px;"><a id="dropdown_a1"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(1)"
					onmouseout="javascript:DropdownShowRemove(1)"> <span id="MeName1" style="font-size: large;"> Company </span><i
						class="mdi mdi-chevron-down"></i>
				</a>
					<div id="dropdown_div" class="dropdown-menu dropdown-megamenu"
						onmouseover="javascript:DropdownShowAdd(0)"
						onmouseout="javascript:DropdownShowRemove(0)"
						style="width: 896px; background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">
						<div class="row" style="width: inherit;">
							<div class="col-sm-11">

								<div class="row" style="width: fit-content;">

									<div class="col-md-1.5" style="text-align: center; width: 120.82px;">
										<h5 class="text-dark mt-0">기업</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./company_info.do">회사소개</a></li>
											<li><a href="./organ_chart.do">조직도</a></li>
											<!-- <li> <a href="./member.do">구성원소개</a></li> -->
											<li><a href="./location.do">회사위치</a></li>
											<li><a href="./story.do">일상스토리</a></li>
											<li><a href="./notice.do">공지사항</a></li>
										</ul>
									</div>

									<div class="col-md-1.5" style="text-align: center; width: 119.63px;">
										<h5 class="text-dark mt-0">비즈니스</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./business_areas.do">행사 기획</a></li>
											
											
										</ul>
									</div>
									<div class="col-md-1.5" style="text-align: center; width: 158.57px;">
										<h5 class="text-dark mt-0">무대 시스템</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="../TBS/system.do?select=stage" target="_blank">무대</a></li>
											<li><a href="../TBS/system.do?select=sound" target="_blank">음향</a></li>
											<li><a href="../TBS/system.do?select=light" target="_blank">조명</a></li>
											<li><a href="../TBS/system.do?select=led" target="_blank">LED</a></li>
											<li><a href="../TBS/system.do?select=repeater" target="_blank">중계</a></li>
											<li><a href="../TBS/system.do?select=effect" target="_blank">특수효과</a></li>
											<li><a href="../TBS/system.do?select=structure" target="_blank">구조물</a></li>
											<li><a href="../TBS/system.do?select=exhibition" target="_blank">전시</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="text-align: center; width: 137.61px;">
										<h5 class="text-dark mt-0">포트폴리오</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./portfolio.do?select=co_events">기업 행사</a></li>
											<li><a href="./portfolio.do?select=univ_events">대학 행사</a></li>
											<li><a href="./portfolio.do?select=local_events">지역 축제</a></li>
											<li><a href="./portfolio.do?select=concert">콘서트</a></li>
											<li><a href="./portfolio.do?select=broadcast">방송</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="text-align: center; width: 150.82px;">
										<h5 class="text-dark mt-0">매니지먼트</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./lineup.do?select=singer">가수</a></li>
											<li><a href="./lineup.do?select=mc">사회자</a></li>
											<li><a href="./lineup.do?select=performance">퍼포먼스</a></li><li><a href="./lineup.do?select=teller">강연자</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="text-align: center; width: 133.62px;">
										<h5 class="text-dark mt-0">문의하기</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./estimate.do">견적문의</a></li>
											<li><a href="./inquiry.do">섭외문의</a></li>
											<li><a href="./coalition.do">제휴문의</a></li>
										</ul>
									</div>

								</div>

							</div>
						</div>
					</div></li>
				<li id="dropdown_li2"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 119.63px;"><a id="dropdown_a2"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(2)"
					onmouseout="javascript:DropdownShowRemove(2)"> <span id="MeName2" style="font-size: large;">Business</span> <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li3"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 158.57px;"><a id="dropdown_a3"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="../TBS/main.do" target="_blank" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(3)"
					onmouseout="javascript:DropdownShowRemove(3)"> <span id="MeName3" style="font-size: large;">Stage System</span> <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li4"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 137.61px;"><a id="dropdown_a4"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="./portfolio.do" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(4)"
					onmouseout="javascript:DropdownShowRemove(4)"> <span id="MeName4" style="font-size: large;">Portfolio</span> <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li5"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 150.82px;"><a id="dropdown_a5"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="./lineup.do" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(5)"
					onmouseout="javascript:DropdownShowRemove(5)"> <span id="MeName5" style="font-size: large;">Management</span> <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li6"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 133.62px;"><a id="dropdown_a6"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(6)"
					onmouseout="javascript:DropdownShowRemove(6)"> <span id="MeName6" style="font-size: large;">Contact us</span> <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
			</ul>
			<!-- LOGO -->
			<div class="logo-box" id="mobile_logo"
				style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9); width: 70px; text-align: center; float: right;">
				<button class="button-menu-mobile waves-effect waves-light">
					<i class="fe-menu"></i>
				</button>
			</div>
		</div>
		<!-- end Topbar -->
		<script type="text/javascript">
							 function Changename1(num) {
								 	if(num == 1){
								 		document.getElementById("MeName"+ num).innerHTML = "기업";
								 	}else if(num == 2){
								 		document.getElementById("MeName"+ num).innerHTML = "비즈니스";
								 	}else if(num == 3){
								 		document.getElementById("MeName"+ num).innerHTML = "무대 시스템";
								 	}else if(num == 4){
								 		document.getElementById("MeName"+ num).innerHTML = "포트폴리오";
								 	}else if(num == 5){
								 		document.getElementById("MeName"+ num).innerHTML = "매니지먼트";
								 	}else if(num == 6){
								 		document.getElementById("MeName"+ num).innerHTML = "문의하기";
								 	}
						            
								};
								function ChangenameOrigin1(num) {
									if(num == 1){
								 		document.getElementById("MeName"+ num).innerHTML = "Company";
								 	}else if(num == 2){
								 		document.getElementById("MeName"+ num).innerHTML = "Business";
								 	}else if(num == 3){
								 		document.getElementById("MeName"+ num).innerHTML = "Stage System";
								 	}else if(num == 4){
								 		document.getElementById("MeName"+ num).innerHTML = "Portfolio";
								 	}else if(num == 5){
								 		document.getElementById("MeName"+ num).innerHTML = "Management";
								 	}else if(num == 6){
								 		document.getElementById("MeName"+ num).innerHTML = "Contact us";
								 	}
								};
							</script>

            <!-- ========== Left Sidebar Start ========== -->
		<div class="left-side-menu"
			style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">

			<div class="slimscroll-menu">

				<!--- Sidemenu -->
				<div id="sidebar-menu">

					<ul class="metismenu" id="side-menu">
					<%
						if(user_right.equals("1")){
					%>
						<li><a href="javascript:void(0);"
							class="nav-link right-bar-toggle waves-effect waves-light"> <i
								class="fe-settings noti-icon"></i><span>관리자
							</span> <span class="menu-arrow">
						</a>
						<ul class="nav-second-level" aria-expanded="false">
								<li><a href="javascript:void(0);"
							class="nav-link right-bar-toggle waves-effect waves-light">페이지 수정</a></li>
								<li><a href="../admin/add.do">관리자추가</a></li>
							</ul>
						</li>
					<% } %>
						<li class="menu-title">메뉴</li>

						<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(1)" onclick="javascript:Changename(1)"
					onmouseout="javascript:ChangenameOrigin(1)">
								<i class="remixicon-briefcase-5-line"></i> <span id="MenuName1"> Company
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="./company_info.do">회사소개</a></li>
								<li><a href="./organ_chart.do">조직도</a></li>
								<!-- <li> <a href="./member.do">구성원소개</a></li> -->
								<li><a href="./location.do">회사위치</a></li>
								<li><a href="./story.do">일상스토리</a></li>
								<li><a href="./notice.do">공지사항</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(2)" onclick="javascript:Changename(2)"
					onmouseout="javascript:ChangenameOrigin(2)">
								<i class="remixicon-flag-line"></i> <span id="MenuName2"> Business </span> <span
								class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="./business_areas.do">행사 기획</a></li>
								
									
							</ul></li>
							
						<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(6)" onclick="javascript:Changename(6)"
					onmouseout="javascript:ChangenameOrigin(6)">
										<i class="remixicon-flag-line"></i> <span id="MenuName6"> Stage System </span> <span
								class="menu-arrow"></span>
								</a>
									<ul class="nav-second-level" aria-expanded="false">
										<li><a href="../TBS/system.do?select=stage" target="_blank">무대</a></li>
										<li><a href="../TBS/system.do?select=sound" target="_blank">음향</a></li>
										<li><a href="../TBS/system.do?select=light" target="_blank">조명</a></li>
										<li><a href="../TBS/system.do?select=led" target="_blank">LED</a></li>
										<li><a href="../TBS/system.do?select=repeater" target="_blank">중계</a></li>
										<li><a href="../TBS/system.do?select=effect" target="_blank">특수효과</a></li>
										<li><a href="../TBS/system.do?select=structure" target="_blank">구조물</a></li>
										<li><a href="../TBS/system.do?select=exhibition" target="_blank">전시</a></li>
									</ul></li>

								<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(3)" onclick="javascript:Changename(3)"
					onmouseout="javascript:ChangenameOrigin(3)">
										<i class="remixicon-slideshow-line"></i> <span id="MenuName3"> Portfolio </span>
										<span class="menu-arrow"></span>
								</a>
									<ul class="nav-second-level" aria-expanded="false">
										<li><a href="./portfolio.do?select=co_events">기업 행사</a></li>
										<li><a href="./portfolio.do?select=univ_events">대학 행사</a></li>
										<li><a href="./portfolio.do?select=local_events">지역 축제</a></li>
										<li><a href="./portfolio.do?select=concert">콘서트</a></li>
										<li><a href="./portfolio.do?select=broadcast">방송</a></li>
									</ul></li>


								<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(4)" onclick="javascript:Changename(4)"
					onmouseout="javascript:ChangenameOrigin(4)">
										<i class="remixicon-tv-line"></i> <span id="MenuName4"> Performance </span> <span
										class="menu-arrow"></span>
								</a>
									<ul class="nav-second-level" aria-expanded="false">
										<li><a href="./lineup.do?select=singer">가수</a></li>
										<li><a href="./lineup.do?select=mc">사회자</a></li>
										<li><a href="./lineup.do?select=performance">퍼포먼스</a></li><li><a href="./lineup.do?select=teller">강연자</a></li>
									</ul></li>

								<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(5)" onclick="javascript:Changename(5)"
					onmouseout="javascript:ChangenameOrigin(5)">
										<i class="remixicon-customer-service-2-line"></i> <span id="MenuName5">
											Contact us </span> <span class="menu-arrow"></span>
								</a>
									<ul class="nav-second-level" aria-expanded="false">
										<li><a href="./estimate.do">견적문의</a></li>
										<li><a href="./inquiry.do">섭외문의</a></li>
										<li><a href="./coalition.do">제휴문의</a></li>
									</ul></li>
							<li id="contact" ><h4 style="font-size:18.5px; color: ghostwhite;margin-left: 20px;">문의하기<br>TEL 032-710-6244<br>thebigc@thebigc.kr</h4></li></ul></div>
							<script type="text/javascript">
							 function Changename(num) {
								 	if(num == 1){
								 		document.getElementById("MenuName"+ num).innerHTML = "기업";
								 	}else if(num == 2){
								 		document.getElementById("MenuName"+ num).innerHTML = "비즈니스";
								 	}else if(num == 3){
								 		document.getElementById("MenuName"+ num).innerHTML = "포트폴리오";
								 	}else if(num == 4){
								 		document.getElementById("MenuName"+ num).innerHTML = "매니지먼트";
								 	}else if(num == 5){
								 		document.getElementById("MenuName"+ num).innerHTML = "문의하기";
								 	}else if(num == 6){
								 		document.getElementById("MenuName"+ num).innerHTML = "무대 시스템";
								 	}
						            
								};
								function ChangenameOrigin(num) {
									if(num == 1){
								 		document.getElementById("MenuName"+ num).innerHTML = "Company";
								 	}else if(num == 2){
								 		document.getElementById("MenuName"+ num).innerHTML = "Business";
								 	}else if(num == 3){
								 		document.getElementById("MenuName"+ num).innerHTML = "Portfolio";
								 	}else if(num == 4){
								 		document.getElementById("MenuName"+ num).innerHTML = "Management";
								 	}else if(num == 5){
								 		document.getElementById("MenuName"+ num).innerHTML = "Contact us";
								 	}else if(num == 6){
								 		document.getElementById("MenuName"+ num).innerHTML = "Stage System";
								 	}
								};
							</script>
				<!-- End Sidebar -->

				<div class="clearfix"></div>

			</div>
			<!-- Sidebar -left -->

		</div>
		<!-- Left Sidebar End -->
 
            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page" style="margin-left: 0px !important;">
                <div class="content">

				<!-- Start Content-->
				<div class="container-fluid">
				<div class="row" style="margin-bottom: 25px;">
						<div class="col-12" style="padding-left: 0px;">
							<img id="top_bar" alt=""
								src="../img/tbc/bar_portfolio.jpg">
						</div>
					</div>
					
					<!-- Filter -->
					<div class="row">
						<div class="col-12">
							<div class="text-center filter-menu">
									<a href="javascript: ChangeTitle(0);" class="filter-menu-item" id="all"
									data-rel="all">All</a>
									
									<a href="javascript: ChangeTitle(3);"
									class="filter-menu-item" id="co_events" data-rel="co_events">기업 행사</a>
									<a href="javascript: ChangeTitle(1);"
									class="filter-menu-item" id="univ_events" data-rel="univ_events">대학 행사</a>
									<a href="javascript: ChangeTitle(2);"
									class="filter-menu-item" id="local_events" data-rel="local_events">지역 축제</a>
									<a href="javascript: ChangeTitle(4);"
									class="filter-menu-item" id="concert" data-rel="concert">콘서트</a>
									<a href="javascript: ChangeTitle(5);"
									class="filter-menu-item" id="broadcast" data-rel="broadcast">방송</a>
									
							</div>
						</div>
					</div>
					<!-- end row-->

					<div class="row filterable-content">
					<!-- 메뉴 -->
						<div class="col-12 filter-item univ_events ot mt univ_festival univ_ath">
							<div class="text-center filter-menu">
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="ot/mt">OT / MT</a>
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="univ_festival">축제</a>
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="univ_ath">체육대회</a>
									
							</div>
						</div>
						<div class="col-12 filter-item co_events co_exhibit co_award co_semi co_workshop co_ath">
							<div class="text-center filter-menu">
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="co_exhibit">전시</a>
								 	<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="co_award">시상식</a>
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="co_semi">세미나</a>
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="co_workshop">워크샵</a>
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="co_ath">체육대회</a>
							</div>
						</div>
						<div class="col-12 filter-item local_events">
							<div class="text-center filter-menu">
									<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="local_events">ALL</a>
								 	<a href="javascript: void(0);"
									class="filter-menu-item" data-rel="youth">청소년행사</a>
									
							</div>
						</div>
						
						<c:forEach var="row" items="${bList}">
						<div class="col-sm-6 col-xl-3 filter-item ${row.tag}">
							<div class="gal-box">
									<div class="cropping">

										<img src="${row.img}" class="img-fluid" alt="work-thumbnail">

									</div>


									<div class="overlay">
								<div>
										<a href="#" onclick="javascript:getPhoto('${row.content}','${row.title}');"> <img
											src="../img/add_btn.png" class="img-fluid"
											alt="work-thumbnail" style="width: 10%;height: 10%;margin-left: 46%;margin-top: 22%;margin-bottom: 9%;">
										</a>	
									</div>

										<div class="gall-info" style="height: 15%;padding: 0px;background-color: unset;">
											<h4 class="font-16 mt-0" style="font-family: 'Nanum Pen Script', cursive; font-size: 39px!important; color: white;">${row.title}
											<% if(user_right.equals("1")) { %>
											<button type="button" class="btn btn-danger"
												onclick="delete_confirm(${row.img_no});">삭제</button><button type="button" class="btn btn-success waves-effect waves-light" data-toggle="modal" data-target="#con-close-modal${row.img_no}">수정</button><%} %></h4>
												<% if(user_right.equals("1")) { %>
											<form action="../ImgdeleteBoard.do" id="delete_frm${row.img_no}">
												<input type="hidden" name="board_no" value="${row.img_no}">
												<input type="hidden" name="page" value="TBCportfolio">
												<input type="hidden"
													id="g-recaptcha-response${row.img_no}" name="g-recaptcha-response">
													<input type="hidden" name="action" value="delete_captcha">
											</form>
											
											<script>
												grecaptcha.ready(function() {
													grecaptcha.execute('6Ldbxc4UAAAAADdY7H1Ri0953oEb20yCOZkP2GZ0', {
														action : 'delete_captcha'
													}).then(function(token) {
														// Verify the token on the server.
														document.getElementById('g-recaptcha-response' + '<c:out value="${row.img_no}"/>').value = token;
													});
												});
											</script>
											<%} %>
											
										</div>
									</div>

								<!-- gallery info -->
								
							</div>
							<!-- end gal-box -->
							<div id="con-close-modal${row.img_no}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">게시글 수정</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                </div><form action="/updateImgBoard.do">
												<div class="modal-body p-4">
													<input type="hidden" value="TBCportfolio" name="page">
													<input type="hidden" value="${row.img_no}" name="img_no">


													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<label for="field-3" class="control-label">이미지
																	링크(구글드라이브)</label> <br> <input type="text" name="image"
																	placeholder="${row.img}" value="${row.img}" style="width: 100%;">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<label for="field-3" class="control-label">제목</label> <br> <input
																	type="text" name="title" placeholder="${row.title}" value="${row.title}" style="width: 100%;">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<label for="field-3" class="control-label">내용 이미지들 링크[반점(,)으로 구분]</label><br><textarea class="autosize" onkeydown="resize(this)"
																onkeyup="resize(this)" placeholder="내용 이미지를 적어주세요!" name="content">${row.content}</textarea>
									<script>
																function resize(
																		obj) {
																	obj.style.height = "1px";
																	obj.style.height = (12 + obj.scrollHeight)
																			+ "px";
																}
															</script>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<label for="field-3" class="control-label">등록일(6자리,200101)</label> <br>
																<div class="input-group">
																	<input type="text" class="form-control"
																		data-provide="datepicker" data-date-autoclose="true"
																		name="reg_dt" placeholder="${row.reg_dt}" value="${row.reg_dt}">
																	<div class="input-group-append">
																		<span class="input-group-text"><i
																			class="ti-calendar"></i></span>
																	</div>
																</div>
																<!-- input-group -->
															</div>
														</div>
													</div>


												</div>
												<div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">닫기</button>
                                                    <button type="submit" class="btn btn-info waves-effect waves-light">저장하기</button>
                                                </div></form>
                                            </div>
                                        </div>
                                    </div><!-- /.modal -->
						</div>
						<!-- end col -->
						</c:forEach>
					</div>
					<!-- end row -->
					<a id="img_detail_button" data-toggle="modal" data-target="#exampleModalScrollable"></a>
					 <!-- Long Content Scroll Modal -->
                                    <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog"
                                        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable modal-full" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="exampleModalScrollableTitle"></h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
								<div class="modal-body" 
									style="text-align: center;">
									<!-- Swiper -->
									<div class="swiper-container">
										<div class="swiper-wrapper" id="img_modal">
											<div class="swiper-slide">로딩중입니다</div>
										</div>
										<!-- Add Pagination -->
										<div class="swiper-pagination"></div>
										<!-- Add Arrows -->
										<div class="swiper-button-next"></div>
										<div class="swiper-button-prev"></div>
									</div>

									<!-- Swiper JS -->
									<script src="../js/swiper.min.js"></script>

									<!-- Initialize Swiper -->
									<script>
								    var swiper = new Swiper('.swiper-container', {
								      slidesPerView: 1,
								      spaceBetween: 30,
								      loop: true,
								      pagination: {
								        el: '.swiper-pagination',
								        clickable: true,
								      },
								      navigation: {
								        nextEl: '.swiper-button-next',
								        prevEl: '.swiper-button-prev',
								      },
								    });
								  </script>
								</div>
								<div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
					<script type="text/javascript">
					function getPhoto(content_image,title) {
						document.getElementById('img_detail_button').click();
						var content_image = content_image + "";
						var title = title;
						var img_modal = document.getElementById('img_modal').innerHTML
						document.getElementById('exampleModalScrollableTitle').innerHTML = title;
					      
					      if(content_image!= "" || content_image.length != 0){

								content_image.replace(/\s/gi, "");
					    	  var img_list = content_image.split(',');
						      for ( var i in img_list ) {
						    	  if(i == 0){
						    		  document.getElementById('img_modal').innerHTML = "<div class='swiper-slide'><img alt='" + title + "' src='" + img_list[i] + "' style='max-height:73vh;height:auto;'></div>";
						    	  }else{
						    		  document.getElementById('img_modal').innerHTML += "<div class='swiper-slide'><br/><img alt='" + title + "' src='" + img_list[i] + "' style='max-height:73vh;height:auto;'></div>";
						    	  }
						    	  
						      }
						      
							}else{
								document.getElementById('img_modal').innerHTML = "<div class='swiper-slide'>업로드된 이미지가 없습니다.</div>";
							}
						
					      var swiper = new Swiper('.swiper-container', {
						      slidesPerView: 1,
						      spaceBetween: 30,
						      loop: true,
						      pagination: {
						        el: '.swiper-pagination',
						        clickable: true,
						      },
						      navigation: {
						        nextEl: '.swiper-button-next',
						        prevEl: '.swiper-button-prev',
						      },
						    })
					}
					</script>
					
					<div class="row">
						<div class="col-12" style="padding-left: 0px; padding-right: 0px;">
							<div id="footer_wrap">
							<div class="wrap" id="wrap"
								style="margin-left: 30px; margin-right: 30px; width: 1350px;">
								<div class="f_l" style="width: 340px;">


									<address style="width: 339px;">
										주식회사 The Big Corporation 이성호 대표 <br /> 인천광역시 서구 백범로910번길 43,
										3동 103호<br /> TEL 032-710-6244<span></span>FAX 032-710-6245 <br />
										thebigc@thebigc.kr <br /> 사업자등록번호 : 218-81-73160 <br /> <br />
										copyright (c) TBC. all rights reserved <a href="./main.do"><img alt=""
											src="../img/tbc.png" style="width: 235px;"></a>
									</address>
								</div>
								<div class="f_r">
									<div class="f_link">
										<ul class="inline">
											<li class=""><a href="./company_info.do">기업</a>
												<dl>
													<dd class=" ">
														<a href="./company_info.do">회사소개</a>
													</dd>
													<dd class=" ">
														<a href="./organ_chart.do">조직도</a>
													</dd>
													<dd class=" ">
														<!-- <a href="./member.do">구성원소개</a> -->
													</dd>
													<dd class=" ">
														<a href="./location.do">회사위치</a>
													</dd>
													<dd class=" ">
														<a href="./story.do">일상스토리</a>
													</dd>
													<dd class=" ">
														<a href="./notice.do">공지사항</a>
													</dd>
												</dl></li>
											<li class=""><a href="./business_areas.do">비즈니스</a>
												<dl>
													<dd class=" ">
														<a href="./business_areas.do">행사 기획</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/main.do" target="_blank">시스템정보</a>
													</dd>
													<dd class=" ">
														<a href="./talent_sharing.do">재능나눔</a>
													</dd>
												</dl></li>
											<li class="" style="margin-right: 0px;"><a
												href="../TBS/system.do" target="_blank">무대</a>
												<dl>

													<dd class=" ">
														<a href="../TBS/system.do?select=stage" target="_blank">무대</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/system.do?select=light" target="_blank">조명</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/system.do?select=repeater" target="_blank">중계</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/system.do?select=structure"
															target="_blank">구조물</a>
													</dd>

												</dl></li>
											<li class=""><a href="./portfolio.do?select=univ_events"
												style="height: 26.4px;">시스템</a>
												<dl style="margin-left: 17px;">

													<dd class=" ">
														<a href="../TBS/system.do?select=sound" target="_blank">음향</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/system.do?select=led" target="_blank">LED</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/system.do?select=effect" target="_blank">특수효과</a>
													</dd>
													<dd class=" ">
														<a href="../TBS/system.do?select=exhibition"
															target="_blank">전시</a>
													</dd>

												</dl></li>
											<li class=""><a href="./portfolio.do?select=univ_events">포트폴리오</a>
												<dl>
													<dd class=" ">
														<a href="./portfolio.do?select=co_events">기업 행사</a>
													</dd>
													<dd class=" ">
														<a href="./portfolio.do?select=univ_events">대학 행사</a>
													</dd>
													<dd class=" ">
														<a href="./portfolio.do?select=local_events">지역 축제</a>
													</dd>
													<dd class=" ">
														<a href="./portfolio.do?select=concert">콘서트</a>
													</dd>
													<dd class=" ">
														<a href="./portfolio.do?select=broadcast">방송</a>
													</dd>

												</dl></li>

											<li class=""><a href="./inquiry.do">매니지먼트</a>
												<dl>

													<dd class=" ">
														<a href="./lineup.do?select=singer">가수</a>
													</dd>
													<dd class=" ">
														<a href="./lineup.do?select=mc">사회자</a>
													</dd>
													<dd class=" ">
														<a href="./lineup.do?select=performance">퍼포먼스</a>
													</dd>
													<dd class=" ">
															<a href="./lineup.do?select=teller">강연자</a>
														</dd>
												</dl></li>
											<li class=""><a href="./estimate.do">문의하기</a>
												<dl>
													<dd class=" ">
														<a href="./estimate.do">견적문의</a>
													</dd>
													<dd class=" ">
														<a href="./inquiry.do">섭외 문의</a>
													</dd>
													<dd class=" ">
														<a href="coalition.do">제휴문의</a>
													</dd>

												</dl></li>

											
													
										</ul>
									</div>

								</div>
							</div>


							<script type="text/javascript">window.onload = function() {var para = getCookie("DesktopMode");if(para == "true"){document.getElementById("turn_mobile").style.display= "block";}else{document.getElementById("turn_mobile").style.display= "none";}}</script><button onclick="javascript:desktopMode();" id="turn_mobile"style="max-width: 100%; height: 200px; width: 1920px;font-size: xx-large;display:none;">모바일 버전으로</button><div class="row" id="footer_wrap1" style="text-align: center; margin-top:100px"><div class="col-12	"><button onclick="desktopMode()" id="turn_mobile"style="max-width: 100%; height: 56px; width: 441px;">PC 버전으로</button></div>
									<div class="col-12">copyright (c) TBC. all rights
										reserved</div>
									<div class="col-12">
										<div class="text-md-right footer-links d-none d-sm-block">
											<a href="./company_info.do">About Us</a> <a
												href="./estimate.do">Contact Us</a>
										</div>
									</div>
									<div class="col-12">주식회사 The Big Corporation 이성호 대표</div>
									<div class="col-12">인천광역시 서구 백범로910번길 43, 3동 103호</div>
									<div class="col-12">032-710-6244</div>
									<div class="col-12">FAX 032-710-6245</div>
									<div class="col-12">thebigc@thebigc.kr</div>

									<div class="col-12">사업자등록번호 : 218-81-73160</div>
									
								</div>
							</div>
						</div>
					</div>
					<!-- end Footer -->

				</div>
				<!-- container -->

                </div> <!-- content -->

               

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <script type="text/javascript">
        function DropdownShowAdd(num) {
        	if(num == 0){
        		document.getElementById("dropdown_div").classList.add("show");
        	}else{
        		document.getElementById("dropdown_li"+ num).classList.add("show");
            	document.getElementById("dropdown_a" + num).classList.add("show");
            	document.getElementById("dropdown_div").classList.add("show");
        	}
        	
		};
		function DropdownShowRemove(num) {
			if(num == 0){
				document.getElementById("dropdown_div").classList.remove("show");
			}else{
				document.getElementById("dropdown_li" + num).classList.remove("show");
	        	document.getElementById("dropdown_a" + num).classList.remove("show");
	        	document.getElementById("dropdown_div").classList.remove("show");
			}
		};
        </script>
        <% if(user_right.equals("1")) { %>
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="fe-x noti-icon"></i>
                </a>
                <h4 class="m-0 text-white">Settings</h4>
            </div>
            <div class="slimscroll-menu" style="height: 800px;">
                

                <ul class="nav nav-pills bg-light nav-justified">
                    <li class="nav-item">
                        <a href="#tab1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0 active">
                            탭1
                        </a>
                    </li>
                    
                </ul>
                <div class="tab-content pl-3 pr-3">
                    <div class="tab-pane show active" id="tab1">
                    <!-- 탭1 시작 -->
                       <div>
                           <div class="inbox-widget" style="height: 600px;">
                                <h5 class="mt-0">게시글 등록</h5>
                                <div class="inbox-item" style="height: 600px;">
								<form action="/ImgBoardProc.do">
									<input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
                                    <input type="hidden" name="action" value="board_captcha">
                                    
									<input type="hidden" value="TBCportfolio" name="page"> 분류<br>
									<select name="tag1" id="tag1" onchange="chageSelect()">
										<option value="co_events">기업 행사</option>
										<option value="univ_events">대학 행사</option>
										<option value="local_events">지역 축제</option>
										<option value="concert">콘서트</option>
										<option value="broadcast">방송</option>
									</select> <select name="univ_eventstag" id="univ_eventstag"
										style="display: block;">
										<option value="ot/mt">OT/MT</option>
										<option value="univ_festival">축제</option>
										<option value="univ_ath">체육대회</option>
									</select> <select name="co_eventstag" id="co_eventstag"
										style="display: none;">
										<option value="co_exhibit">전시</option>
										<option value="co_award">시상식</option>
										<option value="co_semi">세미나</option>
										<option value="co_workshop">워크샵</option>
										<option value="co_ath">체육대회</option>
									</select><select name="local_eventsstag" id="local_eventsstag"
										style="display: block;">
										<option value="local_events">ALL</option>
										<option value="youth">청소년축제</option>
									</select> <br> 이미지 링크(구글드라이브)<br>
									<input type="text" name="image"><br> 제목 <br>
									<input type="text" name="title"><br> 내용 이미지들 링크[반점(,)으로 구분] <br><textarea class="autosize" onkeydown="resize(this)"
																onkeyup="resize(this)" placeholder="내용 이미지를 적어주세요!" name="content"></textarea>
									<script>
																function resize(
																		obj) {
																	obj.style.height = "1px";
																	obj.style.height = (12 + obj.scrollHeight)
																			+ "px";
																}
															</script>
									등록일(6자리, 200101)<br>
									<div class="input-group">
										<input type="text" class="form-control"
											data-provide="datepicker" data-date-autoclose="true" name="reg_dt">
										<div class="input-group-append">
											<span class="input-group-text"><i class="ti-calendar"></i></span>
										</div>
									</div>
									<!-- input-group -->
									<button type="submit">전송</button>
								</form>
								<script type="text/javascript">
								function chageSelect() {
									var selection = document.getElementById("tag1")
									var value = selection.options[selection.selectedIndex].value;
									if(value == 'univ_events'){
										document.getElementById(value + 'tag').style.display = 'block';
										
										document.getElementById('co_eventstag').style.display = 'none';
									}else if(value == 'co_events'){
										document.getElementById(value + 'tag').style.display = 'block';
										
										document.getElementById('univ_eventstag').style.display = 'none';
									}else if(value == 'local_events' || value == 'concert' || value == 'broadcast'){
										document.getElementById('univ_eventstag').style.display = 'none';
										document.getElementById('co_eventstag').style.display = 'none';
									}
									
								};
								
								function delete_confirm(num){
									 if(confirm("삭제하시겠습니까?"))
									 {
										 document.getElementById('delete_frm' + num).submit();
									  
									 }
									};
								</script>
							</div>
                                
                                <!-- <h5 class="mt-0">설정2</h5>
                                <div class="inbox-item">
                                   test2
                                </div> -->
                                
                            </div> <!-- end inbox-widget -->
                        </div> <!-- end .p-3-->
                
                    </div>
                    
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->
        <%} %>
        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>
        
        <script src="../assets/libs/apexcharts/apexcharts.min.js"></script>
        <script src="../assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
        <script src="../assets/libs/jquery-vectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="../assets/libs/jquery-vectormap/jquery-jvectormap-world-mill-en.js"></script>
		
		<!-- Vendor js -->
        <script src="../assets/js/vendor.min.js"></script>

        <!-- Magnific Popup-->
        <script src="../assets/libs/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Gallery Init-->
        <script src="../assets/js/pages/gallery.init.js"></script>
        
        <!-- Peity chart-->
        <script src="../assets/libs/peity/jquery.peity.min.js"></script>

        <!-- init js -->
        <script src="../assets/js/pages/dashboard-2.init.js"></script>

        <!-- App js -->
        <script src="../assets/js/app.min.js"></script>
  
    </body>
</html>