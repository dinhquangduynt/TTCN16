<?php 
	$id=$_GET['id'];
	
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select * from menu_ngang where id='$id';";
	$result = mysqli_query($link, $sql);
	
	$row = mysqli_fetch_array($result, MYSQLI_BOTH);
	echo "<h1>";
		echo $row['ten'];
	echo "</h1>";
	echo $row['noi_dung'];
?>