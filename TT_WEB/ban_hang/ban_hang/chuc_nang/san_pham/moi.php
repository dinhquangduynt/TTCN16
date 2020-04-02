<br><br>
Sản phẩm mới <br><br>
<center>
	<?php 
		$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
		mysqli_set_charset($link, "UTF8");
		mysqli_select_db($link,"ban_hang");
		$sql = "select id,ten,hinh_anh from san_pham order by id desc limit 0,3;";
		$result = mysqli_query($link, $sql);
		
		while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
		{
			$link_anh="hinh_anh/san_pham/".$row['hinh_anh'];
			$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$row['id'];
			echo "<a href='$link_chi_tiet' >";
				echo "<img src='$link_anh' width='100px' >";
			echo "</a>";
			echo "<br><br>";
			echo $row['ten'];
			echo "<br>";
			echo "<br>";
		}
	?>
</center>
