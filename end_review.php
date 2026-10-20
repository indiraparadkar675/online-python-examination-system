<?php
session_start();
$con=mysqli_connect("localhost","root","","python_exam");


if(!isset($_SESSION['var'])){
	header("Location:index.php");
}
$uid=$_SESSION['userid'];
include 'header.php';
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
  margin:auto;
 
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


.btn-login{
	margin-right:30px;
    background-color: blue;
	padding:5px 5px;
	color:white;
	text-decoration:none;
	height:15px;
	float:right;
	border-radius:10%;
	font-size:12px;
}

.option{
	margin-left:35%;
	margin-top:5%;
	padding:10px;
}
.qbt{
	margin: 10px;
	width:40px;
	height:30px;
    background-color: green;
	padding:2px 2px;
	 color:white;
	 border-radius:20%;
	 text-decoration:none;
}
.btn_style{
	margin-left: 4vw;
	width:110px;
	height:30px;
    background-color: blue;
	padding:2px 2px;
	 color:white;
	 border-radius:20px;;
	 text-decoration:none;
}
.btn{
	margin-left:4vw;
	margin-top:2vw;
	width:auto;
	height:30px;
    background-color: blue;
	padding:2px 2px;
   border-radius:20px;
  text-decoration:none;
  
}
.btn a{
	 text-decoration:none;
	  color:white;
	  padding:2px 2px;
}
</style>

</head>
<body>

	<h2 id="test_status">WELCOME <?php echo $_SESSION['var'];   echo $uid;?>
	<a href="logout.php" class="btn-login">LOG-OUT</a>
	</h2>
	<br><br>
	<table id="st_table">
	<tr>
	<th>Question No</th>
	<th>Question</th>
	<th>Selected Answer</th>
	</tr>
     
	 <?php
	 $sql="select id,question,ans from questions,answers where answers.q_id=questions.id and user_id='$uid'";
	 $result=mysqli_query($con,$sql);
	 while($row=mysqli_fetch_array($result)){
	 echo "<tr>
	 <td>".$row['id']."</td>";
	 echo "<td>".$row['question']."</td>";
	 echo "<td>".$row['ans']."</td>";
	 echo "</tr>";
		 
		 
	 }
	 echo "</table>";
	 ?>


               <div class="option">
          <form method="post">
				<b>Enter Password :</b>&nbsp;<input type="password" name="password" ><br><br>
				<input type="submit" name="end_exam" value="End Exam" class="btn_style">
			<button class="btn" name="back"><a href="exam.php">Go Back To Exam</a></button>
				</form>
</div>

	

</body>
</html>

	<?php
	
    if(isset($_POST['end_exam'])){
		$pass=$_POST['password'];
		$user=$_SESSION['var'];
		$sql="SELECT * FROM registerpage WHERE user_name = '$user' and paswd = '$pass'";
	    $result = mysqli_num_rows(mysqli_query($con,$sql));
		
		if($result>0){
		echo "<script>alert('$user'+' '+'to end exam click on logout button');
		</script>";
		}
		else{
			echo  "<script>alert('wrong password');
		</script>";
		}
		
	}
	

	?>
