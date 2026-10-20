<!DOCTYPE html>
<html>
	<head>
		<title>GOVERNMENT POLYTECHNIC MALVAN</title>
		<link rel="stylesheet" type="text/css" href="style.css"></link>
		<style>
		.container{
	  width: 400px;
	  height: 400px;
	  text-align: center;
	  background-color: rgba(52, 73, 94, 0.7);
	  border-radius: 4px;
	  margin: 0 auto;
	  margin-top: 80px;
}
input[type="number_format"],input[type="text"],input[type="password"]{
	  height: 45px;
	  width: 300px;
	  font-size: 20px;
	  border-radius: 4px;
	  border: none;
	  margin-bottom: 20px;
	  background-color: #000;
	  padding-left: 30px;
	  color:red;
	  
}
		</style>
	</head>

	<body style="background-image:url('https://media.giphy.com/media/xT9IgN8YKRhByRBzMI/giphy.gif')">
	<center><h2 style="color:#fff;font-size:40px;">WELCOME TO GOVERNMENT POLYTECHNIC MALVAN EXAM PORTAL</h2></center>
		<div class="container">
			<img src="men.png" />
			<form method="post" action="#">
				<div class="font-input">
					<input type="text" name="username" placeholder="Enter Name">
				</div>
				<div class="font-input">
					<input type="password" name="password" placeholder="Enter Password">
				</div>
				<input type="submit" name="submit" value="Login" class="btn-login"><br></br><br></br>
				
				<a style="text-decoration:none" href="registration.php" class="btn-login">NEW USER REGISTER HERE</a>
			</form>
		</div>
	</body>
</html>


<?php

$con = mysqli_connect("localhost","root","","python_exam");
if(isset($_POST['submit'])){
	$user = $_POST['username'];
	$psd = $_POST['password'];
	
	
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$result="SELECT id FROM registerpage WHERE user_name = '$user' and paswd = '$psd'";
	$dummy = mysqli_query($con,$result);
	if(mysqli_num_rows($dummy) > 0)
	{
		while($row=mysqli_fetch_array($dummy)){
		$uid=$row['id'];
	}
		       session_start();
	           $_SESSION['var']=$user;
		       $_SESSION['userid']=$uid;
			 date_default_timezone_set("Asia/Kolkata");
			   $login=date("h:i:s");
			   $logout="-";
	$sql="update registerpage set status='online',login_time='$login',logout_time='$logout' where user_name='$user'";
	mysqli_query($con,$sql);
	$date=date("d/m/Y");
	$sql="insert into result(roll_no,user_name,doe)values('$uid','$user','$date')";
	 mysqli_query($con,$sql);
	
	
					header("Location:exam.php");
	}
	else
	{
		echo "details do not match!!!!";
	}
	
	//if(mysqli_query($query)){
	
	//}
	mysqli_close($con);
}
?>