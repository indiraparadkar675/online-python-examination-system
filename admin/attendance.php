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

#st_table tr:{background-color:#ddd; }

#st_table tr:hover {background-color: #f2f2f2;}

#st_table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: blue;
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
.option{
	margin-left:30%;
	padding:10px;
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
	<table id="st_table">
	<tr>
	<th>Roll.No.</th>
	<th>Name</th>
	<th>Date</th>
	<th>Status</th>
	<th>In Time</th>
	<th>Out Time</th>
	</tr>
<?php
     $sql = "SELECT * FROM registerpage";
     $result = mysqli_query($con, $sql);
	 while($row=mysqli_fetch_array($result)){
     echo "<tr>
	 <td>".$row['roll_no']."</td>";
	 echo "<td>".$row['user_name']."</td>";
	 echo "<td>".date("d/m/Y")."</td>";
	 echo "<td>".$row['status']."</td>";
	 echo "<td>".$row['login_time']."</td>";
	 echo "<td>".$row['logout_time']."</td>";
	 echo "</tr>";


	 }

	    echo"</table>";
?>
	
	<div class="option">
    <button class="btn" name="export_excel"><a href="attendance_excel.php">Export Excel</a></button>
	<button class="btn" name="export"><a href="attendance_pdf.php">Export PDF</a></button>
	</div>
</body>
</html>