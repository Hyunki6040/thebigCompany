<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<title>TBC : 더 빅 컴퍼니</title>
        <meta name="description" content="NINEMC, 감각적인 BTL 기업행사, 대규모 창립행사, 컨텐츠 개발 이벤트회사, 행사 대행 및 광고 대행업체">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
		var g5_url       = "http://www.ninemc.com/";
		var g5_bbs_url   = "http://www.ninemc.com/bbs";
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
			    position: absolute;
			}
			.enlarged .left-side-menu {height: fit-content;
			   height: 269px;
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
			
		.enlarged .left-side-menu #sidebar-menu>ul>li#contact{display:none;}@media (min-width: 768px) and (max-width: 1535px){.navbar-custom{width:160%;}}</style>

</head>

    <body class="enlarged" data-keep-enlarged="true">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Topbar Start -->
		<div class="navbar-custom"
			style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">

			<!-- LOGO -->
			<div class="logo-box"
				style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9); width: 70px; text-align: center;">
				<button class="button-menu-mobile waves-effect waves-light">
					<i class="fe-menu"></i>
				</button>
			</div>

			<ul class="list-unstyled topnav-menu topnav-menu-left m-0">
				<li><a href="./main.do"><img alt="TBC로고"
						src="../img/tbc_logo.png" style="width: 130px;"></a></li>

				<li id="dropdown_li1"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 110px; margin-left: 82px;"><a id="dropdown_a1"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(1)"
					onmouseout="javascript:DropdownShowRemove(1)"> 회사 <i
						class="mdi mdi-chevron-down"></i>
				</a>
					<div id="dropdown_div" class="dropdown-menu dropdown-megamenu"
						onmouseover="javascript:DropdownShowAdd(0)"
						onmouseout="javascript:DropdownShowRemove(0)"
						style="width: 600px; background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">
						<div class="row" style="width: inherit;">
							<div class="col-sm-11">

								<div class="row" style="width: fit-content;">

									<div class="col-md-1.5" style="text-align: center;">
										<h5 class="text-dark mt-0">회사</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./company_info.do">회사소개</a></li>
											<li><a href="./organ_chart.do">조직도</a></li>
											<li><!-- <a href="./member.do">구성원소개</a> --></li>
											<li><a href="./location.do">회사위치</a></li>
											<li><a href="./notice.do">공지사항</a></li>
										</ul>
									</div>

									<div class="col-md-1.5" style="text-align: center;">
										<h5 class="text-dark mt-0">사업</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./business_areas.do">행사 기획</a></li>
											<li><a href="../TBS/main.do" target="_blank">시스템정보</a></li>
											
										</ul>
									</div>
									<div class="col-md-1.5"
										style="text-align: center; width: 110px;">
										<h5 class="text-dark mt-0">포트폴리오</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./portfolio.do?select=univ_events">대학 행사</a></li>
											<li><a href="./portfolio.do?select=local_events">지역 축제</a></li>
											<li><a href="./portfolio.do?select=co_events">기업 행사</a></li>
											<li><a href="./portfolio.do?select=concert">콘서트</a></li>
											<li><a href="./portfolio.do?select=broadcast">방송</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="text-align: center; width: 110px;">
										<h5 class="text-dark mt-0">공연팀</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="./inquiry.do">섭외문의</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="text-align: center; width: 110px;">
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
				<li id="dropdown_li2"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 110px;"><a id="dropdown_a2"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(2)"
					onmouseout="javascript:DropdownShowRemove(2)"> 사업 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li3"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 110px;"><a id="dropdown_a3"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(3)"
					onmouseout="javascript:DropdownShowRemove(3)"> 포트폴리오 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li6"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 110px;"><a id="dropdown_a6"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(6)"
					onmouseout="javascript:DropdownShowRemove(6)"> 공연팀 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li7"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 110px;"><a id="dropdown_a7"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(7)"
					onmouseout="javascript:DropdownShowRemove(7)"> 문의하기 <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
			</ul>
		</div>
		<!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
		<div class="left-side-menu"
			style="background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">

			<div class="slimscroll-menu">

				<!--- Sidemenu -->
				<div id="sidebar-menu">

					<ul class="metismenu" id="side-menu">

						<li class="menu-title">메뉴</li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-briefcase-5-line"></i> <span> 회사
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="./company_info.do">회사소개</a></li>
								<li><a href="./organ_chart.do">조직도</a></li>
								<li><!-- <a href="./member.do">구성원소개</a> --></li>
								<li><a href="./location.do">회사위치</a></li>
								<li><a href="./notice.do">공지사항</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-flag-line"></i> <span> 사업 </span> <span
								class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="./business_areas.do">행사 기획</a></li>
								<li><a href="../TBS/main.do" target="_blank">시스템정보</a></li>
								
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-slideshow-line"></i> <span> 포트폴리오
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="./portfolio.do?select=univ_events">대학 행사</a></li>
								<li><a href="./portfolio.do?select=local_events">지역 축제</a></li>
								<li><a href="./portfolio.do?select=co_events">기업 행사</a></li>
								<li><a href="./portfolio.do?select=concert">콘서트</a></li>
								<li><a href="./portfolio.do?select=broadcast">방송</a></li>
							</ul></li>


						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-tv-line"></i> <span> 공연팀 </span> <span
								class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">섭외문의</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-customer-service-2-line"></i> <span>
									문의하기 </span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="./estimate.do">견적문의</a></li>
								<li><a href="./coalition.do">제휴문의</a></li>
							</ul></li>
					</ul>

				</div>
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
						<div class="col-12">
							<div class="s_page">
								<div class="s_title">
									<div class="wrap">
										<div class="inner">
											<strong>NINEMC</strong> Oganization
											<div class="cap">전시 및 공간 프로젝트, 다양한 사업범위에서 전개되는 Total
												Solution, Event Creative Group 입니다.</div>
										</div>
									</div>
								</div>
								<div class="wrap t_c">
									<img src="../import/images/sub0102.jpg" alt="조직도1"
										style="margin-bottom: 200px;" /><br /> <img
										src="../import/images/sub0102b.jpg" alt="조직도2" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-12">
							<div id="footer_wrap">
								<div class="wrap" id="wrap">
									<div class="f_l">
										<div class="f_sns">
											<ul class="inline">
												<li><a href="https://www.facebook.com/ninemcmaster"
													target="_blank"><img src="../import/images/sns1.jpg"
														alt="페이스북" /></a></li>
												<li><a href="https://www.instagram.com/ninemc_event/"
													target="_blank"><img src="../import/images/sns2.jpg"
														alt="인스타그램" /></a></li>
												<li><a href="https://blog.naver.com/ninemc_ky"
													target="_blank"><img src="../import/images/sns3.jpg"
														alt="블로그" /></a></li>
											</ul>
										</div>
										<div class="f_btn">
											<a
												href="./estimate.do"
												class="btn">견적문의</a> <a
												href="./coalition.do"
												class="btn">제휴문의</a>
										</div>
										<address>
											주식회사 나인위드 김기열 대표 <br /> 인천광역시 서구 백범로910번길 43, 3동 103호<br /> TEL
											032-710-6244<span></span>FAX 032-710-6245 <br />
											ninemc@ninemc.com <br /> 사업자등록번호 : 218-81-73160 <br /> <br />
											copyright (c) NINEMC. all rights reserved
										</address>
									</div>
									<div class="f_r">
										<div class="f_link">
											<ul class="inline">
												<li class=""><a href="./company_info.do">회사</a>
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
															<a
																href="http://www.ninemc.com/bbs/board.php?bo_table=notice">공지사항</a>
														</dd>
													</dl></li>
												<li class=""><a href="sub0201.html">사업</a>
													<dl>
														<dd class=" ">
															<a href="sub0201.html">행사 기획</a>
														</dd>
														<dd class=" ">
															<a href="sub0202.html">시스템정보</a>
														</dd>
														<dd class=" ">
															<a href="sub0203.html">재능나눔</a>
														</dd>
													</dl></li>
												<li class=""><a
													href="./portfolio.do?select=univ_events">포트폴리오</a>
													<dl>
														<dd class=" ">
															<a
																href="./portfolio.do?select=univ_events">대학 행사</a>
														</dd>
														<dd class=" ">
															<a
																href="./portfolio.do?select=local_events">지역 축제</a>
														</dd>
														<dd class=" ">
															<a
																href="./portfolio.do?select=co_events">기업 행사</a>
														</dd>
														<dd class=" ">
															<a
																href="./portfolio.do?select=concert">콘서트</a>
														</dd>
														<dd class=" ">
															<a
																href="./portfolio.do?select=broadcast">방송</a>
														</dd>
														
													</dl></li>
												
												<li class=""><a href="./inquiry.do">공연팀</a>
													<dl>
														<dd class=" ">
															<a href="./inquiry.do">공연팀의모든것</a>
														</dd>
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
																href="coalition.do">제휴문의</a>
														</dd>
														
													</dl></li>
											</ul>
										</div>
									</div>
								</div>
								<script type="text/javascript">window.onload = function() {var para = getCookie("DesktopMode");if(para == "true"){document.getElementById("turn_mobile").style.display= "block";}else{document.getElementById("turn_mobile").style.display= "none";}}</script><button onclick="javascript:desktopMode();" id="turn_mobile"style="max-width: 100%; height: 200px; width: 1920px;font-size: xx-large;display:none;">모바일 버전으로</button><div class="row" id="footer_wrap1" style="text-align: center; margin-top:100px"><div class="col-12	"><button onclick="desktopMode()" id="turn_mobile"style="max-width: 100%; height: 56px; width: 441px;">PC 버전으로</button></div>
									<div class="col-12">copyright (c) NINEMC. all rights
										reserved</div>
									<div class="col-12">
										<div class="text-md-right footer-links d-none d-sm-block">
											<a href="./company_info.do">About Us</a> <a
												href="./estimate.do">Contact Us</a>
										</div>
									</div>
									<div class="col-12">주식회사 나인위드 김기열 대표</div>
									<div class="col-12">인천광역시 서구 백범로910번길 43, 3동 103호</div>
									<div class="col-12">032-710-6244</div>
									<div class="col-12">FAX 032-710-6245</div>
									<div class="col-12">ninemc@ninemc.com</div>

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