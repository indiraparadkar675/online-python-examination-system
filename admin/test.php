<?php
$con=mysqli_connect("localhost","root","","python_exam");
session_start();


$sql="select * from questions where id='$id'";
				$result=mysqli_query($con,$sql);
				while($row=mysqli_fetch_array($result)){
					$correct=$row['correct'];
					if($ans==$correct){
						$mark=1;
					}
				}
				
				?>