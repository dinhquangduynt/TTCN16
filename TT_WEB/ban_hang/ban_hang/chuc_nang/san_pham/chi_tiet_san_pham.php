<?php 
	$_SESSION['trang_chi_tiet_gio_hang']="co";
	$id=$_GET['id'];
	
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select * from san_pham where id='$id';";
	$result = mysqli_query($link, $sql);
	$row = mysqli_fetch_array($result, MYSQLI_BOTH);
	
	$link_anh="hinh_anh/san_pham/".$row['hinh_anh'];
	echo "<table>";
		echo "<tr>";
			echo "<td width='250px' align='center' >";
				echo "<img src='$link_anh' width='150px' >";
			echo "</td>";
			echo "<td valign='top' >";
				echo "<a href='#'>";
					echo $row['ten'];
				echo "</a>";
				echo "<br>";
				echo "<br>";
				$gia=$row['gia'];
				$gia=number_format($gia,0,",",".");
				echo $gia;
				echo "<br>";
				echo "<br>";
				echo "<form>";
					echo "<input type='hidden' name='thamso' value='gio_hang' > ";
					echo "<input type='hidden' name='id' value='".$_GET['id']."' > ";
					echo "<input type='text' name='so_luong' value='1' style='width:50px' > ";
					echo "<input type='submit' value='Thêm vào giỏ' style='margin-left:15px' > ";
				echo "</form>"; 
			echo "</td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td colspan='2' >";
				echo "<br>";
				echo "<br>";
				echo $row['noi_dung'];
			echo "</td>";
		echo "</tr>";
	echo "</table>";
?>