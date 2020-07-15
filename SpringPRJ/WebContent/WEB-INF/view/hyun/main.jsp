<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from www.ninemc.com/sub/main.php by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Dec 2019 08:36:13 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
		<meta charset="utf-8">
		<title>Minton - Responsive Admin Dashboard Template</title>
        <meta name="description" content="NINEMC, 감각적인 BTL 기업행사, 대규모 창립행사, 컨텐츠 개발 이벤트회사, 행사 대행 및 광고 대행업체">
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


		<!-- App favicon -->
        <link rel="shortcut icon" href="../assets/images/favicon.ico">

        <!-- plugin css -->
        <link href="../assets/libs/jquery-vectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header_wrap">
	<h1><a href="main.html"><img src="../import/images/logo.png" alt="NineMC" /></a></h1>
	<div class="all_search_wrap">
		<form method="get" action="http://www.ninemc.com/bbs/search.php">
		<fieldset>
		<legend>전체검색</legend>
			<input type="text" required name='stx' value="" placeholder="고객분들께 기업에 가치있는 이벤트를 실현합니다." />
			<input type="hidden" name="sop" value="and" />
			<input type="hidden" name="sfl" value="wr_subject" />
			<input type="image" src="../import/images/btn_all_search.png" />
		</fieldset>
		</form>
	</div>
	<div class="gnb">
		<div class="wrap">
			<ul>
				<li class="">
					<a href="sub0101.html">COMPANY</a>
					<dl>
						<dd class=" "><a href="sub0101.html">회사소개</a></dd>
						<dd class=" "><a href="sub0102.html">조직도</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=member">구성원소개</a></dd>
						<dd class=" "><a href="sub0104.html">회사위치</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=notice">공지사항</a></dd>
					</dl>
				</li>
				<li class="">
					<a href="sub0201.html">BUSINESS</a>
					<dl>
						<dd class=" "><a href="sub0201.html">행사 기획</a></dd>
						<dd class=" "><a href="sub0202.html">시스템정보</a></dd>
						<dd class=" "><a href="sub0203.html">재능나눔</a></dd>
					</dl>
				</li>
				<li class="">
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=program">PORTFOLIO</a>
					<dl>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=program">행사프로그램</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=Sketch">행사스케치</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=Movie">행사영상</a></dd>
					</dl>
				</li>
				<li class="">
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=ideanote">EVENTINFO</a>
					<dl>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=ideanote">아이디어노트</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=PlaceInfo">행사장정보</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=PromotionPlan">프로모션플랜</a></dd>
						<!--
						<dd class=" "><a href="/bbs/board.php?bo_table=Flynus">플라이너스</a></dd>
						<dd class=" "><a href="/bbs/board.php?bo_table=starcoll">스타컬렉션</a></dd>
						-->
					</dl>
				</li>
				<li class="">
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=ipsajiwon">MANPOWER</a>
					<dl>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=ipsajiwon">입사지원</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=Everyday_story">일상스토리</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=injejiwon">인재등록</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=mcprofile">MC프로필</a></dd>
					</dl>
				</li>
				<li class="">
					<a href="http://showing.or.kr/" target="_blank">SHOWING</a>
					<dl>
						<dd class=" "><a href="http://showing.or.kr/" target="_blank">공연팀의모든것</a></dd>
					</dl>
				</li>
				<li class="">
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=request">CONTACT US</a>
					<dl>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=request">견적문의</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=jehu">제휴문의</a></dd>
						<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=createRPG">PRG제작요청</a></dd>
					</dl>
				</li>
			</ul>
			<div class="bg_gnb"></div>
		</div>
	</div>
</div>

