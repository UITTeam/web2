
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="css/result.css">
<link rel="stylesheet" type="text/css" href="css/animate.css">
<div class='content'>
<?php

   $test_id = $_GET['id'];
   @$_SESSION['result_'.$test_id] += 1;
 //  echo $test_id;
   
?>
<div class="limiter">
        <div class="container-table100">
            <div class="wrap-table100">
                <div class="table">
                    <div class="row header">
                        <div class="cell">
                            Test Name
                        </div>
                        <div class="cell">
                            Times
                        </div>
                        <div class="cell">
                            Point
                        </div>  
                    </div>

                    <div class="row">
 <?php
     include('admin/connect.php');
    foreach($_SESSION as $name => $value) 
    {
      // echo $name.' '.$value.'<br>'; // echo bai test A lam lan thu n
       if ($value > 0)  
       {
           if (substr($name, 0, 5) == 'result_')
           { 
               $test_id = substr($name, 5, strlen($name=5));

               $sql = "SELECT * FROM `test` WHERE TEST_ID=$test_id";
               $result = $conn->query($sql);
               while ($row = $result->fetch_assoc())
               {
                   ?>
                 <div class="cell" data-title="Full Name">
                   <?php echo $row['TEST_NAME'];?>
                 </div>
                <div class="cell" data-title="Full Name">
                   <?php echo $row['TEST_NAME']; ?>
                 </div>
             <?php
               }  
           }
       }
    }
 
 ?>
                       
                        
                    </div> 

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css">

    