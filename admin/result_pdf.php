<?php

session_start();
if(!isset($_SESSION['id'])){
	header("Location:index.php");
}

require('fpdf/fpdf.php');
$pdf = new FPDF();
$pdf->SetLeftMargin(25);
$pdf->AddPage();
$pdf->SetFont('Arial','B',12);
$pdf->SetFillColor(230,230,230);
$pdf->Cell(150,12,'Result For Exam',0,0,'C');
$pdf->Ln();
$pdf->Cell(20,10,'Roll NO',1,0,'C',true);
$pdf->Cell(50,10,'Name',1,0,'C',true);
$pdf->Cell(30,10,'Date',1,0,'C',true);
$pdf->Cell(20,10,'Mark',1,0,'C',true);
$pdf->Cell(20,10,'Percent',1,0,'C',true);
$pdf->Cell(20,10,'Result',1,0,'C',true);
$pdf->Ln();
$con=mysqli_connect("localhost","root","","python_exam");
  $sql =  "SELECT roll_no,user_name,mark FROM result";
     $result = mysqli_query($con, $sql);
while($row=mysqli_fetch_array($result)){
	$mark=$row['mark'];
	$per=$mark/50*100;
		  if($per>40){
			  $remark="pass";
		  }else{
			  $remark="fail";
		  }
		  $per=$mark/50*100;
		  $date=date("d/m/Y");
		$pdf->Cell(20,8,$row['roll_no'],1,0,'C');
		$pdf->Cell(50,8,$row['user_name'],1,0,'C');
		$pdf->Cell(30,8,$date,1,0,'C');
        $pdf->Cell(20,8,$row['mark'],1,0,'C');
		$pdf->Cell(20,8,$per,1,0,'C');
        $pdf->Cell(20,8,$remark,1,0,'C');
        $pdf->Ln();
}

$pdf->Output('Exam_Result.pdf','I');
?>