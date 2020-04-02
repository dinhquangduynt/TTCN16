<?php 
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select * from menu_doc order by id;";
	$result = mysqli_query($link, $sql);
	
	echo "<div class='menu_doc' >";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		$link="?thamso=xuat_san_pham&id=".$row['id'];
		echo "<a href='$link'>";
			echo $row['ten'];
		echo "</a>";
	}
	echo "</div>";
?>