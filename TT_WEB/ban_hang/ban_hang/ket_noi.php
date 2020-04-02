<?php
    // mysqli_connect("localhost","root","");
    // mysqli_select_db("ban_hang");
    // mysqli_query('SET NAMES "UTF8"');
    $link = mysqli_connect("localhost:3308","root","") or die ("Khong the ket noi den CSDL");
    mysqli_set_charset($link, "UTF8");
    mysqli_select_db($link,"ban_hang");
?> 