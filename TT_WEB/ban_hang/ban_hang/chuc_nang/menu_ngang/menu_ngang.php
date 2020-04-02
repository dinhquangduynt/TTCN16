<?php 

	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select id,ten,loai_menu from menu_ngang order by id;";
	$result = mysqli_query($link, $sql);
	
	echo "<div class='menu_ngang' >";
	echo "<a href='index.php'>Trang chủ</a>";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		if($row['loai_menu']==""){$link_menu="?thamso=xuat_mot_tin&id=".$row['id'];}
		if($row['loai_menu']=="san_pham"){$link_menu="?thamso=xuat_san_pham_2";}
		echo "<a href='$link_menu'>";
			echo $row['ten'];
		echo "</a>";
	}
	echo "</div>";
?>