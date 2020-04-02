<br>Quảng cáo <br><br>
<?php 
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select html from quang_cao where vi_tri='trai';";
	$result = mysqli_query($link, $sql);

	$row = mysqli_fetch_array($result, MYSQLI_BOTH);
	echo $row['html'];
?>