<div class="quick" style=" top:1025px;  " >
	<img src="../import/images/quick.jpg" alt="quickmenu" /><br />
	<img src="../import/images/q1.jpg" alt="문의전화 02-866-9237" /><br />
	<a href="https://customer.happytalk.io/public_v1/chat_v4/public_point?go=C&amp;is_login=N&amp;uid=&amp;site_id=4000000972&amp;category_id=94063&amp;division_id=94064&amp;usergb=W&amp;title=%5B%ED%85%8C%EC%8A%A4%ED%8A%B8+%EC%83%81%EB%8B%B4%EC%B0%BD%5D" target="_blank"><img src="../import/images/q2a95e.jpg?v20190304" alt="1:1 상담" /></a>
	<ul>
		
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=19"><img src="http://www.ninemc.com/data/banner/19" width="130" alt="sdfsf"></a>
</li>
		
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=20"><img src="http://www.ninemc.com/data/banner/20" width="130" alt=""></a>
</li>
		
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=21"><img src="http://www.ninemc.com/data/banner/21" width="130" alt=""></a>
</li>
		
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=22"><img src="http://www.ninemc.com/data/banner/22" width="130" alt=""></a>
</li>
		<!--li><a href="/sub/board_view.php"><img src="holder.js/130x100?theme=sky" alt="img" /></a></li>
		<li><a href="/sub/board_view.php"><img src="holder.js/130x100?theme=gray" alt="img" /></a></li>
		<li><a href="/sub/board_view.php"><img src="holder.js/130x100?theme=vine" alt="img" /></a></li>
		<li><a href="/sub/board_view.php"><img src="holder.js/130x100?theme=industrial" alt="img" /></a></li-->
	</ul>
	<!-- <div class="go_top">TOP</div> -->
</div>
<div class="m_visual">
	<div class="inner">
		<ul>
			<li>
				<!--img src="/images/m_visual1.jpg" alt="m_visual1" /-->
				
<img src="http://www.ninemc.com/data/banner/33" alt="" width="1920" height="713">			</li>
			<li>
				
<img src="http://www.ninemc.com/data/banner/32" alt="" width="1920" height="713">			</li>
			<li>
				
<img src="http://www.ninemc.com/data/banner/7" alt="" width="1920" height="713">			</li>
			<li>
				
<img src="http://www.ninemc.com/data/banner/8" alt="" width="1920" height="713">			</li>
			<li>
				
