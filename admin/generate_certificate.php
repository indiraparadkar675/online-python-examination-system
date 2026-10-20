<?php
$con=mysqli_connect("localhost","root","","python_exam");
session_start();
if(!isset($_SESSION['id'])){
	header("Location:index.php");
}

if(isset($_POST['submit'])){
	$name=$_POST['name'];
	$enroll=$_POST['enroll'];
	$subject=$_POST['subject'];
	$date=$_POST['date'];
	$image=imagecreatefromjpeg("certificate.jpg");
	$color=imagecolorallocate($image,19,21,22);
	$font="C:\Windows\Fonts\BRUSHSCI.TTF";
	$file_path="certificate/".$name.".jpg";
	$file_path_pdf="certificate/".$name.".pdf";
	imagettftext($image,40,0,400,350,$color,$font,$name);
	imagettftext($image,40,0,450,470,$color,$font,$subject);
	imagettftext($image,20,0,220,565,$color,$font,$date);
	header("Content-type:image/jpeg");
	imagejpeg($image,$file_path);
	imagedestroy($image);
	
	require 'fpdf/fpdf.php';
	$pdf=new FPDF();
	$pdf->AddPage();
	$pdf->Image($file_path,0,0,210,250);
	$pdf->Output($file_path_pdf,"F");
	
/*	require 'mailer/PHPMailer/PHPMailerAutoload.php';
    require 'mailer/constants.php';

//mail send sample code
$mail = new PHPMailer();
//$mail->SMTPDebug = 3;
$mail->isSMTP();
$mail->SMTPAuth =true;
$mail->SMTPSecure='tls';  //tls ssl
$mail->Host = 'smtp.gmail.com';
$mail->Port = 587;    // 587 465
$mail->IsHTML(true);
$mail->CharSet='UTF-8';
$mail->Username='padelkarshweta73@gmail.com';
$mail->Password=PASSWORD;
$mail->SetFrom('padelkarshweta73@gmail.com', 'vishal');
$mail->AddAddress('vicky141192@gmail.com','svgs');
$mail->addReplyTo('no-reply@gmail.com', 'No-reply');
$mail->addCC('kamblevishal007@gmail.com');
$mail->addAttachment('byby.png');   
$mail->Subject = 'Certificate of Exam';
$mail->Body="Hello Student,Kindly check the attachment";
$mail->SMTPOptions = array(
    'ssl' => [
        'verify_peer' => false,
        'verify_depth' => false,
        'allow_self_signed' => false,
        'verify_peer_name' => false
    ]
);

if (!$mail->send()) {
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message sent!';
}*/
	
}
?>