$(function () {
	var arrayProduct=[
			{
				id:'1',
				urlImg:'images/tao-do.jpg',
				name:"chuối tiêm thuốc",
				codeColor:'red',
				codeSize:'10 lít',
				qty:'2'
			},
			{
				id:'2',
				urlImg:'images/thit-rung.jpg',
				name:"táo trung quốc",
				codeColor:'blue',
				codeSize:'10 lít',
				qty:'1'
			},
			{
				id:'3',
				urlImg:'images/Chuoi.jpg',
				name:"mãng cầu tưới cứt",
				codeColor:'yellow',
				codeSize:'10 lít',
				qty:'1'
			}
		];

	$('.btn-change-option-product').on("click", function(){ 
		// lấy thông tin
		var idProduct=$(this).parent().parent().attr('idProductInCart'); 
		let productInfor= arrayProduct.filter(function (item) {
			return item.id===idProduct;
		});
		console.log(productInfor[0].name);
		$('.layer-black-behind-box-change').show();
		// đổ thông tin lên form thay đổi thông tin
		var link=$('.layer-black-behind-box-change .box-change-info-product');
		link.children('.img-product-in-box').children('.bg-img').
		css({'background-image':'url('+productInfor[0].urlImg+')'});

	})
	// click nut đóng hộp thay đổi
	$('.layer-black-behind-box-change .btn-cancel button').on("click",function(){
		$('.layer-black-behind-box-change').hide();
	})
	// click nút xóa sản phẩm
	$('.btn-delete-product-from-cart button').on("click",function(){
		var root=$(this).parent().parent().parent().parent();
		swal({
		title: "Bạn chắc chắn muốn xóa không?",
		text: "sản phẩm sẽ bị xóa khỏi giỏ hàng!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Chắc chắn',
		cancelButtonText: 'Từ chối',
		closeOnConfirm: false,
		//closeOnCancel: false
		},
		function(){	
			swal("Đã xóa sản phẩm khỏi giỏ hàng", "", "success");
			root.fadeOut(1000);
			root.remove();
		});
		
	})
})
