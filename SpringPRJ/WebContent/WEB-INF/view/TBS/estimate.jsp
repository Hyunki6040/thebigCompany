<%@page import="poly.util.CmmUtil"%>
<%@page import="poly.dto.BoardDTO"%>
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
		<title>TBS : 더 빅 시스템</title>
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
		var g5_url       = "http://www.thebigs.kr/";
		var g5_bbs_url   = "http://www.thebigs.kr/bbs";
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
		      height: 550px;
		
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
					height:70px;
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
				.left-side-menu{
					top: 70px;
				}
				.navbar-custom{
					background-color: BLACK;
					background-color: rgba(0, 0, 0, 0.9);
				}
				.left-side-menu{
					background-color: BLACK;
					background-color: rgba(0, 0, 0, 0.9);
				}
				#top_bar {
				    max-width: 150%;
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
				.navbar-custom{
					height:100px;
				}
				#logo_li{
					margin-top: 15px;
				}
				.content-page {
					margin-left: 0px !important;
					padding-left: 0px;
					padding-right: 0px;
				}
				.enlarged .left-side-menu {
					display: none;
				}
				.wrap {
					width: fit-content;
				}
				#mobile_call{
					display:none;
				}
				.content-page {
					margin-top: 100px;
				}
				.left-side-menu{
					top: 100px;
				}
				.navbar-custom{
					background-color: BLACK;
    				background-color: rgba(0, 0, 0, 0.9);
    				position: absolute;
				}
				#pc_logo{
					background-color: BLACK;
    				background-color: rgba(0, 0, 0, 0.9);
				}
				.left-side-menu{
					background-color: BLACK;
    				background-color: rgba(0, 0, 0, 0.9);
				}
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
			textarea.autosize {
				min-height: 50px;
			}
			.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
			    color: #ffd700;
			    background-color: BLACK;
				background-color: rgba(0, 0, 0, 0.9);
			}
			.form-wizard-header .nav-item .nav-link {
			    background-color: rgba(0, 0, 0, 0.4);
			}
			.nav-pills>li>a, .nav-tabs>li>a {
			    color: white;
			}
			.form-wizard-header .nav-item .nav-link {
			    background-color: rgba(0, 0, 0, 0.4);
			}
			.form-wizard-header .nav-item .nav-link.active {
			    background-color: rgba(0, 0, 0, 0.9);
			}
			.form-wizard-header .nav-item .nav-link .number {
			    color: white;
			    background-color: rgba(0, 0, 0, 0.9);
			}
			.bg-success {
			    background-color: #ffd700!important;
			}
			#footer_wrap .f_link li{
				margin-right: 90px;
			}
			#wrapper{
				border-left-width: 0px;
    			border-right-width: 0px;
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
		
		<!-- ReCaptcha -->
<script
	src='https://www.google.com/recaptcha/api.js?render=6Ldbxc4UAAAAADdY7H1Ri0953oEb20yCOZkP2GZ0'></script>
<script>
	
	grecaptcha.ready(function() {
		grecaptcha.execute('6Ldbxc4UAAAAADdY7H1Ri0953oEb20yCOZkP2GZ0', {
			action : 'board_captcha'
		}).then(function(token) {
			// Verify the token on the server.
			document.getElementById('g-recaptcha-response').value = token;
		});
	});
