<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<?php 
	$id=$_GET['id'];
	
	$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
	mysqli_set_charset($link, "UTF8");
	mysqli_select_db($link,"ban_hang");
	$sql = "DELETE FROM hoa_don WHERE id = $id ;";
	$result = mysqli_query($link, $sql);
	$link="?thamso=hoa_don&trang=".$_GET['trang'];
?>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Xóa hóa đơn</title>
	</head>
	<body>
		<script type="text/javascript" >
			window.location="<?php echo $link; ?>";
		</script>
	</body>
</html>
<?php 
	exit();
?>