<img src="http://www.ninemc.com/data/banner/24" alt="" width="1920" height="713">			</li>
		</ul>
	</div>
	<div class="m_visual_btn">
		<a href="#;" class="btn_prev"><img src="../import/images/btn_p1.png" alt="prev" /></a>
		<a href="#;" class="btn_next"><img src="../import/images/btn_n1.png" alt="next" /></a>
	</div>
	<div class="m_visual_tab">
		<div class="wrap">
			<ul class="inline">
				<li class="m_visual_tab1 on"><a data-slide-index="0" href="#;">NEW COMPANY</a></li>
				<li class="m_visual_tab2"><a data-slide-index="1" href="#;">INVENTIVE</a></li>
				<li class="m_visual_tab3"><a data-slide-index="2" href="#;">NETWORK</a></li>
				<li class="m_visual_tab4"><a data-slide-index="3" href="#;">EXPRESSION</a></li>
				<li class="m_visual_tab5"><a data-slide-index="4" href="#;">MC MASTER</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="mcon">
	<div class="mcon1">
		<div class="wrap">
			<ul class="inline">
				<li>
					<a href="sub0101.html">
						<div class="thum">
							<img src="../import/images/mcon1_1.jpg" alt="나인엠씨 소개" />
						</div>
						<div class="text_off">
							<img src="../import/images/mcon1_1_off.png" alt="나인엠씨 소개" />
						</div>
						<div class="text_on">
							<img src="../import/images/mcon1_1_on.png" alt="나인엠씨 소개" />
						</div>
						<div class="bg"></div>
					</a>
				</li>
				<li>
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=program">
						<div class="thum">
							<img src="../import/images/mcon1_2.jpg" alt="행사 프로그램" />
						</div>
						<div class="text_off">
							<img src="../import/images/mcon1_2_off.png" alt="행사 프로그램" />
						</div>
						<div class="text_on">
							<img src="../import/images/mcon1_2_on.png" alt="행사 프로그램" />
						</div>
						<div class="bg"></div>
					</a>
				</li>
				<li>
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=ideanote">
						<div class="thum">
							<img src="../import/images/mcon1_3.jpg" alt="아이디어노트" />
						</div>
						<div class="text_off">
							<img src="../import/images/mcon1_3_off.png" alt="아이디어노트" />
						</div>
						<div class="text_on">
							<img src="../import/images/mcon1_3_on.png" alt="아이디어노트" />
						</div>
						<div class="bg"></div>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="mcon2">
		<div class="wrap">
			<ul class="inline">
				<li>
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=member">
						<img src="../import/images/btn_mcon2_01.jpg" alt="NINEMC 구성원보기" />
						<!-- NINEMC <span>구성원보기</span> <img src="/images/btn_more.png" alt="더보기" /> -->
					</a>
				</li>
				<li>
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=createRPG">
					<img src="../import/images/btn_mcon2_02.jpg" alt="프로그램 제작의뢰" />
						프로그램 <span>제작의뢰</span> <img src="../import/images/btn_more.png" alt="더보기" />
					</a>
				</li>
				<li>
					<a href="http://www.ninemc.com/bbs/board.php?bo_table=PromotionPlan">
					<img src="../import/images/btn_mcon2_03.jpg" alt="기업 프로모션 PLAN UP" />
						기업 프로모션 <span>PLAN UP</span> <img src="../import/images/btn_more.png" alt="더보기" />
					</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="mcon3">
		<div class="wrap">
			<div class="f_l">
				<img src="../import/images/mcon3_1.jpg" alt="고객만족브랜드(이벤트기획) 부문 수상 나인엠씨" />
			</div>
			<div class="f_r">
				<div class="mcon3_slide">
					<ul>
						<li>
							<a href="http://www.ninemc.com/bbs/board.php?bo_table=Movie"><img src="../import/images/mcon3_2fd03.jpg?v190109" alt="이벤트로 참신한 프로그램으로 함께하는 나인엠씨" /></a>
						</li>
						<li>
							<a href="http://www.ninemc.com/bbs/board.php?bo_table=Movie"><img src="../import/images/mcon3_2_onfd03.png?v190109" alt="이벤트로 참신한 프로그램으로 함께하는 나인엠씨" /></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="mcon4">
		<div class="wrap">
			<h3>EVENT GALLERY <a href="http://www.ninemc.com/bbs/board.php?bo_table=Sketch"><img src="../import/images/more.gif" alt="" /></a></h3>
			<ul class="inline">
				
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=3"><img src="http://www.ninemc.com/data/banner/3" width="305" alt="한국콜마 27주년 창립행사"></a>
</div><div class="con">한국콜마 27주년 창립행사</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=10"><img src="http://www.ninemc.com/data/banner/10" width="305" alt="동화약품 창립행사 총연출"></a>
</div><div class="con">동화약품 창립행사 총연출</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=11"><img src="http://www.ninemc.com/data/banner/11" width="305" alt="LG화학 단합대회"></a>
</div><div class="con">LG화학 단합대회</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=12"><img src="http://www.ninemc.com/data/banner/12" width="305" alt="한성자동차 체육대회"></a>
</div><div class="con">한성자동차 체육대회</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=13"><img src="http://www.ninemc.com/data/banner/13" width="305" alt="메리츠화재 연도시상식"></a>
</div><div class="con">메리츠화재 연도시상식</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=14"><img src="http://www.ninemc.com/data/banner/14" width="305" alt="임시완 팬미팅"></a>
</div><div class="con">임시완 팬미팅</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=15"><img src="http://www.ninemc.com/data/banner/15" width="305" alt="유미코아 창립행사"></a>
</div><div class="con">유미코아 창립행사</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=16"><img src="http://www.ninemc.com/data/banner/16" width="305" alt="EA코리아 연말파티"></a>
</div><div class="con">EA코리아 연말파티</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=25"><img src="http://www.ninemc.com/data/banner/25" width="305" alt="벨로테로 메이크업쇼"></a>
</div><div class="con">벨로테로 메이크업쇼</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=26"><img src="http://www.ninemc.com/data/banner/26" width="305" alt="DY 40주년 창립행사"></a>
</div><div class="con">DY 40주년 창립행사</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=27"><img src="http://www.ninemc.com/data/banner/27" width="305" alt="하이테크비전 전시 세미나"></a>
</div><div class="con">하이테크비전 전시 세미나</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=28"><img src="http://www.ninemc.com/data/banner/28" width="305" alt="한빛소프트 오디션 세계대회"></a>
</div><div class="con">한빛소프트 오디션 세계대회</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=34"><img src="http://www.ninemc.com/data/banner/34" width="305" alt="하이네켄 직원 워크샵"></a>
</div><div class="con">하이네켄 직원 워크샵</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=35"><img src="http://www.ninemc.com/data/banner/35" width="305" alt="호러나민C 페스티벌"></a>
</div><div class="con">호러나민C 페스티벌</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=36"><img src="http://www.ninemc.com/data/banner/36" width="305" alt="카브루 맥주 팝업스토어"></a>
</div><div class="con">카브루 맥주 팝업스토어</a>
</div></li>
<li>
<div class="thum"><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=37"><img src="http://www.ninemc.com/data/banner/37" width="305" alt="아프리카TV 체육대회"></a>
</div><div class="con">아프리카TV 체육대회</a>
</div></li>

				<!--li>
					<div class="thum">
						<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
					</div>
					<div class="con">
						<a href="/sub/board_view.php">제목입니다. 제목입니다.</a>
					</div>
				</li-->
				<!--li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li>
				<li>
					<a href="/sub/board_view.php"><img src="holder.js/305x190?theme=sky" alt="img" /></a>
				</li-->
			</ul>
		</div>
	</div>
	<div class="wrap m_b80">
		<div class="mcon5">
			<h3>SKETCH MOVING</h3>
			<ul>
				
