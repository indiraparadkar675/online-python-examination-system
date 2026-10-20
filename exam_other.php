<?php
session_start();
$con=mysqli_connect("localhost","root","","python_exam");


if(!isset($_SESSION['var'])){
	header("Location:index.php");
}
$uid=$_SESSION['userid'];
?>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

#test{
	width:60vw;
	height:auto;
	min-height:250px;
	background-color:white;
	margin-left:10px;
	margin-top:10px;
	border:#000 1px solid; 
	padding:10px 40px 40px 40px;
}

.button1{
	margin: 10px;
    background-color: blue;
	 padding: 10px 20px;
}
.button2{
	margin: 10px;
    background-color: red;
	 padding: 10px 20px;
}
.button3{
	margin: 10px;
    background-color: purple;
	 padding: 10px 20px;
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

.qans{
	margin: 10px;
	width:40px;
	height:30px;
    background-color: blue;
	padding:2px 2px;
	 color:white;
	 border-radius:20%;
	 text-decoration:none;
}
.qnot{
	margin: 10px;
	width:40px;
	height:30px;
    background-color: red;
	padding:2px 2px;
	 color:white;
	 border-radius:20%;
	 text-decoration:none;
}

.btn_style{
	margin: 10px;
	width:110px;
	height:30px;
    background-color: blue;
	padding:2px 2px;
	 color:white;
	 border-radius:10px;
	 text-decoration:none;
}
.btn_style a{
	 text-decoration:none;
	 color:white;
}
.ques_form{
	display:inline;
}

</style>

</head>
<body>

	<h2 id="test_status">WELCOME <?php echo $_SESSION['var'];?>
	<a href="logout.php" class="btn-login">LOG-OUT</a>
	</h2>
	<table>
	<tr>
	<td><div id="test">

	<?php 
	
	
	if(isset($_POST['submit'])){
				$id=$_POST['submit'];
				$sql="select * from questions where id='$id'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
					echo "<span id='num'>".$row['id']."</span>";
								echo "&nbsp;&nbsp;&nbsp;";
				echo $row['question'];
				echo "<br>";
				?>
				<br>
				<form method="post">
				<input type="hidden" name="num" value="<?php echo $row['id'];?>">
				<input type="radio" name="ans" value="<?php echo $row['a'];?>"><?php echo $row['a'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['b'];?>"><?php echo $row['b'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['c'];?>"><?php echo $row['c'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['d'];?>"><?php echo $row['d'];?><br><br>
				<input type="submit" name="save_next" value="Save and Next" class="btn_style">
				<button name="end" value="End Exam" class="btn_style"><a href="end_review.php">End Exam</a></button>
				</form>
				
			<?php
               
			
	}}
	elseif(isset($_POST['save_next'])){
		if(isset($_POST['ans'])){
		$id=$_POST['num'];
		$ans=$_POST['ans'];
		$mark=0;
	
		$sql="select * from questions where id='$id'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
					$correct=$row['correct'];
					if($ans==$correct){
						$mark=1;
					}
				}
		$sql="select count(*)as total from answers where q_id='$id' and user_id='$uid'";
				$result=(mysqli_query($con,$sql));
           		while($row=mysqli_fetch_array($result)){	
                 $count=$row['total'];
				}
            if($count==0){
				  $sql="insert into answers(user_id,q_id,ans,mark)values('$uid','$id','$ans','$mark')";
		           mysqli_query($con,$sql);
                }else{
					 $sql="update answers set ans='$ans',mark='$mark' where user_id='$uid' and q_id='$id'";
		           mysqli_query($con,$sql);
				}
			
			$sql="select sum(mark)as mark from answers where user_id='$uid'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
			$mar=$row['mark'];
				}
			$per=$mar/8*100;
		  if($per>40){
			  $remark="pass";
		  }else{
			  $remark="fail";
		  }

		$sql="update result set mark='$mar',percent='$per',remark='$remark' where roll_no='$uid'";
	    mysqli_query($con,$sql);
		
				
		$sql="select * from questions";
				$result=mysqli_query($con,$sql);
		$count=mysqli_num_rows($result);
		if($count>$id)
		{
			$id=$_POST['num']+1;
		}else{
			echo "<script>alert('You have reached at the last question');
		window.location.href('home.php');</script>";
			$id=$_POST['num'];
			
		}
		
	
				$sql="select * from questions where id='$id'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
					echo "<span id='num'>".$row['id']."</span>";
								echo "&nbsp;&nbsp;&nbsp;";
				echo $row['question'];
				echo "<br>";
				?>
				<br>
				<form method="post">
				<input type="hidden" name="num" value="<?php echo $row['id'];?>">
				<input type="radio" name="ans" value="<?php echo $row['a'];?>"><?php echo $row['a'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['b'];?>"><?php echo $row['b'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['c'];?>"><?php echo $row['c'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['d'];?>"><?php echo $row['d'];?><br><br>
				<input type="submit" name="save_next" value="Save and Next" class="btn_style">
				<button name="end" value="End Exam" class="btn_style"><a href="end_review.php">End Exam</a></button>
				</form>
				
			<?php
               
			
	}}else{
		echo "<script>alert('select the answer');
		window.location.href('home.php');</script>";
		$id=$_POST['num'];
		$sql="select * from questions where id='$id'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
					echo "<span id='num'>".$row['id']."</span>";
								echo "&nbsp;&nbsp;&nbsp;";
				echo $row['question'];
				echo "<br>";
				?>
				<br>
				<form method="post">
				<input type="hidden" name="num" value="<?php echo $row['id'];?>">
				<input type="radio" name="ans" value="<?php echo $row['a'];?>"><?php echo $row['a'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['b'];?>"><?php echo $row['b'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['c'];?>"><?php echo $row['c'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['d'];?>"><?php echo $row['d'];?><br><br>
				<input type="submit" name="save_next" value="Save and Next" class="btn_style">
				<button name="end" value="End Exam" class="btn_style"><a href="end_review.php">End Exam</a></button>
				</form>
				
			<?php
               
			
	}
	}
	
	
	
	
	
	
}
	   else{
		$id=1;
		$sql="select * from questions where id='$id'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
					echo "<span id='num'>".$row['id']."</span>";
								echo "&nbsp;&nbsp;&nbsp;";
				echo $row['question'];
				echo "<br>";
				?>
				<br>
				<form method="post">
				<input type="hidden" name="num" value="<?php echo $row['id'];?>">
				<input type="radio" name="ans" value="<?php echo $row['a'];?>"><?php echo $row['a'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['b'];?>"><?php echo $row['b'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['c'];?>"><?php echo $row['c'];?><br><br>
				<input type="radio" name="ans" value="<?php echo $row['d'];?>"><?php echo $row['d'];?><br><br>
				<input type="submit" name="save_next" value="Save and Next" class="btn_style">
				<button name="end" value="End Exam" class="btn_style"><a href="end_review.php">End Exam</a></button>
				</form>
				
			<?php
               
			
	}
	}

			?>
	
	
	
	</div></td>
	<td>
	<?php
	
         $sql="select q_id from answers where user_id='$uid'";
			$result=mysqli_query($con,$sql);
			while($row=mysqli_fetch_array($result)){
			$id=$row['q_id'];
            echo "<button class='qans'>".$id."</button>";			
			}
			$sql="SELECT id from questions where id not in(SELECT q_id from answers where user_id='$uid')";
			$result=mysqli_query($con,$sql);
			while($row=mysqli_fetch_array($result)){
			$id=$row['id'];
            echo "<button class='qnot'>".$id."</button>";			
			}
			
			
	?>
	<br>
	<button class="button1"></button> Answered
	<button class="button2"></button> Not Answered<br>
	</td>
	</tr>
	</table>




	<h2 align="center">QUESTION PALETTE</h2>
	
		<?php
	
         $sql="select count(*) from questions";
			$result=mysqli_query($con,$sql);
			$row=mysqli_fetch_array($result);
			$count=$row[0];
			for($i=1;$i<12;$i++){

				?>
			<form method="post" class="ques_form">
				<input type="hidden" name="quest" value="<?php echo $i;?>">
				<input class="qbt" id="<?php echo $i;?>" type="submit" name="submit" value="<?php echo $i;?>">
				</form>
			<?php
			
			}

           ?>
		

</body>
</html>

	
