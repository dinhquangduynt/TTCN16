$(function () {
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
	];
	$(window).resize(function(){
      var w =$('.bar-search').width();
      var pw= $('.img-product-content').width();
      var ph= 90*pw/100;
      $('.img-product-content').height(ph);
      var hSearchPopular =$('.popular-search-product .most-popular-product').height();
      ph= (hSearchPopular+1)/2;
      $('.popular-search-product .cell-other-popular').height(ph);
      // if(w<960&&w>=760) {
      //   $('#id-logo').hide();
      //   $('.card-service .title-card').hide();
      //   $('.mini-card-service .title-card').hide();
      // }
      // else if(w>=960){
      //   w=w*60/100;
      //   $('.search-blank').width(w);
      //       $('#id-logo').show();
      //       $('.card-service .title-card').show();
      //       $('.mini-card-service .title-card').show();
      //       $('.child-search-blank').width(650);
      // }
      // else
      // {
      //   w=w*80/100;
      //   $('.search-blank').width(w);
      //       $('#id-logo').hide();
      //        $('.card-service .title-card').hide();
      //        $('.mini-card-service .title-card').hide();
      //       var w1 =$('.search-blank').width();
      //       var x= w1*100/100;
      //       var x2= x-60;
      //       $('.child-search-blank').width(x);
      //       $('.child-search-blank').width(x2);
      // }
    })
 //    // xac định độ rộng của cửa sổ trình duyệt để tạo giao diện phù hợp
    $(document).ready(function(){
      var w =$('.bar-search').width();
      var pw= $('.img-product-content').width();
      var ph= 90*pw/100;
      $('.img-product-content').height(ph);
      var hSearchPopular =$('.popular-search-product .most-popular-product').height();
      ph= (hSearchPopular+1)/2;
      $('.popular-search-product .cell-other-popular').height(ph);
      
      // if(w<960&&w>=760) {
      //   $('#id-logo').hide();
      //   $('.card-service .title-card').hide();
      //   $('.mini-card-service .title-card').hide();
      // }
      // else if(w>=960){
      //   w=w*60/100;
      //   $('.search-blank').width(w);
      //       $('#id-logo').show();
      //       $('.card-service .title-card').show();
      //       $('.mini-card-service .title-card').show();
      //       $('.child-search-blank').width(650);
      // }
      // else
      // {
      //   w=w*80/100;
      //   $('.search-blank').width(w);
      //       $('#id-logo').hide();
      //        $('.card-service .title-card').hide();
      //        $('.mini-card-service .title-card').hide();
      //       var w1 =$('.search-blank').width();
      //       var x= w1*100/100;
      //       var x2= x-60;
      //       $('.child-search-blank').width(x);
      //       $('.child-search-blank').width(x2);
      // }
  })
  // hover lên nut danh mục
  $('.btn-list-product').mouseenter(function () {
    $('.dropdown-sub-menu').slideDown(300);
  });
  $('.dropdown-sub-menu').mouseleave(function(){
    $('.dropdown-sub-menu').slideUp(300);
  });
  // đổ dữ liệu lên menu danh mục
  function renderLevel2(id,tag) {
      var list;
      if(id==="1"){
         list= ['dụng cụ nhà bếp', 'dụng cụ phòng ngủ', 'dụng cụ phòng khách', 'trang trí nhà cửa', 'nhà vệ sinh-phòng tăm','điện ngoài trời'
        ];
      }
      else{
        list= ['thời trang nam ', 'thời trang nữ', 'thời trang cho bé', 'thời trang công sở', 'vv..','..'
        ];
      }
      var id=0;
      var listHtml =list.map(function (item) {
        id=id+1;
        return '<li class="vcf-item item-dropdown-sub-menu-level-2" isHover="false" idItem="'+id+'"><a href="filterproduct.html"><h6>'+item+'</h6></a><ul class="vcf-list dropdown-sub-menu-level-3"></ul></li>';     
      })
      var render=listHtml.join('');
      tag.html(render);
    }
    function renderLevel3(tag) {
      var list = ['nồi cơm điện', 'máy giặt', 'tủ lạnh', 'quạt điện', 'bếp điện','ấm đun nước','...'
      ];
      var listHtml =list.map(function (item) {
        return '<li class="vcf-item" isHover="false"><a href="filterproduct.html"><h6>'+item+'</h6></a></li>';   
      })
      var render=listHtml.join('');
      tag.html(render);
    }
    $(document).ready(function() {
      $('.dropdown-sub-menu .dropdown-sub-menu-level-1 .item-dropdown-sub-menu-level-1').mouseenter(function(){
        var id=$(this).attr('idItem');
        var tag=$(this).children('.dropdown-sub-menu-level-2');
        var isHover=$(this).attr('isHover');
        if(isHover==="false"){
          renderLevel2(id,tag);
          $(this).attr({'isHover':'true'})
        }
        $(this).children('.dropdown-sub-menu-level-2 ').children('.item-dropdown-sub-menu-level-2').mouseenter(function(){
          var tag1=$(this).children('.dropdown-sub-menu-level-3');
          var isHover1=$(this).attr('isHover');
          if(isHover1==="false"){
          renderLevel3(tag1);
          $(this).attr({'isHover':'true'})
          }
       });    
      }); 
    })
})