<li><div class="thum"><iframe width="440" height="310" src="https://www.youtube.com/embed/GzoJKRHe6YY?rel=0&amp;showinfo=0&amp;wmode=opaque" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></div><div class="con"><div class="text1">프로모션 벨로테로 메이크업쇼</div><div class="text2"><?=?></div><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=18" class="btn">자세히보기</a></div></li><li><div class="thum"><iframe width="440" height="310" src="https://www.youtube.com/embed/Bz8NTjfMxpY?rel=0&amp;showinfo=0&amp;wmode=opaque" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></div><div class="con"><div class="text1">이색적인 유미코아 창립행사</div><div class="text2"><?=?></div><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=29" class="btn">자세히보기</a></div></li><li><div class="thum"><iframe width="440" height="310" src="https://www.youtube.com/embed/-kxgyQhzQl8?ecver=2?rel=0&amp;showinfo=0&amp;wmode=opaque" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></div><div class="con"><div class="text1">한국콜마 창립행사</div><div class="text2"><?=?></div><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=17" class="btn">자세히보기</a></div></li><li><div class="thum"><iframe width="440" height="310" src="https://www.youtube.com/embed/htB56uSbywk?rel=0&amp;showinfo=0&amp;wmode=opaque" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></div><div class="con"><div class="text1">하이테크비전 전시 세미나</div><div class="text2"><?=?></div><a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=30" class="btn">자세히보기</a></div></li>
				<!--li>
					<div class="thum">
						<img src="holder.js/440x310?theme=gray" alt="img" />
					</div>
					<div class="con">
						<div class="text1">한방에가자!!</div>
						<div class="text2">공연에 빠진 그들</div>
						<div class="text3">공연에 빠진 그들의 대박라인업을 소개합니다.</div>
						<a href="/sub/board_view.php" class="btn">자세히보기</a>
					</div>
				</li>
				<li>
					<div class="thum">
						<iframe width="440" height="310" src="https://www.youtube.com/embed/-rL9_f_u0DA?rel=0&showinfo=0&wmode=opaque" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
					</div>
					<div class="con">
						<div class="text1">한방에가자!!</div>
						<div class="text2">공연에 빠진 그들</div>
						<div class="text3">공연에 빠진 그들의 대박라인업을 소개합니다.</div>
						<a href="/sub/board_view.php" class="btn">자세히보기</a>
					</div>
				</li-->
			</ul>
		</div>
		<div class="mcon6">
			<div class="mcon6_top">
				<h3>EVENT INFO</h3>
				<ul class="inline">
					
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=4"><img src="http://www.ninemc.com/data/banner/4" width="310" alt=""></a>
</li>
					<!--li>

						<a href="/sub/board_view.php"><img src="holder.js/310x145?theme=sky" alt="img" /></a>
					</li-->
					
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=6"><img src="http://www.ninemc.com/data/banner/6" width="310" alt=""></a>
</li>
					<!--li>

						<a href="/sub/board_view.php"><img src="holder.js/310x145?theme=sky" alt="img" /></a>
					</li-->
				</ul>
			</div>
			<div class="mcon6_bot">
				<ul>
					
