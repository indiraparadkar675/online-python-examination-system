<?php
$image=imagecreatefromjpeg("certificate.jpg");
$color=imagecolorallocate($image,19,21,22);
$font="C:\Windows\Fonts\BRUSHSCI.TTF";
imagettftext($image,40,0,200,200,$color,$font,"vishal");
header("Content-type:image/jpeg");
imagejpeg($image);
imagedestroy($image);



   ?>