<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Minton - Responsive Admin Dashboard Template</title>
        <meta name="description" content="NINEMC, 감각적인 BTL 기업행사, 대규모 창립행사, 컨텐츠 개발 이벤트회사, 행사 대행 및 광고 대행업체">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        
        <!-- Vendor js -->
       <script src="../assets/js/vendor.min.js"></script>
        <!-- import -->
		<link rel="stylesheet" href="../import/css/default_gnu0d2a.css?ver=161020">
		<!--[if lte IE 8]>
		<script src="http://www.ninemc.com/js/html5.js"></script>
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

		
		<link rel="stylesheet" type="text/css" href="../import/css/common.css" />
		<link rel="stylesheet" type="text/css" href="../import/css/default.css" />
		<link rel="stylesheet" type="text/css" href="../import/css/bxslider.css" />
		<link rel="stylesheet" type="text/css" href="../import/css/fancybox.css" />
		<script src="../import/js/jquery-1.8.3.min.js"></script>
		<script src="../import/js/jquery.menu0d2a.js?ver=161020"></script>
		<script src="../import/js/common0d2a.js?ver=161020"></script>
		<script src="../import/js/wrest0d2a.js?ver=161020"></script>
		
		<script type="text/javascript" src="../import/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="../import/js/jquery.bxslider.min.js"></script>
		<script type="text/javascript" src="../import/js/jquery.fancybox.js"></script>
		<script type="text/javascript" src="../import/js/com.js"></script>
		<script type="text/javascript" src="../import/js/holder.js"></script>
		
		
		<style type="text/css">.fancybox-margin{margin-right:26px;}</style>
        
        <!-- App favicon -->
        <link rel="shortcut icon" href="../assets/images/favicon.ico">

        <!-- plugin css -->
        <link href="../assets/libs/jquery-vectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />

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
			   height: 384px;
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
			.logo-box {
			    display: block;
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
				<li>
					<h1 style="width: 200px;">회사 로고</h1>
				</li>

				<li id="dropdown_li1"
					class="dropdown dropdown-mega d-none d-lg-block"><a
					id="dropdown_a1"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(1)"
					onmouseout="javascript:DropdownShowRemove(1)"> COMPANY <i
						class="mdi mdi-chevron-down" style="margin-left: 14px;"></i>
				</a>
					<div id="dropdown_div" class="dropdown-menu dropdown-megamenu"
						onmouseover="javascript:DropdownShowAdd(0)"
						onmouseout="javascript:DropdownShowRemove(0)"
						style="width: 967px; background-color: BLACK; background-color: rgba(0, 0, 0, 0.9);">
						<div class="row" style="width: inherit;">
							<div class="col-sm-11">

								<div class="row">

									<div class="col-md-1.5"
										style="width: 116.34px; text-align: center;">
										<h5 class="text-dark mt-0">COMPANY</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">회사소개</a></li>
											<li><a href="javascript:void(0);">조직도</a></li>
											<li><a href="javascript:void(0);">구성원소개</a></li>
											<li><a href="javascript:void(0);">회사위치</a></li>
											<li><a href="javascript:void(0);">공지사항</a></li>
										</ul>
									</div>

									<div class="col-md-1.5"
										style="width: 115.05px; text-align: center;">
										<h5 class="text-dark mt-0">BUSINESS</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">행사 기획</a></li>
											<li><a href="javascript:void(0);">시스템정보</a></li>
											<li><a href="javascript:void(0);">재능나눔</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="width: 125.02px; text-align: center;">
										<h5 class="text-dark mt-0">PORTFOLIO</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">행사프로그램</a></li>
											<li><a href="javascript:void(0);">행사스케치</a></li>
											<li><a href="javascript:void(0);">행사영상</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="width: 124.42px; text-align: center;">
										<h5 class="text-dark mt-0">EVENTINFO</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">아이디어노트</a></li>
											<li><a href="javascript:void(0);">행사장정보</a></li>
											<li><a href="javascript:void(0);">프로모션플랜</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="width: 132.45px; text-align: center;">
										<h5 class="text-dark mt-0">MANPOWER</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">입사지원</a></li>
											<li><a href="javascript:void(0);">일상스토리</a></li>
											<li><a href="javascript:void(0);">인재등록</a></li>
											<li><a href="javascript:void(0);">MC프로필</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="width: 138px; text-align: center;">
										<h5 class="text-dark mt-0">SHOWING</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">공연팀의모든것</a></li>
										</ul>
									</div>
									<div class="col-md-1.5"
										style="width: 135.14px; text-align: center;">
										<h5 class="text-dark mt-0">CONTACT US</h5>
										<ul class="list-unstyled megamenu-list">
											<li><a href="javascript:void(0);">견적문의</a></li>
											<li><a href="javascript:void(0);">제휴문의</a></li>
											<li><a href="javascript:void(0);">RPG제작요청</a></li>
										</ul>
									</div>

								</div>

							</div></li>
				<li id="dropdown_li2"
					class="dropdown dropdown-mega d-none d-lg-block"><a
					id="dropdown_a2"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(2)"
					onmouseout="javascript:DropdownShowRemove(2)"> BUSINESS <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li3"
					class="dropdown dropdown-mega d-none d-lg-block"><a
					id="dropdown_a3"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(3)"
					onmouseout="javascript:DropdownShowRemove(3)"> PORTFOLIO <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li4"
					class="dropdown dropdown-mega d-none d-lg-block"><a
					id="dropdown_a4"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(4)"
					onmouseout="javascript:DropdownShowRemove(4)"> EVENTINFO <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li5"
					class="dropdown dropdown-mega d-none d-lg-block"><a
					id="dropdown_a5"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(5)"
					onmouseout="javascript:DropdownShowRemove(5)"> MANPOWER <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li6"
					class="dropdown dropdown-mega d-none d-lg-block"
					style="width: 138px;"><a id="dropdown_a6"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(6)"
					onmouseout="javascript:DropdownShowRemove(6)"> SHOWING <i
						class="mdi mdi-chevron-down"></i>
				</a></li>
				<li id="dropdown_li7"
					class="dropdown dropdown-mega d-none d-lg-block"><a
					id="dropdown_a7"
					class="nav-link dropdown-toggle waves-effect waves-light"
					href="#" role="button" aria-haspopup="false"
					aria-expanded="false" onmouseover="javascript:DropdownShowAdd(7)"
					onmouseout="javascript:DropdownShowRemove(7)"> CONTACT US <i
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

						<li class="menu-title">Navigation</li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-briefcase-5-line"></i> <span> COMPANY
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">회사소개</a></li>
								<li><a href="#">조직도</a></li>
								<li><a href="#">구성원소개</a></li>
								<li><a href="#">회사위치</a></li>
								<li><a href="#">공지사항</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-flag-line"></i> <span> BUSINESS </span> <span
								class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">행사 기획</a></li>
								<li><a href="#">시스템정보</a></li>
								<li><a href="#">재능나눔</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-slideshow-line"></i> <span> PORTFOLIO
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">행사프로그램</a></li>
								<li><a href="#">행사스케치</a></li>
								<li><a href="#">행사영상</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-newspaper-line"></i> <span> EVENTINFO
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">아이디어노트</a></li>
								<li><a href="#">행사장정보</a></li>
								<li><a href="#">프로모션플랜</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-file-edit-line"></i> <span> MANPOWER
							</span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">입사지원</a></li>
								<li><a href="#">일상스토리</a></li>
								<li><a href="#">인재등록</a></li>
								<li><a href="#">MC프로필</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-tv-line"></i> <span> SHOWING </span> <span
								class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">공연팀의모든것</a></li>
							</ul></li>

						<li><a href="javascript: void(0);" class="waves-effect">
								<i class="remixicon-customer-service-2-line"></i> <span>
									CONTACT US </span> <span class="menu-arrow"></span>
						</a>
							<ul class="nav-second-level" aria-expanded="false">
								<li><a href="#">견적문의</a></li>
								<li><a href="#">제휴문의</a></li>
								<li><a href="#">PRG제작요청</a></li>
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
                        
                       
                        
                    </div> <!-- container -->

                </div> <!-- content -->

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                               2016 - 2019 &copy; Minton theme by <a href="">Coderthemes</a> 
                            </div>
                            <div class="col-md-6">
                                <div class="text-md-right footer-links d-none d-sm-block">
                                    <a href="javascript:void(0);">About Us</a>
                                    <a href="javascript:void(0);">Help</a>
                                    <a href="javascript:void(0);">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

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

        <!-- Peity chart-->
        <script src="../assets/libs/peity/jquery.peity.min.js"></script>

        <!-- init js -->
        <script src="../assets/js/pages/dashboard-2.init.js"></script>

        <!-- App js -->
        <script src="../assets/js/app.min.js"></script>
        
    </body>
</html>