</script>

		<%
			String user_right = "0";
			try{
				user_right = (String) session.getAttribute("user_right");user_right.length();
			}catch(Exception e) {
				user_right = "0";
			}
			
			List<BoardDTO> bList = (List<BoardDTO>)request.getAttribute("bList");
			String companyname = CmmUtil.nvl((String) request.getParameter("companyname"));
			String person = CmmUtil.nvl((String) request.getParameter("person"));
			String email = CmmUtil.nvl((String) request.getParameter("email"));
			String call = CmmUtil.nvl((String) request.getParameter("call"));
			String eventname = CmmUtil.nvl((String) request.getParameter("eventname"));
			String eventdate = CmmUtil.nvl((String) request.getParameter("eventdate"));
			String eventplace = CmmUtil.nvl((String) request.getParameter("eventplace"));
			String mcyn = CmmUtil.nvl((String) request.getParameter("mcyn"));
			String money = CmmUtil.nvl((String) request.getParameter("money"));
			String eventcon = CmmUtil.nvl((String) request.getParameter("eventcon"));
			if(companyname.equals(null)){companyname = "";}
			if(person.equals(null)){person = "";}
			if(email.equals(null)){email = "";}
			if(eventname.equals(null)){eventname = "";}
			if(eventdate.equals(null)){eventdate = "";}
			if(eventplace.equals(null)){eventplace = "";}
			if(mcyn.equals(null)){mcyn = "";}
			if(money.equals(null)){money = "";}
			if(eventcon.equals(null)){eventcon = "";}
			
		%>
		<c:set var="money" value="<%=money %>" />
