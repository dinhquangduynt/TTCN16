<br><br>
Sản phẩm của chúng tôi 
<br><br>
<?php 
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select id,ten,gia,hinh_anh,thuoc_menu from san_pham where trang_chu='co' order by sap_xep_trang_chu desc limit 0,15;";
	$result = mysqli_query($link, $sql);
	
	echo "<table>";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		echo "<tr>";
			for($i=1;$i<=3;$i++)
			{
				echo "<td align='center' width='215px' valign='top' >";
					if($row!=false)
					{
						$link_anh="hinh_anh/san_pham/".$row['hinh_anh'];
						$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$row['id'];
						$gia=$row['gia'];
						$gia=number_format($gia,0,",",".");
						echo "<a href='$link_chi_tiet' >";
							echo "<img src='$link_anh' width='150px' >";
						echo "</a>";
						echo "<br>";
						echo "<br>";
						echo "<a href='$link_chi_tiet' >";
							echo $row['ten'];
						echo "</a>";
						echo "<div style='margin-top:5px' >";						
						echo $gia;
						echo "</div>";
						echo "<br>";
					}
					else 
					{
						echo "&nbsp;";
					}
				echo "</td>";
				if($i!=3)
				{
					$row = mysqli_fetch_array($result, MYSQLI_BOTH);
				}
			}
		echo "</tr>";
	}
	echo "</table>";
?>