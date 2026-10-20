<?php
session_start();
$con=mysqli_connect("localhost","root","","python_exam");
 $user=$_SESSION['var'];
 date_default_timezone_set("Asia/Kolkata");
 $logout=date("h:i:s");
$sql="update registerpage set status='offline',logout_time='$logout' where user_name='$user'";
mysqli_query($con,$sql);
unset($_SESSION['var']);
header('location:index.php');
?>