</head>

    <body class="enlarged" data-keep-enlarged="true">

        <!-- Begin page -->
        <div id="wrapper">

		<!-- Topbar Start -->
		<div class="navbar-custom">

			<!-- LOGO -->
			<div class="logo-box" id="pc_logo"
				style="width: 70px; text-align: center;">
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
				<li id="logo_li"><a href="./main.do"><img alt="TBS로고"
						src="../img/tbs_logo.png" style="width: 130px;"></a></li>

				<li id="dropdown_li1" onmouseover="javascript:DropdownShowAdd(1)"
					onmouseout="javascript:DropdownShowRemove(1)"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 120.82px; margin-left: 82px;height:100px;"><a id="dropdown_a1" style="margin-top: 15px;"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" > <span id="MeName1" style="font-size: large;"> Company </span><i
						class="mdi mdi-chevron-down"></i>
				</a>
					<div id="dropdown_div1" class="dropdown-menu dropdown-megamenu"
						onmouseover="javascript:DropdownShowAdd(1)"
						onmouseout="javascript:DropdownShowRemove(1)"
						style="width: 120.82px; background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">
						<div class="row" style="width: inherit;">
							<div class="col-sm-11">

								<div class="row" style="width: fit-content;">

									<div class="col-md-1.5"
										style="text-align: center; width: 133.62px;">
										<h5 class="text-dark mt-0">회사</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./company_info.do">회사소개</a></li>
											<li><a href="./location.do">회사위치</a></li>
											<li><a href="./notice.do">공지사항</a></li>
										</ul>
									</div>

								</div>

							</div>
						</div>
					</div></li>
				<li id="dropdown_li6"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 119.63px;"><a id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 41px;"
					 href="./system.do?select=stage" role="button" aria-haspopup="false"
					aria-expanded="false" > 무대 <i
						class="mdi mdi-chevron-down"></i>
				</a> <a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 45px; margin-bottom: 10px;"
					 href="./system.do?select=sound" role="button" aria-haspopup="false"
					aria-expanded="false"> 음향 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li3"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 158.57px;"><a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 41px;"
					 href="./system.do?select=light" role="button" aria-haspopup="false"
					aria-expanded="false"> 조명 <i
						class="mdi mdi-chevron-down"></i>
				</a>
				<a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 45px;"
					 href="./system.do?select=led" role="button" aria-haspopup="false"
					aria-expanded="false"> LED <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li4"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 137.61px;"><a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 41px;"
					 href="./system.do?select=repeater" role="button" aria-haspopup="false"
					aria-expanded="false"> 중계 <i
						class="mdi mdi-chevron-down"></i>
				</a>
				<a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 45px;"
					 href="./system.do?select=effect" role="button" aria-haspopup="false"
					aria-expanded="false"> 특수효과 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li5"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 150.82px;"><a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 41px;"
					 href="./system.do?select=structure" role="button" aria-haspopup="false"
					aria-expanded="false"> 구조물 <i
						class="mdi mdi-chevron-down"></i>
				</a>
				<a
					id="dropdown_a"
					class="nav-link dropdown-toggle waves-effect waves-light" style="height: 45px;"
					 href="./system.do?select=exhibition" role="button" aria-haspopup="false"
					aria-expanded="false"> 전시 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li2"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 133.62px;height:100px;" onmouseover="javascript:DropdownShowAdd(2)"
					onmouseout="javascript:DropdownShowRemove(2)"><a id="dropdown_a2"
					style="margin-top: 15px;"
					class="nav-link dropdown-toggle waves-effect waves-light" href="#"
					role="button" aria-haspopup="false" aria-expanded="false" 
					> <span
						id="MeName6" style="font-size: large;">Contact us</span> <i
						class="mdi mdi-chevron-down"></i>
				</a>
					<div id="dropdown_div2" class="dropdown-menu dropdown-megamenu"
						onmouseover="javascript:DropdownShowAdd(2)"
						onmouseout="javascript:DropdownShowRemove(2)"
						style="width: 133.62px; background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);margin-left: 669px;">
						<div class="row" style="width: inherit;">
							<div class="col-sm-11">

								<div class="row" style="width: fit-content;">

									<div class="col-md-1.5"
										style="text-align: center; width: 133.62px;">
										<h5 class="text-dark mt-0">문의하기</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./estimate.do">견적문의</a></li>
											<li><a href="./coalition.do">제휴문의</a></li>

										</ul>
									</div>

								</div>

							</div>
						</div>
					</div></li>
					<li id="dropdown_li"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: fit-content;height:100px;margin-left: 4.4%;"><a id="dropdown_a"
					style="max-height:100%;padding-left: 0px;padding-right: 0px;"
					class="nav-link dropdown-toggle waves-effect waves-light" href="../TBC/main.do" target="_blank"
					role="button" aria-haspopup="false" aria-expanded="false" 
					> <img alt="" src="../img/tbs/tbs_totbc.png" style="max-width:100%;height:auto;">
				</a>
					</li>
				<li id="dropdown_li"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: fit-content;margin-left: 1.5%;">
					<img alt="" src="..//img/tbs/tbs_topcontact.png" style="max-width:100%;height:auto;">
				</li>
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
		<div class="left-side-menu">

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
								<li><a href="./location.do">회사위치</a></li>
								<li><a href="./notice.do">공지사항</a></li>
							</ul></li>

						
							
						<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(6)" onclick="javascript:Changename(6)"
					onmouseout="javascript:ChangenameOrigin(6)">
										<i class="remixicon-flag-line"></i> <span id="MenuName6"> Stage System </span> <span
								class="menu-arrow"></span>
								</a>
									<ul class="nav-second-level" aria-expanded="false">
										<li><a href="./system.do?select=stage" >무대</a></li>
										<li><a href="./system.do?select=sound" >음향</a></li>
										<li><a href="./system.do?select=light" >조명</a></li>
										<li><a href="./system.do?select=led" >LED</a></li>
										<li><a href="./system.do?select=repeater" >중계</a></li>
										<li><a href="./system.do?select=effect" >특수효과</a></li>
										<li><a href="./system.do?select=structure" >구조물</a></li>
										<li><a href="./system.do?select=exhibition" >전시</a></li>
									</ul></li>

								
								<li><a href="javascript: void(0);" class="waves-effect" onmouseover="javascript:Changename(5)" onclick="javascript:Changename(5)"
					onmouseout="javascript:ChangenameOrigin(5)">
										<i class="remixicon-customer-service-2-line"></i> <span id="MenuName5">
											Contact us </span> <span class="menu-arrow"></span>
								</a>
									<ul class="nav-second-level" aria-expanded="false">
										<li><a href="./estimate.do">견적문의</a></li>
										<li><a href="./coalition.do">제휴문의</a></li>
									</ul></li>
							<li id="contact" ><h4 style="font-size:18.5px; color: ghostwhite;margin-left: 20px;">문의하기<br>TEL 032-710-6244<br>thebigc@thebigc.kr</h4></li></ul></div>
							<script type="text/javascript">
							 function Changename(num) {
								 	if(num == 1){
								 		document.getElementById("MenuName"+ num).innerHTML = "기업";
								 	}else if(num == 5){
								 		document.getElementById("MenuName"+ num).innerHTML = "문의하기";
								 	}else if(num == 6){
								 		document.getElementById("MenuName"+ num).innerHTML = "무대 시스템";
								 	}
						            
								};
								function ChangenameOrigin(num) {
									if(num == 1){
								 		document.getElementById("MenuName"+ num).innerHTML = "Company";
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
					<div class="row">
						<div class="col-12" style="padding-left: 0px;">
							<img id="top_bar" alt=""
								src="../img/tbc/bar_estimate.jpg">
						</div>
					</div>
					<% if(user_right.equals("1")) { %>
					<div class="row">
						<div class="col-12">
							<button type="button" class="btn btn-secondary btn-rounded width-md waves-effect" id="answer_btn" onclick="seeAnswers()">답변완료 보이기</button>
							<script type="text/javascript">
								var state = 0;
								function seeAnswers() {
									if(state == 0){
										document.getElementById("answer_btn").innerHTML = '답변완료 숨기기';
										document.getElementById("answered").style.display = 'contents';
										state = 1;
									}else{
										document.getElementById("answer_btn").innerHTML = '답변완료 보이기';
										document.getElementById("answered").style.display = 'none';
										state = 0;
									}
									
								}
							</script>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card-box">
								<div class="table-responsive">
									<table class="table mb-0">
										<thead class="thead-light">
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>답변</th>
												<th>작성자</th>
												<th>작성일</th>
												<th>자세히</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="row" items="${bList}">
												
												<c:choose>
													<c:when test="${row.answer == 'y'}">
														<tr id="answered" style="display:none;">
														
															<th scope="row">${row.board_no}</th>
															<td>${row.title} <i class="mdi mdi-alpha-n-box-outline"></i><i class="mdi mdi-lock"></i></td>
															<td>
															<c:choose>
															<c:when
																test="${row.answer == 'y'}">
																답변 완료
															</c:when>
															<c:otherwise>
																			<span style="color: red;">답변 대기</span>
																		</c:otherwise>
														</c:choose>
														</td>
															<td>${row.writer}</td>
															<td>${row.reg_dt}</td>
															<td>
															<button  type="button" class="btn btn-purple waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-center">내용</button>
															</td>
															<td>
															<form action="../board/deleteBoard.do" id="delete_frm${row.board_no}">
																<input type="hidden" name="board_no" value="${row.board_no}">
																<input type="hidden" name="page" value="TBCestimate">
																<input type="hidden" id="g-recaptcha-response-delete${row.board_no}" name="g-recaptcha-response">
																<input type="hidden" name="action" value="delete_captcha">
															</form>
															<button type="button" class="btn btn-danger" onclick="delete_confirm(${row.board_no})">삭제</button></td>
															
														</tr>
													</c:when>
													
													<c:otherwise>
														<tr>
														
															<th scope="row">${row.board_no}</th>
															<td>${row.title} <i class="mdi mdi-alpha-n-box-outline"></i><i class="mdi mdi-lock"></i></td>
															<td>
															<c:choose>
															<c:when
																test="${row.answer == 'y'}">
																답변 완료
															</c:when>
															<c:otherwise>
																			<span style="color: red;">답변 대기</span>
																		</c:otherwise>
														</c:choose>
														</td>
															<td>${row.writer}</td>
															<td>${row.reg_dt}</td>
															<td>
															<button  type="button" class="btn btn-purple waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-center">내용</button>
															</td>
															<td>
															<form action="../board/deleteBoard.do" id="delete_frm${row.board_no}">
																<input type="hidden" name="board_no" value="${row.board_no}">
																<input type="hidden" name="page" value="TBCestimate">
																<input type="hidden" id="g-recaptcha-response-delete${row.board_no}" name="g-recaptcha-response">
																<input type="hidden" name="action" value="delete_captcha">
															</form>
															<button type="button" class="btn btn-danger" onclick="document.getElementById('delete_frm${row.board_no}').submit();">삭제</button></td>
															
														</tr>
														
													</c:otherwise>
												</c:choose>
												
											
											<div class="modal fade bs-example-modal-center" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="myCenterModalLabel">내용</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                </div>
                                                <div class="modal-body">
                                                    ${row.content}
                                                </div>
                                                <div class="modal-footer">
                                                	<form action="../board/updateAnswer.do" id="answer_frm">
																<input type="hidden" name="board_no" value="${row.board_no}">
																<input type="hidden" name="page" value="TBCestimate">
																<input type="hidden" id="g-recaptcha-response-update${row.board_no}" name="g-recaptcha-response">
																<input type="hidden" name="action" value="update_captcha">
															</form>
															
                                                    <button type="button" class="btn btn-primary" onclick="document.getElementById('answer_frm').submit();"">답변완료</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
												<script>
						                                    
																grecaptcha.ready(function() {
																	grecaptcha.execute('6Ldbxc4UAAAAADdY7H1Ri0953oEb20yCOZkP2GZ0', {
																		action : 'delete_captcha'
																	}).then(function(token) {
																		// Verify the token on the server.
																		document.getElementById('g-recaptcha-response-delete' + '<c:out value="${row.board_no}"/>').value = token;
																	});
																});
																grecaptcha.ready(function() {
																	grecaptcha.execute('6Ldbxc4UAAAAADdY7H1Ri0953oEb20yCOZkP2GZ0', {
																		action : 'update_captcha'
																	}).then(function(token) {
																		// Verify the token on the server.
																		document.getElementById('g-recaptcha-response-update' + '<c:out value="${row.board_no}"/>').value = token;
																	});
																});
															</script>
											</c:forEach>
											
										</tbody>
									</table>
								</div>
								<!-- end table-responsive-->

							</div>
						</div>
					</div>
					<%} %>
					<div class="row">
						<div class="col-12">
							<div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title mb-3">급한 문의에 경우 032-710-6244로 고객상담을 부탁드립니다.</h4>

                                        <form action="../board/BoardProc.do" id="frm">
                                        <input type="hidden" value="TBCestimate" name="page">
                                        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
                                        <input type="hidden" name="action" value="board_captcha">
										<div id="progressbarwizard">

                                                <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                                                    <li class="nav-item">
                                                        <a href="#account-2" data-toggle="tab" class="nav-link active">
                                                            <span class="number">1.</span>
                                                            <span class="d-none d-sm-inline">행사 정보</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            
                                                <div class="tab-content b-0 mb-0">

												<div id="bar" class="progress mb-3" style="height: 7px;">
													<div
														class="bar progress-bar progress-bar-striped progress-bar-animated bg-success"
														style="width: 33.3333%;"></div>
												</div>

												<div class="tab-pane active" id="account-2">
													<div class="row">
														<div class="col-lg-6">
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">회사명</label>
																<div class="col-md-9">
																	<input type="text" id="surname1" name="companyname"
																		class="form-control" value="<%=companyname%>">
																</div>
															</div>
															
															
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="email1">Email</label>
																<div class="col-md-9">
																	<input type="email" id="email1" name="email"
																		class="form-control" value="<%=email%>">
																</div>
															</div>
															
															
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">행사명</label>
																<div class="col-md-9">
																	<input type="text" id="surname1" name="eventname"
																		class="form-control" value="<%=eventname%>">
																</div>
															</div>

															

															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">MC,
																	공연 여부</label>
																<div class="col-md-9">
																	<input type="text" id="surname1" name="mcyn"
																		class="form-control" value="<%=mcyn%>">
																</div>
															</div>
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">예산</label>
																<div class="col-md-9">
																	<select class="form-control" name="money">
																		<option value="100~300만원" <c:if test="${money == '100~300만원'}">selected</c:if>>100~300만원</option>
																		<option value="300~500만원" <c:if test="${money == '300~500만원'}">selected</c:if>>300~500만원</option>
																		<option value="1000만원 미만" <c:if test="${money == '1000만원 미만'}">selected</c:if>>1000만원 미만</option>
																		<option value="1000~1500만원" <c:if test="${money == '1000~1500만원'}">selected</c:if>>1000~1500만원</option>
																		<option value="2000~3000만원" <c:if test="${money == '2000~3000만원'}">selected</c:if>>2000~3000만원</option>
																		<option value="3000~5000만원" <c:if test="${money == '3000~5000만원'}">selected</c:if>>3000~5000만원</option>
																		<option value="5000~8000만원" <c:if test="${money == '5000~8000만원'}">selected</c:if>>5000~8000만원</option>
																		<option value="8000~1억" <c:if test="${money == '8000~1억'}">selected</c:if>>8000~1억</option>
																		<option value="1억~2억" <c:if test="${money == '1억~2억'}">selected</c:if>>1억~2억</option>
																		<option value="2억~5억" <c:if test="${money == '2억~5억'}">selected</c:if>>2억~5억</option>
																	</select>
																</div>
															</div>
															
														</div>
														<!-- end col -->
														<div class="col-lg-6">
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">담당자</label>
																<div class="col-md-9">
																	<input type="text" id="surname1" name="person"
																		class="form-control" value="<%=mcyn%>">
																</div>
															</div>
															
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">연락처</label>
																<div class="col-md-9">
																	<input type="text" id="surname1" name="call"
																		class="form-control" value="<%=call%>">
																</div>
															</div>
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">행사일자</label>
																<div class="col-md-9">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			data-provide="datepicker" data-date-multidate="true" name="eventdate" value="<%=eventdate%>">
																		<div class="input-group-append">
																			<span class="input-group-text"><i
																				class="ti-calendar"></i></span>
																		</div>
																	</div>
																</div>
															</div>
															
															
															
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">장소</label>
																<div class="col-md-9">
																	<input type="text" id="surname1" name="eventplace"
																		class="form-control" value="<%=eventplace%>">
																</div>
															</div>
															
															<div class="form-group row mb-3">
																<label class="col-md-3 col-form-label" for="surname1">행사
																	내용</label>
																<div class="col-md-9">
																	<textarea class="autosize" onkeydown="resize(this)"
																onkeyup="resize(this)" placeholder="행사내용을 상세히 적어주세요!" name="eventcon"><%=eventcon%></textarea>
																</div>
															</div>
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
													<!-- end row -->
												</div>

												

                                                    <ul class="list-inline mb-0 wizard">
                                                        
                                                        <li class="next list-inline-item float-right">
                                                        	
                                                            <a class="btn btn-secondary" href="javascript:document.getElementById('frm').submit();">문의하기</a>
                                                        </li>
                                                    </ul>

                                                </div> <!-- tab-content -->
                                            </div> <!-- end #progressbarwizard-->
                                        </form>

                                    </div> <!-- end card-body -->
                                </div>
						</div>
					</div>
					<div class="row">
						<div class="col-12" style="padding-left: 0px; padding-right: 0px;">
							<div id="footer_wrap">
							<div class="wrap" id="wrap"
								style="margin-left: 30px; margin-right: 30px; width: 1350px;">
								<div class="f_l" style="width: 340px;">
										
										
										<address style="width: 339px;">
											주식회사 The Big Corporation 이성호 대표 <br /> 인천광역시 서구 백범로910번길 43, 3동 103호<br /> TEL
											032-710-6244<span></span>FAX 032-710-6245 <br />
											TBC@thebigs.kr <br /> 사업자등록번호 : 218-81-73160 <br /> <br />
											copyright (c) TBC. all rights reserved <a href="./main.do"><img alt=""
											src="../img/tbs.png" style="width: 235px;"></a>
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
															<!-- <a href="./member.do">구성원소개</a> -->
														</dd>
														<dd class=" ">
															<a href="./location.do">회사위치</a>
														</dd>
														<dd class=" ">
															<a
																href="./notice.do">공지사항</a>
														</dd>
													</dl></li>
												
													<li class="" style="margin-right: 0px;"><a
													href="./system.do">무대</a>
													<dl>
														<dd class=" "><a href="./system.do?select=stage" >무대</a></dd>
														<dd class=" "><a href="./system.do?select=light" >조명</a></dd>
														<dd class=" "><a href="./system.do?select=repeater" >중계</a></dd>
														<dd class=" "><a href="./system.do?select=structure" >구조물</a></dd>
														
													</dl></li>
													<li class=""><a
													href="./system.do" style="height:26.4px;">시스템</a>
													<dl style="margin-left: 17px;">
														<dd class=" ">
															
														</dd>
													<dd class=" "><a href="./system.do?select=sound" >음향</a></dd>
													<dd class=" "><a href="./system.do?select=led" >LED</a></dd>
														<dd class=" "><a href="./system.do?select=effect" >특수효과</a></dd>
														<dd class=" "><a href="./system.do?select=exhibition" >전시</a></dd>
														
													</dl></li>
												
												
												
												<li class=""><a
													href="./estimate.do">문의하기</a>
													<dl>
														<dd class=" ">
															<a
																href="./estimate.do">견적문의</a>
														</dd>
														<dd class=" ">
															<a
																href="./coalition.do">제휴문의</a>
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
												href="javascript:void(0);">Help</a> <a href="./estimate.do">Contact
												Us</a>
										</div>
									</div>
									<div class="col-12">주식회사 The Big Corporation 이성호 대표</div>
									<div class="col-12">인천광역시 서구 백범로910번길 43, 3동 103호</div>
									<div class="col-12">032-710-6244</div>
									<div class="col-12">FAX 032-710-6245</div>
									<div class="col-12">TBC@thebigs.kr</div>

									<div class="col-12">사업자등록번호 : 218-81-73160</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end Footer -->
					<!-- end Footer -->

				</div>
				<!-- container -->

			</div>
			<!-- content -->





		</div>

		<!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <script type="text/javascript">
        function DropdownShowAdd(num) {
        	if(num == 0){
        		document.getElementById("dropdown_div" + num).classList.add("show");
        	}else{
        		document.getElementById("dropdown_li"+ num).classList.add("show");
            	document.getElementById("dropdown_a" + num).classList.add("show");
            	document.getElementById("dropdown_div" + num).classList.add("show");
        	}
        	
		};
		function DropdownShowRemove(num) {
			if(num == 0){
				document.getElementById("dropdown_div" + num).classList.remove("show");
			}else{
				document.getElementById("dropdown_li" + num).classList.remove("show");
	        	document.getElementById("dropdown_a" + num).classList.remove("show");
	        	document.getElementById("dropdown_div" + num).classList.remove("show");
			}
		};
		
		function delete_confirm(num){
			 if(confirm("삭제하시겠습니까?"))
			 {
				 document.getElementById('delete_frm' + num).submit();
			  
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
                    <li class="nav-item">
                        <a href="#tab2" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
                            탭2
                        </a>
                    </li>
                </ul>
                <div class="tab-content pl-3 pr-3">
                    <div class="tab-pane show active" id="tab1">
                    <!-- 탭1 시작 -->
                       <div>
                            <div class="inbox-widget">
                                <h5 class="mt-0">설정1</h5>
                                <div class="inbox-item">
                                   test
                                </div>
                                
                                <h5 class="mt-0">설정2</h5>
                                <div class="inbox-item">
                                   test2
                                </div>
                                
                            </div> <!-- end inbox-widget -->
                        </div> <!-- end .p-3-->
                
                    </div>
                    <div class="tab-pane" id="tab2">
                    	<!-- tab2 시작 -->
                        <div>
                            <div class="inbox-widget">
                                <h5 class="mt-0">설정1</h5>
                                <div class="inbox-item">
                                   1234
                                </div>
                                
                                 <h5 class="mt-0">설정2</h5>
                                <div class="inbox-item">
                                   12345
                                </div>
                                
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