<?php
    include('admin/connect.php');
    $id = $_GET['id'];
    $username = $_SESSION['login'];
    $sql = "SELECT * FROM `test` WHERE TEST_ID = $id";
    $sql2 = "SELECT COUNT(QUESTION_ID) AS A FROM `question` 
             WHERE TEST_ID = $id
             GROUP BY TEST_ID";
    $sql3 = "SELECT * FROM `class` , `study`
            WHERE class.CLASS_ID = study.CLASS_ID
            AND study.USERNAME = '$username'";
            
    $result = $conn->query($sql);
    $result2 = $conn->query($sql2);
    $result3 = $conn->query($sql3);
    $row = $result->fetch_assoc();
    $row2 = $result2->fetch_assoc();
    $row3 = $result3->fetch_assoc();

    $sql_check_times = "SELECT COUNT(TIMES) AS A FROM `result` WHERE USERNAME = '$username'
                        AND TEST_ID = $id
                        group by USERNAME, TEST_ID";
    $result_check_times = $conn->query($sql_check_times);
    $row_check_times = $result_check_times->fetch_assoc();
?>

<link rel="stylesheet" href="./css/test-detail.css">
<link rel="stylesheet" type="text/css" href="./css/doing-test.css">
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css">
<script src="./js/doing-test-2.js"></script>
<div style='display: none' name='times' value="<?php echo $row_check_times['A']?>" ></div>
<div id='test-detail' class = 'content container '>
    <div name='test' id='<?php echo $row['TEST_ID'];?>' class_id='<?php echo $row3['CLASS_ID'];?>' class="test-detail row">
        <div clas='col-md-12 text-center'>
            <h4 class="test-title " style="font-size: 20px;""><?php echo $row['TEST_NAME'];?></h4>
             
             <hr>
            <div>
              <img src="./img/clock-icon.png" alt="address">
              <p>Time limit: <span id='timelimmit' value='<?php echo $row['TIMELIMMIT'];?>'><?php echo $row['TIMELIMMIT'];?> minutes</span></p>
              <img src="./img/count-icon.png" alt="mail"><p>Questions: <span name='num_question' value='<?php echo $row2['A'];?>'><?php echo $row2['A'];?></span></p> 
             </div> 
             <div class='test-submit'>
             <!---
             <a href="./index.php?click=doing-test&id=<?php // echo $row['TEST_ID'];?>"> -->
             <button id='DoTest' class="btn btn-success" >Do test</button>
             </div>  
        </div>
    </div>
</div> 

<div id='testing' class='content' style='display: none'>
<div class='container animated fadeInDown'>
		<div class="row">
			<div id='title' class='col-md-12 text-center'>
            <h1><?php echo $row['TEST_NAME'];?></h1>
            <div>
            <span>Remaining Time:</span>
            <span id="m"> Minutes</span>: 
            <span id="s"> Secounds</span>
        </div>	
			</div>
		</div>
		<div class="row" >
			<div class="col-md-3"></div>
			<div class="col-md-6" style="background: white; border-radius: 15px">
				 <form id="q_a">
  					<div id="answers">						  
					  </div>
 					 <hr>
 					 <div class="text-center"><input id="checkResult" class="btn btn-success" type="submit" value="Submit" />
                     
                      </div>
 					 <br>
				</form>
			</div>
			<div class="col-md-3"></div>
		</div>
		<br>
	</div> 
</div>