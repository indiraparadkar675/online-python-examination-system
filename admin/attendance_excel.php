<?php
session_start();
if(!isset($_SESSION['id'])){
	header("Location:index.php");
}
$con=mysqli_connect("localhost","root","","python_exam");
    $sql = "SELECT * FROM registerpage";
     $result = mysqli_query($con, $sql);
	 $html='<table><tr>
	 <td>Roll NO</td>
	 <td>Name</td>
	 <td>date</td>
	 <td>Status</td>
	 <td>In Time</td>
	 <td>Out Time</td>
	 </tr>
	 ';
     while($row=mysqli_fetch_array($result)){
		  $date=date("d/m/Y");
		$html.='<tr><td>'.$row['roll_no'].'</td><td>'.$row['user_name'].'</td><td>'.$date.'</td><td>'.
                $row['status'].'</td><td>'.$row['login_time'].'</td><td>'.$row['logout_time'].'</td><td></tr>';		
               }
	    $html.='</table>';
		header("Content-Type:application/xls");
		header("Content-Disposition:attachment;filename=attendance.xls");
		echo $html;
?>