<li class="sbn_first">
<a href="http://www.ninemc.com/shop/bannerhit.php?bn_id=5"><img src="http://www.ninemc.com/data/banner/5" width="625" alt=""></a>
</li>
					<!--li>
						<a href="/sub/board_view.php"><img src="holder.js/625x160?theme=sky" alt="img" /></a>
					</li>
					<li>
						<a href="/sub/board_view.php"><img src="holder.js/625x160?theme=gray" alt="img" /></a>
					</li-->
				</ul>
			</div>
		</div>
	</div>
	<div class="mcon7">
		<div class="wrap">
			<h3>CONTENTS FILE</h3>
			<ul class="inline">
				<li>
					<div class="off"><img src="../import/images/mcon7_1_off.jpg" alt="공연협력사 SHOWING" /></div>
					<div class="on"><a href="http://showing.or.kr/" target="_blank" ><img src="../import/images/mcon7_1_on.jpg" alt="공연협력사 SHOWING" /></a></div>
				</li>
				<li>
					<div class="off"><img src="../import/images/mcon7_2_off.jpg" alt="시스템통합 FLYNURSE" /></div>
					<div class="on"><a href="http://flynurse.kr/" target="_blank"><img src="../import/images/mcon7_2_on.jpg" alt="시스템통합 FLYNURSE" /></a></div>
				</li>
				<li>
					<div class="off"><img src="../import/images/mcon7_3_off.jpg" alt="연예인 섭외 스타컬렉션" /></div>
					<div class="on"><a href="http://starcollection.kr/" target="_blank"><img src="../import/images/mcon7_3_on.jpg" alt="연예인 섭외 스타컬렉션" /></a></div>
				</li>
				<li>
					<div class="off"><img src="../import/images/mcon7_4_off.jpg" alt="MEDIA 이벤티브 프로덕션" /></div>
					<div class="on"><a href="#;" target="_blank"><img src="../import/images/mcon7_4_on.jpg" alt="MEDIA 이벤티브 프로덕션" /></a></div>
				</li>
			</ul>
		</div>
	</div>

	<div class="mcon8">
		<div class="wrap">
			<div class="mcon8_link">
				<ul class="inline">
					<li><a href="sub0201.html" >&nbsp;</a></li>
					<li><a href="sub0202.html" >&nbsp;</a></li>
					<li><a href="http://www.ninemc.com/bbs/board.php?bo_table=program" >&nbsp;</a></li>
					<li><a href="http://www.ninemc.com/bbs/board.php?bo_table=PlaceInfo" >&nbsp;</a></li>
					<li><a href="http://www.ninemc.com/bbs/board.php?bo_table=mcprofile" >&nbsp;</a></li>
				</ul>
			</div>
		</div>
		<div class="hidden">
			한 번에 모든 행사를 올인원으로 진행할 수 있다? <br />
			전문가의 손을 닿으면 기획과 연출이 살아난다!
		</div>
	</div>
	<div class="mcon9">
		<div class="wrap">
			<div class="mcon9_1">
				<h4>공지사항</h4>
				<ul>
					
