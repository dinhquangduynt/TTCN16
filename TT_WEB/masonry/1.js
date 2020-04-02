 $(function(){
 	$('.content').isotope({
		  itemSelector: '.itemimages',
		  layoutMode: 'masonry'
	});

	var h_img= $('.image img').height();
    console.log(h_img);
    var w_img= $('.image img').width();
    console.log(w_img);
    var h_screen= $('.glassblack').height();
    console.log(h_screen);
    var w_screen= $('.glassblack').width();
    console.log(w_screen);
    var left;
    var top;
   
    if(h_img>=h_screen)
    {
    	while(h_img>=h_screen)
    	{
    		w_img=w_img-1;
    		$('.image img').width(w_img);
    		h_img= $('.image img').height();
    	}

    }

    left= (w_screen-w_img)/2;
    var h_img= $('.image img').height();
    console.log(h_img);
    $('.detailimage').offset({left:left});
    $('.detailimage').offset({top:'0px'});
    $('.itemimages').click(function(event){
    	var src= this.children().children('img').attr('src');
    	this.parent().parent().next()
    })

 
})  
 