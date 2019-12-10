<?php
    include('../admin/connect.php');
    session_start();
    if (!isset($_SESSION['login']))
    {
        // Khong phai user
        $username = 'null';
    }
    else 
    {
       $username = $_SESSION['login']; //ten dang nhap hien tai
       $test_id = $_POST['test_id']; //id bai test
       $class_id = $_POST['class_id']; //lay id class
       $correct_answer = $_POST['correct']; //so dap an dung
       $num_question =  $_POST['num_question'];
       $times = $_POST['times'];
       $insert_times = 1;
       $point = (10/$num_question)*$correct_answer;
       if ($times >= 1) {
         $insert_times = 2;
       }
        $sql = "INSERT INTO `result` VALUES ('$username', $test_id, $insert_times,$point)";
        if (mysqli_query($conn, $sql)) 
        {
           $sql2 = "UPDATE `study` SET  `RESULT` = (RESULT + $point)/$insert_times
                    WHERE `USERNAME`='$username'";
            if (mysqli_query($conn, $sql2)) {
                $rank = '';
              //  echo 'Your result have been saved';
              $sql_rank = "SELECT * FROM `study` WHERE USERNAME='$username' AND `CLASS_ID` = '$class_id'";
              $result_rank = $conn->query($sql_rank);
              $row_rank = $result_rank->fetch_assoc();
              if ($row_rank['RESULT'] >= 8.5)
              {
                  $rank = 'EXCELLENT';
              }
              else if ( 7.0 <= $row_rank['RESULT'] &&  $row_rank['RESULT'] <= 8.4)
              {
                $rank = 'GOOD';
              }
              else if ( 5.5 <= $row_rank['RESULT'] &&  $row_rank['RESULT'] <= 6.9)
              {
                $rank = 'AVERAGE';
              }
              else if ( 4.0 <= $row_rank['RESULT'] &&  $row_rank['RESULT'] <= 5.4)
              {
                $rank = 'BELOW AVERAGE';
              }
              else {
                $rank = 'WEAK';
              }
           //   echo $row_rank['RESULT'] ;
              $sql_update_rank = "UPDATE `study` SET `RANK` = '$rank'
                  WHERE `USERNAME`='$username'
                  AND `CLASS_ID` = '$class_id'";
                if (mysqli_query($conn, $sql_update_rank))
                {
                    echo 'Your result have been saved';
                }
            }
            else {
                echo "Error: " . $sql2 . "<br>" . mysqli_error($conn);
            }
        }
       else 
       {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
       } 
         
    }
   // echo  $class_id;
?>