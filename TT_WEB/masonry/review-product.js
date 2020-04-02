$(function () {
  	//hover hoặc click lên các ảnh trong detail product
  	$('.detail-product .img-product-review .other-img ul li').on("click", function (){
  		var val=$(this).children('.item').attr('style');
  		$('.detail-product .img-product-review .other-img ul li').removeClass('img-clicked');
  		$(this).addClass('img-clicked');
  		console.log(val);
  		$('.detail-product .img-product-review .img-selected').attr({style:val});
  	});
  	//click lên button thêm vào giỏ hàng
  	$('#btn-add-into-cart').on("click", function(){
		var numCart=+$('.cart-box .num-cart').text();
		// numCart= +numCart;
		numCart=numCart+1;
		$('.cart-box .num-cart').text(numCart);
		$('.cart-box .num-cart').addClass('none-empty-cart');
		swal({
			title:"Thêm vào giỏ hàng thành công!",
			type:"success",
			allowOutsideClick:true});
	});
	//xử lý sự kiện khi click nút số lượng sản phẩm
	     //nut bớt số lượng
	$('#btn-sub-num-p').on("click", function(){
		var numP=+$('.bar-option-num-product .num-p').text();
		if(numP>1)
		{
			numP=numP-1;
		}
		if(numP==1)
		{
			$(this).css({'cursor':'not-allowed', 'color':'gray'});
		}
		$('.bar-option-num-product .num-p').text(numP);
	})	
	    // nut tăng số lượng
	$('#btn-add-num-p').on("click", function(){
		var numP=+$('.bar-option-num-product .num-p').text();
		numP=numP+1;
		if(numP==2)
		{
			$('#btn-sub-num-p').css({'cursor':'pointer','color':'orange'});
		}
		$('.bar-option-num-product .num-p').text(numP);
	})		
})