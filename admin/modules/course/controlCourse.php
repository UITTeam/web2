<?php
    include('../connect.php');
    $id = $_GET['id']; 
    $txtCourseName = $_POST['txtCourseName'];
    $txtFee = $_POST['txtFee'];
    $txtBenchMark = $_POST['txtBenchMark'];
    $fileDesc = $_FILES['fileDesc']['name'];
    $fileDesc_tmp = $_FILES['fileDesc']['tmp_name'];
    move_uploaded_file($fileDesc_tmp, '../description_course/'.$fileDesc);
    if (isset($_POST['btnSubmitEdit'])) 
    { 
        if ($fileDesc != '')
        {
            $sql = "UPDATE `course` SET `COURSE_NAME` = '$txtCourseName', 
                    `FEE`= '$txtFee', `DESCRIPTION`= '$fileDesc', `BENCHMARK` = $txtBenchMark
                    WHERE `COURSE_ID` = '$id'" ; 
        }
        else {
            $sql = "UPDATE `course` SET `COURSE_NAME` = '$txtCourseName', 
                    `FEE`= '$txtFee', `BENCHMARK` = $txtBenchMark
                    WHERE `COURSE_ID` = '$id'" ; 
        }
       if (mysqli_query($conn, $sql)) 
            //  echo "New record created successfully";
                header('location:../../index.php?click=course&id=1');
        else 
         {
  ?>
            <script>
                 alert('That course is taken. Try another!'); 
                 window.location="../../index.php?click=editCourse";
            </script>          
<?php
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
        }
    else if  (isset($_POST['btnSubmitAdd']))  
    {
        $sql = "INSERT INTO `course`(`COURSE_NAME`, `FEE`, `DESCRIPTION`, `BENCHMARK`) 
        VALUES ('$txtCourseName','$txtFee', '$fileDesc',  $txtBenchMark)";

         if (mysqli_query($conn, $sql)) 
             // echo "New record created successfully";
                 header('location:../../index.php?click=course&id=4');
        else 
         {
           echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }      
    }
    else
    {
        $sql = "DELETE FROM `course` WHERE COURSE_ID='$id'";
      if (mysqli_query($conn, $sql)) 
      {
        header('location:../../index.php?click=course&id=1');
      }
      else 
            {
?>
    <script>
        alert('Error! Khong the xoa khoa co lop dang hoc');
        window.location.href = '../../index.php?click=course';
    </script>
<?php
           // echo "Error: " . $sql1 . "<br>" . mysqli_error($conn);
          // header('location:../../index.php?click=course&id=1');
            }
    }

?>
