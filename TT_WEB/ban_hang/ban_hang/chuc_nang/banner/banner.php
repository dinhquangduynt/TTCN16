<?php 
	// $tv="select * from banner limit 0,1";
	// $tv_1=mysql_query($tv);
	// $tv_2=mysql_fetch_array($tv_1);
	// $link_hinh="hinh_anh/banner/".$tv_2['hinh'];	
	// echo "<img src='".$link_hinh."' width='".$tv_2['rong']."' height='".$tv_2['cao']."' >";
	
	
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select * from banner limit 0,1;";
	$result = mysqli_query($link, $sql);
	$row = mysqli_fetch_array($result, MYSQLI_BOTH);
	$link_hinh="hinh_anh/banner/".$row['hinh'];	
	echo "<img src='".$link_hinh."' width='".$row['rong']."' height='".$row['cao']."' >";
	
	
?>