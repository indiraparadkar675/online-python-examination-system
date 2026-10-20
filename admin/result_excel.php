<?php
session_start();
if(!isset($_SESSION['id'])){
	header("Location:index.php");
}
$con=mysqli_connect("localhost","root","","python_exam");

     $sql = "SELECT roll_no,user_name,mark FROM result";
     $result = mysqli_query($con, $sql);
	  $html='<table><tr>
	 <th>Roll No</th>
	<th>Name</th>
	<th>Date</th>
	<th>Marks</th>
	<th>Percentage</th>
	<th>Remark</th>
	 </tr>
	 ';
	 while($row=mysqli_fetch_array($result)){
		 $mark=$row['mark'];
		  $per=$mark/50*100;
		  if($per>40){
			  $remark="pass";
		  }else{
			  $remark="fail";
		  }
		  $date=date("d/m/Y");
		$html.='<tr><td>'.$row['roll_no'].'</td><td>'.$row['user_name'].'</td><td>'.$date.'</td><td>'.
                $mark.'</td><td>'.$per.'</td><td>'.$remark.'</td><td></tr>';		
               }
	    $html.='</table>';
		header("Content-Type:application/xls");
		header("Content-Disposition:attachment;filename=result.xls");
		echo $html;
?>