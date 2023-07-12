<?php

include 'database.php';


if (!empty($_POST['submit'])) {
     $name = $_POST['name'];
     $Birth_date = $_POST['Birth_date'];
     $father_name = $_POST['father_name'];
     $Gender = $_POST['gender'];
     $Address = $_POST['Address'];
     $course = $_POST['course_intrested'];
     $Email = $_POST['email'];
     $pincode = $_POST['Pin_code'];
     $mobile = $_POST['mo_number'];
     $father_mobile = $_POST['father_number'];
     $last_college_attended = $_POST['last_college_attended'];

     $ssc_year = $_POST['ssc_year'];
     $ssc_uni = $_POST['ssc_uni'];
     $ssc_per = $_POST['ssc_per'];

     $hsc_year = $_POST['hsc_year'];
     $hsc_uni = $_POST['hsc_uni'];
     $hsc_per = $_POST['hsc_per'];

     $graduation_year = $_POST['graduation_year'];
     $graduation_uni = $_POST['graduation_uni'];
     $graduation_per = $_POST['graduation_per'];

     $reference = $_POST['reference'];
     $reg_no = rand(99, 10) . time();


     require("fpdf/fpdf.php");
     $pdf = new FPDF();
     $pdf->Addpage();

     $pdf->Rect(10, 10, $pdf->GetPageWidth() - 20, $pdf->GetPageHeight() - 20);

     $leftMargin = 12; // Left margin in millimeters
     $topMargin = 10; // Top margin in millimeters
     $rightMargin = 12; // Right margin in millimeters
     $bottomMargin = 10; // Bottom margin in millimeters

     $pdf->SetMargins($leftMargin, $rightMargin);
     $pdf->SetAutoPageBreak(true, $bottomMargin);

     $pdf->SetFont("Arial", "B", 18);
     $pdf->Cell(0, 10, "REGISTRATION & ENQUIRE FORM", 0, 1, 'C');
     $pdf->Ln(5);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(17, 10, "Date: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(92, 10, date("Y-m-d"));

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(23, 10, "Reg No: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $reg_no, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(42, 10, "Student Name: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $name, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(38, 10, "Date of Birth: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(70, 10, $Birth_date);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(23, 10, "Gender: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $Gender, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(43, 10, "Student Phone: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(45, 10, $mobile);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(20, 10, "E-mail: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->MultiCell(0, 10, $Email, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(38, 10, "Father Name: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(50, 10, $father_name);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(43, 10, "Father Number: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $father_mobile, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(52, 10, "Course Interested: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $course, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(63, 10, "Last College Attended: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $last_college_attended, 0, 1);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(58, 10, "Residential Address: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->MultiCell(0, 10, $Address, 0, 1);
     $pdf->Ln(5);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(28, 10, "Pin Code: ");
     $pdf->SetFont("Arial", "", 16);
     $pdf->Cell(0, 10, $pincode, 0, 1);
     $pdf->Ln(5);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(20, 10, "Year ", 1, 0, "C");
     $pdf->Cell(40, 10, "Class/Course ", 1, 0, "C");
     $pdf->Cell(60, 10, "Board/University ", 1, 0, "C");
     $pdf->Cell(50, 10, "Subject ", 1, 0, "C");
     $pdf->Cell(0, 10, "% ", 1, 1, "C");
     $pdf->SetFont("Arial", "", 16);

     # SSC DETAILS
     $pdf->Ln(5);
     $pdf->Cell(20, 10, $ssc_year, 1, 0, "C");
     $pdf->Cell(40, 10, "S.S.C ", 1, 0, "C");
     $pdf->Cell(60, 10, $ssc_uni, 1, 0, "C");
     $pdf->Cell(50, 10, "", 1, 0, "C");
     $pdf->Cell(0, 10, $ssc_per, 1, 1, "C");
     $pdf->Ln(5);

     # HSC DETAILS
     $pdf->Cell(20, 10, $hsc_year, 1, 0, "C");
     $pdf->Cell(40, 10, "H.S.C ", 1, 0, "C");
     $pdf->Cell(60, 10, $hsc_uni, 1, 0, "C");
     $pdf->Cell(50, 10, " ", 1, 0, "C");
     $pdf->Cell(0, 10, $hsc_per, 1, 1, "C");
     $pdf->Ln(5);

     # GRADUTION DETAILS
     $pdf->Cell(20, 10, $graduation_year, 1, 0, "C");
     $pdf->Cell(40, 10, "GRADUATION ", 1, 0, "C");
     $pdf->Cell(60, 10, $graduation_uni, 1, 0, "C");
     $pdf->Cell(50, 10, " ", 1, 0, "C");
     $pdf->Cell(0, 10, $graduation_per, 1, 1, "C");
     $pdf->Ln(5);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(0, 10, "(Tick The Reference) ", 0, 1, "C");
     $pdf->Cell(65, 10, "ONLINE PLATFORMS ", 1, 0, "C");
     $pdf->Cell(30, 10, "BANNER ", 1, 0, "C");
     $pdf->Cell(32, 10, "FRIENDS ", 1, 0, "C");
     $pdf->Cell(0, 10, "OTHER ", 1, 1, "C");
     $pdf->SetFont("Arial", "", 16);

     if ($reference == "online_platforms") {
          $pdf->Image('check-mark.png', 40, 206, 8, 8, 'PNG');
          $pdf->Cell(65, 10, " ", "LTRB", 0, "C");
     } else {
          $pdf->Cell(65, 10, "", "LTRB", 0, "C");
     }

     if ($reference == "banner") {
          $pdf->Image('check-mark.png', 90, 206, 8, 8, 'PNG');
          $pdf->Cell(30, 10, "", "LTRB", 0, "C");
     } else {
          $pdf->Cell(30, 10, "", "LTRB", 0, "C");
     }

     if ($reference == "friends") {
          $pdf->Image('check-mark.png', 120, 206, 8, 8, 'PNG');
          $pdf->Cell(32, 10, "", "LTRB", 0, "C");
          #$pdf->Cell(0, 10, "", "LRTB", 1, "C");
     } else {
          $pdf->Cell(32, 10, "", "LTRB", 0, "C");
          #$pdf->Cell(0, 10, "", "LRTB", 1, "C");
     }
     if ($reference == "other") {
          $otherReference = $_POST['other_reference'];
          $reference = $otherReference;
          #$pdf->Image('check-mark.png', 163, 221, 8, 8, 'PNG');
          $pdf->Cell(0, 10, $reference, "LTRB", 0, "C");
     } else {
          $pdf->Cell(0, 10, "", "LTRB", 0, "C");
     }

     $pdf->Ln(38.5);

     $pdf->SetFont("Arial", "B", 16);
     $pdf->Cell(0, 10, "Signature of Applicant ", 0, 1, "R");
     $pdf->SetFont("Arial", "", 16);

     $sql = "insert into student_data(student_name, Birth_date, mo_number, email, father_name, Gender, course_intrested, last_college_attended, Address, Pin_code, father_number, ssc_year, ssc_uni, ssc_per, hsc_year, hsc_uni, hsc_per, graduation_year, graduation_uni, graduation_per, reference) values('$name', '$Birth_date','$mobile','$Email','$father_name','$Gender','$course','$last_college_attended','$Address','$pincode','$father_mobile','$ssc_year','$ssc_uni','$ssc_per','$hsc_year','$hsc_uni','$hsc_per','$graduation_year','$graduation_uni','$graduation_per','$reference')";
     
     mysqli_query($con,$sql);
     mysqli_close($con);
     $file = $name.'.pdf'; # for Name of pdf when download
     $pdf->output($file, 'D');# For pdf download
     #$pdf->output(); # For pdf view before Download
}

?>