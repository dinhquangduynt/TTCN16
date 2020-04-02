$(function(){
	// hàm chuyển kiểu giá sang kiểu số
	check=false;
	function casting_string_to_num(string) {
		var test=-1;
		var count= 0;
		do
		{
			test= string.lastIndexOf(".000");
			if(test>0){
				string= string.substring(0,test);
				count=count+1;
			}	
		}while(test>0);
		var num = +string;
		num=num*Math.pow(1000,count);
		return num;
	}
	//hàm tính tổng giá 
	function tinh_tong(check){// biên check kiểm tra đã có mã giảm giá hay chưa
		var tamTinh=casting_string_to_num($('#price-id-add-1').text());
		var phiShip=casting_string_to_num($('#price-id-add-2').text());
		var giamPhiShip=-casting_string_to_num($('#price-id-sub-1').text());
		var maGiamGia=-casting_string_to_num($('#price-id-sub-2').text());
		if(check==1){
			sum=tamTinh+phiShip-giamPhiShip-maGiamGia;
		}
		else{
			sum=tamTinh+phiShip-giamPhiShip;
		}
		$('#summany').text(sum);
	}
	$(document).ready(function (){
		var object= $('.option-ship');
		for(i=0;i<object.length; i++ )
		{
			if($(object[i]).hasClass('selected-option-ship'))
			{
				$('#price-id-add-2').text($(object[i]).children('.ship-fee').children('.value').text());

			}
		}
		tinh_tong(check);
	})
	
	//hàm xử ly sự kiên click 
	$('.btn-apply-code button').on("click", function () {
		var discountCode=$(this).parent().prev().children('input').val();
		if(discountCode=='umbala')
		{
			$(this).parent().parent().removeClass('row-checkout-of-col-right-show ');
			$(this).parent().parent().addClass('row-checkout-of-col-right-hide');
			$(this).parent().parent().next().removeClass('row-checkout-of-col-right-hide');
			$(this).parent().parent().next().addClass('row-checkout-of-col-right-show');
			check= true;
			tinh_tong(check);
		}
		else{
			swal({
				title:"mã giảm giá không tồn tại",
				type: "warning",
				allowOutsideClick: true
			});
			$(this).parent().prev().children('input').val("");
		}
	})

	// hàm xư lý sự kiện khi lưa chọn giao hàng
	$('.option-ship').on("click", function() {
		$('.option-ship').removeClass('selected-option-ship');
		$('.option-ship').attr({'data':'0'});
		$(this).addClass('selected-option-ship');
		$(this).attr({'data':'1'});
		var giaShip=$(this).children('.ship-fee').children('.value').text();
		$('.option-ship').children('.ship-fee').children('.check-box').children('i').addClass('fa-circle');
		$('.option-ship').children('.ship-fee').children('.check-box').children('i').removeClass('fa-check-circle');
		$(this).children('.ship-fee').children('.check-box').children('i').removeClass('fa-circle');
		$(this).children('.ship-fee').children('.check-box').children('i').addClass('fa-check-circle');
		console.log(giaShip);
		$('#price-id-add-2').text(giaShip);
		tinh_tong(check);
	})

})