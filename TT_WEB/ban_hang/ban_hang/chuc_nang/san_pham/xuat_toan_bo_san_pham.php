<?php 
	$so_du_lieu=15;
	
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select count(*) from san_pham;";
	$result = mysqli_query($link, $sql);
	
	$row = mysqli_fetch_array($result, MYSQLI_BOTH);
	$so_trang=ceil($row[0]/$so_du_lieu);
	
	if(!isset($_GET['trang'])){$vtbd=0;}else{$vtbd=($_GET['trang']-1)*$so_du_lieu;}
	
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "select count(*) from san_pham;";
	$result = mysqli_query($link, $sql);
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
					$row=mysqli_fetch_array($result, MYSQLI_BOTH);
				}
			}
		echo "</tr>";
	}
	echo "<tr>";
		echo "<td colspan='3' align='center' >";
			echo "<div class='phan_trang' >";
				for($i=1;$i<=$so_trang;$i++)
				{
					$link="?thamso=xuat_san_pham_2&trang=".$i;
					echo "<a href='$link' >";
						echo $i;echo " ";
					echo "</a>";
				}
			echo "</div>";
		echo "</td>";
	echo "</tr>";
	echo "</table>";
?>