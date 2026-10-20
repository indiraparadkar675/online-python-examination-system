<?php
$con=mysqli_connect("localhost","root","","python_exam");
session_start();
if(!isset($_SESSION['id'])){
	header("Location:index.php");
}
?>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body{
	margin:2%;
}

.btn-login{
	margin-right:30px;
    background-color: blue;
	padding:5px 20px;
	color:white;
	text-decoration:none;
	height:15px;
	float:right;
	border-radius:20px;
	font-size:13px;
}

#st_table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#st_table td, #st_table th {
  border: 1px solid #ddd;
  padding: 8px;
  
}

#st_table tr:{background-color:#ddd;}

#st_table tr:hover {background-color:#f2f2f2;  }

#st_table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color:blue;
  color: white;
}


#st_table td {
 
  text-align: center;
 
}
.btn{
	margin-left:5%;
	margin-top:10%;
	width:100px;
	height:30px;
    background-color: blue;
	padding:2px 2px;

  border-radius:20px;
  text-decoration:none;
  
}
.btn a{
	 text-decoration:none;
	  color:white;
}
.header{
	display:flex;
}
.option{
	margin-left:30%;
	padding:10px;
}
.generate{
	margin:5px;
	width:100px;
	height:30px;
    background-color: blue;
	padding:2px 2px;
 color:white;
  border-radius:20px;
  text-decoration:none;
}

.ques_form input{
	margin:auto;
	
}
.ques_form span{
	margin-left:40%;

}
.frm{
	margin-left:40%;
	margin-top:10%;
}
</style>

</head>
<body>
	<h2>Admin Panel
	<a href="logout_admin.php" class="btn-login">LOG-OUT</a>
	<a href="attendance.php" class="btn-login">ATTENDANCE</a>
	<a href="result.php" class="btn-login">RESULT</a>
	<a href="home.php" class="btn-login">HOME</a>
 </h2>
	<div class="frm">
<form method="post" action="generate_certificate.php" class="ques_form">
  <label for="name" style="margin:20px;">Name:</label>
  <input type="text" id="name" name="name"><br><br>
  <label for="enroll" style="margin:8px;">Enroll No:</label>
  <input type="text" id="enroll" name="enroll"><br><br>
   <label for="subject" style="margin:16px;">Subject:</label>
  <input type="text" id="subject" name="subject"><br><br>
   <label for="date" style="margin:25px;">Date:</label>
  <input type="date" id="date" name="date"><br><br>
  <input type="submit" name="submit" value="Generate" style="margin-left:100px;" class="generate">
</form> 


</div>