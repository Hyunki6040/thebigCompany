<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8" />
        <title>Minton - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        
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
		    
 		   /* @media (max-width: 767.98px){ 
				 .row {
				    width: 340px;
				    margin-right: 0px;
				    margin-left: 0px;
				} */
				.sidebar-enable .left-side-menu {height: fit-content;
				    display: block;
				    height: 1224px;
				}
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
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Minton</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Extras</a></li>
                                            <li class="breadcrumb-item active">Gallery</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Gallery</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <!-- Filter -->
                        <div class="row">
                            <div class="col-12">
                                <div class="text-center filter-menu">
                                    <a href="javascript: void(0);" class="filter-menu-item active" data-rel="all">All</a>
                                    <a href="javascript: void(0);" class="filter-menu-item" data-rel="web">Web Design</a>
                                    <a href="javascript: void(0);" class="filter-menu-item" data-rel="graphic">Graphic Design</a>
                                    <a href="javascript: void(0);" class="filter-menu-item" data-rel="illustrator">Illustrator</a>
                                    <a href="javascript: void(0);" class="filter-menu-item" data-rel="photography">Photography</a>
                                </div>
                            </div>
                        </div>
                        <!-- end row-->

                        <div class="row filterable-content">

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-1.jpg" class="image-popup" title="Screenshot-1">
                                        <img src="../assets/images/small/img-1.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Man wearing black jacket</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-3.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Justin Coke</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all graphic photography">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-2.jpg" class="image-popup" title="Screenshot-2">
                                        <img src="../assets/images/small/img-2.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Snow covered mountain</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-2.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Toni Sanchez</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-danger"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-3.jpg" class="image-popup" title="Screenshot-3">
                                        <img src="../assets/images/small/img-3.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Woman sitting on rock</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-4.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Maria Crowder</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all graphic illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-4.jpg" class="image-popup" title="Screenshot-4">
                                        <img src="../assets/images/small/img-4.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Smiling woman's face</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-5.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Charles East</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-5.jpg" class="image-popup" title="Screenshot-5">
                                        <img src="../assets/images/small/img-5.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Brown tabby cat sitting on concrete</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-6.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">David Buchanan</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-danger"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all graphic photography">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-6.jpg" class="image-popup" title="Screenshot-6">
                                        <img src="../assets/images/small/img-6.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Woman walking between brown </h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-7.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Lee Moore</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-danger"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-7.jpg" class="image-popup" title="Screenshot-7">
                                        <img src="../assets/images/small/img-7.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Landscape photography of mountains</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-8.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Julia Cruz</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-1.jpg" class="image-popup" title="Screenshot-8">
                                        <img src="../assets/images/small/img-1.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Man wearing black jacket</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-9.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Craig Creek</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all graphic photography">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-2.jpg" class="image-popup" title="Screenshot-9">
                                        <img src="../assets/images/small/img-2.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Snow covered mountain</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-10.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Gloria Pitt</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-3.jpg" class="image-popup" title="Screenshot-10">
                                        <img src="../assets/images/small/img-3.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Woman sitting on rock</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-4.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Silas Seay</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-muted"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all graphic illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-4.jpg" class="image-popup" title="Screenshot-11">
                                        <img src="../assets/images/small/img-4.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Smiling woman's face</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-5.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Linda Ward</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-danger"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->

                            <div class="col-sm-6 col-xl-3 filter-item all web illustrator">
                                <div class="gal-box">
                                    <a href="../assets/images/small/img-5.jpg" class="image-popup" title="Screenshot-12">
                                        <img src="../assets/images/small/img-5.jpg" class="img-fluid" alt="work-thumbnail">
                                    </a>
                                    <div class="gall-info">
                                        <h4 class="font-16 mt-0">Brown tabby cat sitting on concrete</h4>
                                        <a href="javascript: void(0);">
                                            <img src="../assets/images/users/avatar-6.jpg" alt="user-img" class="rounded-circle" height="24" />
                                            <span class="text-muted ml-1">Becky Eley</span>
                                        </a>
                                        <a href="javascript: void(0);" class="gal-like-btn"><i class="mdi mdi-heart-outline text-danger"></i></a>
                                    </div> <!-- gallery info -->
                                </div> <!-- end gal-box -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
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

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="fe-x noti-icon"></i>
                </a>
                <h4 class="m-0 text-white">Settings</h4>
            </div>
            <div class="slimscroll-menu">
                <!-- User box -->
                <div class="user-box">
                    <div class="user-img">
                        <img src="../assets/images/users/avatar-1.jpg" alt="user-img" title="Mat Helme" class="rounded-circle img-fluid">
                        <a href="javascript:void(0);" class="user-edit"><i class="mdi mdi-pencil"></i></a>
                    </div>
            
                    <h5><a href="javascript: void(0);">Nik G. Patel</a> </h5>
                    <p class="text-muted mb-0"><small>Admin Head</small></p>
                </div>

                <ul class="nav nav-pills bg-light nav-justified">
                    <li class="nav-item">
                        <a href="#home1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
                            General
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#messages1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0 active">
                            Chat
                        </a>
                    </li>
                </ul>
                <div class="tab-content pl-3 pr-3">
                    <div class="tab-pane" id="home1">
                        <div class="row mb-2">
                            <div class="col">
                                <h5 class="m-0 font-15">Notifications</h5>
                                <p class="text-muted"><small>Do you need them?</small></p>
                            </div> <!-- end col-->
                            <div class="col-auto">
                                <div class="custom-control custom-switch mb-2">
                                    <input type="checkbox" class="custom-control-input" id="tabswitch1">
                                    <label class="custom-control-label" for="tabswitch1"></label>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row-->

                        <div class="row mb-2">
                            <div class="col">
                                <h5 class="m-0 font-15">API Access</h5>
                                <p class="text-muted"><small>Enable/Disable access</small></p>
                            </div> <!-- end col-->
                            <div class="col-auto">
                                <div class="custom-control custom-switch mb-2">
                                    <input type="checkbox" class="custom-control-input" checked id="tabswitch2">
                                    <label class="custom-control-label" for="tabswitch2"></label>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row-->

                        <div class="row mb-2">
                            <div class="col">
                                <h5 class="m-0 font-15">Auto Updates</h5>
                                <p class="text-muted"><small>Keep up to date</small></p>
                            </div> <!-- end col-->
                            <div class="col-auto">
                                <div class="custom-control custom-switch mb-2">
                                    <input type="checkbox" class="custom-control-input" id="tabswitch3">
                                    <label class="custom-control-label" for="tabswitch3"></label>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row-->

                        <div class="row mb-2">
                            <div class="col">
                                <h5 class="m-0 font-15">Online Status</h5>
                                <p class="text-muted"><small>Show your status to all</small></p>
                            </div> <!-- end col-->
                            <div class="col-auto">
                                <div class="custom-control custom-switch mb-2">
                                    <input type="checkbox" class="custom-control-input" checked id="tabswitch4">
                                    <label class="custom-control-label" for="tabswitch4"></label>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row-->

                        <div class="alert alert-success alert-dismissible fade mt-3 show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                            <h5>Unlimited Access</h5>
                            Upgrade to plan to get access to unlimited reports
                            <br/>
                            <a href="javascript: void(0);" class="btn btn-outline-success mt-3 btn-sm">Upgrade<i class="ml-1 mdi mdi-arrow-right"></i></a>
                        </div>
                
                    </div>
                    <div class="tab-pane show active" id="messages1">
                        <div>
                            <div class="inbox-widget">
                                <h5 class="mt-0">Recent</h5>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-2.jpg" class="rounded-circle" alt=""> <i class="online user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Tomaslau</a></p>
                                    <p class="inbox-item-text">I've finished it! See you so...</p>
                                </div>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-3.jpg" class="rounded-circle" alt=""> <i class="away user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Stillnotdavid</a></p>
                                    <p class="inbox-item-text">This theme is awesome!</p>
                                </div>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-4.jpg" class="rounded-circle" alt=""> <i class="online user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Kurafire</a></p>
                                    <p class="inbox-item-text">Nice to meet you</p>
                                </div>
        
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-5.jpg" class="rounded-circle" alt=""> <i class="busy user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Shahedk</a></p>
                                    <p class="inbox-item-text">Hey! there I'm available...</p>
                                </div>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-6.jpg" class="rounded-circle" alt=""> <i class="user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Adhamdannaway</a></p>
                                    <p class="inbox-item-text">This theme is awesome!</p>
                                </div>

                                <hr/>
                                <h5>Favorite <span class="float-right badge badge-pill badge-danger">18</span></h5>
                                <hr/>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-7.jpg" class="rounded-circle" alt=""> <i class="busy user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Kennith</a></p>
                                    <p class="inbox-item-text">I've finished it! See you so...</p>
                                </div>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-3.jpg" class="rounded-circle" alt=""> <i class="busy user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Stillnotdavid</a></p>
                                    <p class="inbox-item-text">This theme is awesome!</p>
                                </div>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-10.jpg" class="rounded-circle" alt=""> <i class="online user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Kimberling</a></p>
                                    <p class="inbox-item-text">Nice to meet you</p>
                                </div>
        
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-4.jpg" class="rounded-circle" alt=""> <i class="user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Kurafire</a></p>
                                    <p class="inbox-item-text">Hey! there I'm available...</p>
                                </div>
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../assets/images/users/avatar-9.jpg" class="rounded-circle" alt=""> <i class="away user-status"></i></div>
                                    <p class="inbox-item-author"><a href="javascript: void(0);" class="text-dark">Leonareade</a></p>
                                    <p class="inbox-item-text">This theme is awesome!</p>
                                </div>

                                <div class="text-center mt-2">
                                    <a href="javascript:void(0);" class="text-muted"><i class="mdi mdi-spin mdi-loading mr-1"></i> Load more </a>
                                </div>

                            </div> <!-- end inbox-widget -->
                        </div> <!-- end .p-3-->
                    </div>
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="../assets/js/vendor.min.js"></script>

        <!-- Magnific Popup-->
        <script src="../assets/libs/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Gallery Init-->
        <script src="../assets/js/pages/gallery.init.js"></script>

        <!-- App js -->
        <script src="../assets/js/app.min.js"></script>
        
    </body>
</html>