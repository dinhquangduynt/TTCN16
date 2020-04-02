<style type="text/css" >
	div.slideshow img {width:600px;height:260px}
</style>
<center>
<div class="slideshow" id="slideshow" >
	<?php 
		$link = mysqli_connect("localhost","root","") or die ("Khong the ket noi den CSDL");
		mysqli_set_charset($link, "UTF8");
		mysqli_select_db($link,"ban_hang");
		$sql = "select hinh,lien_ket from slideshow order by id;";
		$result = mysqli_query($link, $sql);
			
		while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
		{
			$link_hinh="hinh_anh/slideshow/".$row['hinh'];
			echo "<a href='".$row['lien_ket']."'>";
				echo "<img src='".$link_hinh."'>";
			echo "</a>";
		}
	?>
</div>
</center>
<script type="text/javascript" >

	var i_img=0;
	var div_slideshow=document.getElementById("slideshow");
	var img_slideshow=div_slideshow.getElementsByTagName("img");
	for(var i=0;i<img_slideshow.length;i++)
	{
		img_slideshow[i].style.display="none";
	}
	img_slideshow[0].style.display="block";
	
	setInterval(function(){
		img_slideshow[i_img].style.display="none";
		i_img=i_img+1;
		if(i_img>=img_slideshow.length){i_img=0;}
		img_slideshow[i_img].style.display="block";		
	},5000);
</script>