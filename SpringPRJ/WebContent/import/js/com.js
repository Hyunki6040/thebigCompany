/* gnb */
$(function(){
	$('.gnb li').mouseenter(function(){
		$('.gnb dl').css("display","block");
		$('.bg_gnb').css("display","block");
	});
	$('.gnb').mouseleave(function(){
		$('.gnb dl').css("display","none");
		$('.bg_gnb').css("display","none");
	})
})
/* quick */
$(function(){
	var defaultTop = parseInt($(".quick").css("top"));
	$(window).on("scroll",function(){
		var scv=$(window).scrollTop();
		if (scv > 200)
		{
			$(".quick").stop().animate({top:0+"px"},1000);
		} 
		else if (scv <= 190)
		{
			$(".quick").stop().animate({top:defaultTop+"px"},1000);
		}
	});		
	$('.go_top').click(function(){
		$('html, body').animate({scrollTop : 0},500);
		return false;
	});
});


/* link_pos */
$(function(){
	$(".link_pos").click(function(e){
		var posY = $($(this).attr("href")).position();				
		$("html,body").stop().animate({'scrollTop':posY.top + 50},500);
		e.preventDefault();
	}); 
});

/* m_visual */
$(function(){
	var slider = $('.m_visual .inner ul').bxSlider({
		auto: true,
		autoControls: false,
		controls:false,
		pause : 5000,
		oneToOneTouch : false,
		adaptiveHeight : true,
		pagerCustom: '.m_visual_tab li',
		onSlideBefore: function(){
			slider.stopAuto();
			slider.startAuto();	
			current = slider.getCurrentSlide();
			$('.m_visual_tab li').removeClass('on');
			$('.m_visual_tab li').eq(current).addClass('on');
		}
	});
	$('.m_visual .btn_prev').click(function(){
			slider.goToPrevSlide();
	});
	$('.m_visual .btn_next').click(function(){
		slider.goToNextSlide();
	});
});
/* mcon3 */
$(function(){
	var slider = $('.mcon3_slide ul').bxSlider({
		auto: true,
		autoControls: false,
		controls:false,
		pager:false,
		mode: 'fade',
		speed : 2000,
		pause : 5000
	});
});
/* mcon5 */
$(function(){
	var slider = $('.mcon5 ul').bxSlider({
		auto: false,
		autoControls: false,
		controls:false,
		pager:true,
		pause : 5000
	});
});
/* mcon6_bot */
$(function(){
	var slider = $('.mcon6_bot ul').bxSlider({
		auto: true,
		autoControls: false,
		controls:true,
		pager:false,
		pause : 5000,
		onSlideAfter: function(){
			slider.stopAuto();
			slider.startAuto();			
		}
	});
});
/* mc_view */
$(function(){
	$('.mc_view .thum_more li a').click(function(e){
		e.preventDefault();
		/*
		$('.thum_s a').removeClass('on');
		$(this).addClass('on');
		*/
		img_url = $(this).attr('href');
		$('.mc_view .con_wrap .thum img').attr('src',img_url);
	});
});

/* win_resize */
$(function(){
	win_resize();
	$( window ).resize(function() {
		win_resize();
	});
});
function win_resize() {
	var con_width = $(window).width();
	if (con_width < 1550) {$(".quick").css('display','none')}
	else {$(".quick").css('display','block')}
};
