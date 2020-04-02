$(function(){
	var x=0;
	var y=0;
	var listProduct= [
	{type:'Thịt rừng', name:'Thịt chồn'},
	{type:'Thịt rừng', name:'Thịt bò'},
	{type:'Thịt rừng', name:'Thịt lơn bản'},
	{type:'Thịt rừng', name:'Thịt trâu'},
	{type:'Thịt rừng', name:'Thịt sóc'},
	{type:'Thịt rừng', name:'Thịt chuột'},
	{type:'Thịt rừng', name:'Thịt rắn hổ mang'},
	{type:'Thịt rừng', name:'Thịt kỳ đà'},
	{type:'Thịt rừng', name:'Thịt rắn ráo'},
	{type:'Thịt rừng', name:'Thịt trăn'},
	{type:'Thịt rừng', name:'Thịt tắc kè'},
	{type:'Thịt rừng', name:'Thịt nhím'},
	{type:'Nấm rừng', name:'Nấm hương'},
	{type:'Nấm rừng', name:'Nấm rơm'},
	{type:'Nấm rừng', name:'Nấm tai mèo'},
	{type:'Nấm rừng', name:'Nấm lim'},
	{type:'Nấm rừng', name:'Nấm kim châm'},
	{type:'Nấm rừng', name:'Nấm óc chó'},
	{type:'Nấm rừng', name:'Nấm chàm'},
	{type:'Thịt chim', name:'Thịt chim cút'},
	{type:'Thịt chim', name:'Thịt chim đa đa'},
	{type:'Thịt chim', name:'Thịt chim sẽ'},
	{type:'Thịt chim', name:'Thịt chim cu đất'},
	{type:'Thịt chim', name:'Thịt chim bồ câu'},
	{type:'Thịt chim', name:'Thịt gà thả vườn'},
	{type:'Thịt chim', name:'Thịt vịt'},
	{type:'Thịt chim', name:'Thịt ngan'}
	]
	//reponsive
	$(window).resize(function(){
      var w =$('.bar-search').width();
      var pw= $('.img-product-content').width();
      var ph= pw;
      $('.img-product-content').height(ph);
      if(w<960&&w>=760) {
        $('#id-logo').hide();
        $('.card-service .title-card').hide();
        $('.mini-card-service .title-card').hide();
      }
      else if(w>=960){
        w=w*60/100;
        $('.search-blank').width(w);
            $('#id-logo').show();
            $('.card-service .title-card').show();
            $('.mini-card-service .title-card').show();
            $('.child-search-blank').width(650);
      }
      else
      {
        w=w*80/100;
        $('.search-blank').width(w);
            $('#id-logo').hide();
             $('.card-service .title-card').hide();
             $('.mini-card-service .title-card').hide();
            var w1 =$('.search-blank').width();
            var x= w1*100/100;
            var x2= x-60;
            $('.child-search-blank').width(x);
            $('.child-search-blank').width(x2);
      }
    })
    // xac định độ rộng của cửa sổ trình duyệt để tạo giao diện phù hợp
    $(document).ready(function(){
      var w =$('.bar-search').width();
      var pw= $('.img-product-content').width();
      var ph= 90*pw/100;
      $('.img-product-content').height(ph);
      
      if(w<960&&w>=760) {
        $('#id-logo').hide();
        $('.card-service .title-card').hide();
        $('.mini-card-service .title-card').hide();
      }
      else if(w>=960){
        w=w*60/100;
        $('.search-blank').width(w);
            $('#id-logo').show();
            $('.card-service .title-card').show();
            $('.mini-card-service .title-card').show();
            $('.child-search-blank').width(650);
      }
      else
      {
        w=w*80/100;
        $('.search-blank').width(w);
            $('#id-logo').hide();
             $('.card-service .title-card').hide();
             $('.mini-card-service .title-card').hide();
            var w1 =$('.search-blank').width();
            var x= w1*100/100;
            var x2= x-60;
            $('.child-search-blank').width(x);
            $('.child-search-blank').width(x2);
      }
      $('.mini-menu').hide();
      $('.name-list-product').hide();
    });
    //xử lý thẻ menu
    $('.btn-list-product').mouseenter(function () {
      $('.dropdown-sub-menu').slideDown(300);
    });
    $('.dropdown-sub-menu').mouseleave(function(){
      if($('.dropdown-sub-menu').attr('dropmenuPoisition')==='fx')
      {
        $('.dropdown-sub-menu').slideUp(300);
      }
      
    });
    // $('.btn-list-product').mouseleave(function(){
    //   $('div').not('.btn-list-product, .dropdown-sub-menu').mouseenter(function(){
    //     $('.dropdown-sub-menu').slideUp(300);
    //   })
    // })
    
  	// xử lý sự kiện khi lăn chuột
  	$(window).scroll(function(){
  		var top= $(window).scrollTop();
  		if(top >=500)
  		{
  			$('.navbar').hide();
  			$('.mini-menu').show();
        $('.smooth-scrolling-page-card').fadeIn(1000);
        $('.dropdown-sub-menu').css({'position':'fixed','z-index':'1001','display':'none', 'top':'120px'});
        $('.dropdown-sub-menu').attr({'dropmenuPoisition':'fx'});
  		}
  		else 
  		{
  			$('.navbar').show();
  			$('.mini-menu').hide();
        $('.smooth-scrolling-page-card').fadeOut(1000);
        $('.dropdown-sub-menu').css({'position':'absolute','z-index':'3','display':'table','top':'100px'});
        $('.dropdown-sub-menu').attr({'dropmenuPoisition':'ab'});
  		}        
  	})
    // smooth scroll page;
    $(".smooth-scrolling-page-card a[href*='#']:not([href='#])").click(function() {
      let target = $(this).attr("href");
      $('html,body').animate({
        scrollTop: $(target).offset().top
      }, 800);
      event.preventDefault();
    });
  	
});