<!-- 공지사항 최신글 시작 { -->
            <li>
            <a href="http://www.ninemc.com/bbs/board.php?bo_table=notice&amp;wr_id=7">2019년 나인엠씨의 바라기</a>  <img src="../import/skin/latest/basic/img/icon_hot.gif" alt="인기글">          </li>
            <li>
            <a href="http://www.ninemc.com/bbs/board.php?bo_table=notice&amp;wr_id=6">2018년 나인엠씨가 달라졌습니다.</a>  <img src="../import/skin/latest/basic/img/icon_hot.gif" alt="인기글">          </li>
            <li>
            <a href="http://www.ninemc.com/bbs/board.php?bo_table=notice&amp;wr_id=5">2017년 나인엠씨입니다.</a>  <img src="../import/skin/latest/basic/img/icon_hot.gif" alt="인기글">          </li>
            <li>
            <a href="http://www.ninemc.com/bbs/board.php?bo_table=notice&amp;wr_id=4">나인엠씨 이벤트 부분 브랜드대상</a>  <img src="../import/skin/latest/basic/img/icon_hot.gif" alt="인기글">          </li>
            <li>
            <a href="http://www.ninemc.com/bbs/board.php?bo_table=notice&amp;wr_id=3">2015년을 시작하는 나인엠씨의 마음!</a>  <img src="../import/skin/latest/basic/img/icon_hot.gif" alt="인기글">          </li>
        <!-- } 공지사항 최신글 끝 -->					<!--li><a href="/sub/board_view.php">제목입니다. 제목입니다.</a></li>
					<li><a href="/sub/board_view.php">제목입니다. 제목입니다.</a></li>
					<li><a href="/sub/board_view.php">제목입니다. 제목입니다.</a></li>
					<li><a href="/sub/board_view.php">제목입니다. 제목입니다.</a></li>
					<li><a href="/sub/board_view.php">제목입니다. 제목입니다.</a></li-->
				</ul>
				<span class="more"><a href="http://www.ninemc.com/bbs/board.php?bo_table=notice"><img src="../import/images/btn_more2.png" alt="더보기" /></a></span>
			</div>
			<div class="mcon9_2">
				<a href="http://www.ninemc.com/bbs/board.php?bo_table=program&amp;wr_id=22"><img src="../import/images/mcon9_2.jpg" alt="TIME WECREATION" /></a>
			</div>
			<div class="mcon9_3">
				<a href="http://www.ninemc.com/bbs/board.php?bo_table=Everyday_story"><img src="../import/images/mcon9_3.jpg" alt="일상스토리" /></a>
			</div><!-- https://www.facebook.com/showdlip/?ref=bookmarks -->
			<div class="mcon9_4">
				<a href="http://www.ninemc.com/bbs/board.php?bo_table=request"><img src="../import/images/mcon9_4.jpg" alt="고객센터 : 02.866.9137, 공연문의하기" /></a>
			</div>
		</div>
	</div>
</div>

