<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" integrity="sha512-wnea99uKIC3TJF7v4eKk4Y+lMz2Mklv18+r4na2Gn1abDRPPOeef95xTzdwGD9e6zXJBteMIhZ1+68QC5byJZw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
	height:25px;
	float:right;
	border-radius:20px;
	font-size:13px;
	font-weight:bold;
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
	<h2><b style="font-size:22px;">Admin Panel</b>
	<a href="logout_admin.php" class="btn-login">LOG-OUT</a>
	<a href="attendance.php" class="btn-login">ATTENDANCE</a>
	<a href="result.php" class="btn-login">RESULT</a>
	<a href="home.php" class="btn-login">HOME</a>
	
 </h2>
<section class="text-gray-600 body-font relative">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-12">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Single Question Upload</h1>
    </div>
    <div class="lg:w-1/2 md:w-2/3 mx-auto">
      <div class="flex flex-wrap -m-2">
        <div class="p-2 w-full">
          <div class="relative">
<form method="post">
<label for="Name" class="leading-7 text-sm text-gray-600">Question</label>
            <input type="text" id="editor" name="editor" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
		
		
		<div class="p-2 w-full">
          <div class="relative">
            <label for="Enroll" class="leading-7 text-sm text-gray-600">Option 1</label>
            <input type="text" id="option1" name="option1" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
		
		<div class="p-2 w-full">
          <div class="relative">
            <label for="Address" class="leading-7 text-sm text-gray-600">Option 2</label>
            <input type="text" id="option2" name="option2" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
		
		<div class="p-2 w-full">
          <div class="relative">
            <label for="DOB" class="leading-7 text-sm text-gray-600">Option 3</label>
            <input type="text" id="option3" name="option3" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
		
		<div class="p-2 w-full">
          <div class="relative">
            <label for="Class" class="leading-7 text-sm text-gray-600">Option 4</label>
            <input type="text" id="option4" name="option4" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
		
		<div class="p-2 w-full">
          <div class="relative">
            <label for="Department" class="leading-7 text-sm text-gray-600">Correct</label>
            <input type="text" id="correct" name="correct" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
		
		
		
		
       
        <div class="p-2 w-full">
          <button class="flex mx-auto text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg" name="submit" type="submit" value="submit">Upload</button>
		  
</form>

</body>
</html>
<?php
if(isset($_POST['submit'])){
    $question=$_POST['editor'];
    $option1=$_POST['option1'];
    $option2=$_POST['option2'];
    $option3=$_POST['option3'];
    $option4=$_POST['option4'];
    $correct=$_POST['correct'];
    $con=mysqli_connect("localhost","root","","python_exam");
    $sql="insert into questions(question,a,b,c,d,correct,mark)values('$question','$option1','$option2','$option3','$option4','$correct',1)";
    mysqli_query($con,$sql);
}
?>