<div id="footer_wrap">
	<div class="wrap">
		<div class="f_l">
			<div class="f_sns">
				<ul class="inline">
					<li><a href="https://www.facebook.com/ninemcmaster" target="_blank"><img src="../import/images/sns1.jpg" alt="페이스북" /></a></li>
					<li><a href="https://www.instagram.com/ninemc_event/" target="_blank"><img src="../import/images/sns2.jpg" alt="인스타그램" /></a></li>
					<li><a href="https://blog.naver.com/ninemc_ky" target="_blank"><img src="../import/images/sns3.jpg" alt="블로그" /></a></li>
				</ul>
			</div>
			<div class="f_btn">
				<a href="http://www.ninemc.com/bbs/board.php?bo_table=ipsajiwon" class="btn">입사지원</a>
				<a href="http://www.ninemc.com/bbs/board.php?bo_table=jehu" class="btn">제휴문의</a>
			</div>
			<address>
				주식회사 나인위드 김기열 대표 <br />
				인천광역시 서구 백범로910번길 43, 3동 103호<br />
				TEL 032-710-6244<span></span>FAX 032-710-6245 <br />
				ninemc@ninemc.com <br />
				사업자등록번호 : 218-81-73160 <br />
				<br />
				copyright (c) NINEMC. all rights reserved
			</address>
		</div>
		<div class="f_r">
			<div class="f_link">
				<ul class="inline">
					<li class="">
						<a href="sub0101.html">COMPANY</a>
						<dl>
							<dd class=" "><a href="sub0101.html">회사소개</a></dd>
							<dd class=" "><a href="sub0102.html">조직도</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=member">구성원소개</a></dd>
							<dd class=" "><a href="sub0104.html">회사위치</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=notice">공지사항</a></dd>
						</dl>
					</li>
					<li class="">
						<a href="sub0201.html">BUSINESS</a>
						<dl>
							<dd class=" "><a href="sub0201.html">행사 기획</a></dd>
							<dd class=" "><a href="sub0202.html">시스템정보</a></dd>
							<dd class=" "><a href="sub0203.html">재능나눔</a></dd>
						</dl>
					</li>
					<li class="">
						<a href="http://www.ninemc.com/bbs/board.php?bo_table=program">PORTFOLIO</a>
						<dl>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=program">행사프로그램</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=Sketch">행사스케치</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=Movie">행사영상</a></dd>
						</dl>
					</li>
					<li class="">
						<a href="http://www.ninemc.com/bbs/board.php?bo_table=ideanote">EVENTINFO</a>
						<dl>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=ideanote">아이디어노트</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=PlaceInfo">행사장정보</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=PromotionPlan">프로모션플랜</a></dd>
							<!--
							<dd class=" "><a href="/bbs/board.php?bo_table=Flynus">플라이너스</a></dd>
							<dd class=" "><a href="/bbs/board.php?bo_table=starcoll">스타컬렉션</a></dd>
							-->
						</dl>
					</li>
					<li class="">
						<a href="http://www.ninemc.com/bbs/board.php?bo_table=ipsajiwon">MANPOWER</a>
						<dl>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=ipsajiwon">입사지원</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=Everyday_story">일상스토리</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=injejiwon">인재등록</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=mcprofile">MC프로필</a></dd>
						</dl>
					</li>
					<li class="">
						<a href="javascript:void(0);">SHOWING</a>
						<dl>
							<dd class=" "><a href="javascript:void(0);" >공연팀의모든것</a></dd>
						</dl>
					</li>
					<li class="">
						<a href="http://www.ninemc.com/bbs/board.php?bo_table=request">CONTACT US</a>
						<dl>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=request">견적문의</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=jehu">제휴문의</a></dd>
							<dd class=" "><a href="http://www.ninemc.com/bbs/board.php?bo_table=createRPG">PRG제작요청</a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

</body>

<!-- Mirrored from www.ninemc.com/sub/main.php by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Dec 2019 08:37:04 GMT -->
</html>