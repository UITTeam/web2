<?php
 include('admin/modules/result/connection.php');
 $tittle = $_GET['id'];
 $username = $_SESSION['login'];
 $sql1 = "SELECT COUNT(USERNAME) AS NUMBER_OF_STD FROM STUDY
 WHERE CLASS_ID = '$tittle'";
  $query1 = $conn->prepare($sql1);
  $query1->execute();
  $row1 = $query1->fetch(PDO::FETCH_ASSOC);
 
 $sql = "SELECT CLASS.CLASS_NAME, STUDY.RANK, COUNT(STUDY.USERNAME) AS QUANTITY 
                FROM CLASS,STUDY 
                WHERE CLASS.CLASS_ID=STUDY.CLASS_ID AND CLASS.CLASS_ID = '$tittle'
                GROUP BY STUDY.RANK
                ORDER BY  STUDY.RANK ASC";
        $query = $conn->prepare($sql);
        $query->execute();
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		$avg =0; $be_avg =0; $exc =0; $goo =0; $wea =0;
		foreach ($result as $row) {
			if($row['RANK']=='AVERAGE'){
				$avg =$row["QUANTITY"]/$row1['NUMBER_OF_STD']*100;
				$avg = round($avg,2,PHP_ROUND_HALF_EVEN) ; 
			}
			else if($row['RANK']=='BELOW AVERAGE'){
				$be_avg =$row["QUANTITY"]/$row1['NUMBER_OF_STD']*100;
				$be_avg = round($be_avg,2,PHP_ROUND_HALF_EVEN) ;
			}
			else if($row['RANK']=='EXCELLENT'){
				$exc =$row["QUANTITY"]/$row1['NUMBER_OF_STD']*100;
				$exc = round($exc,2,PHP_ROUND_HALF_EVEN) ;
			}
			else if($row['RANK']=='GOOD'){
				$goo =$row["QUANTITY"]/$row1['NUMBER_OF_STD']*100;
				$goo = round($goo,2,PHP_ROUND_HALF_EVEN) ;
			}
			
			else {
				$wea =$row["QUANTITY"]/$row1['NUMBER_OF_STD']*100;
				$wea = round($wea,2,PHP_ROUND_HALF_EVEN) ;
			}
		}


?>

<link rel="stylesheet" type="text/css" href="css/user-locopy.css">
<script src="js/Chart.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-6 info_">
            <div class="panel panel-default">
                <div class="panel-heading">Test Result</div>
                <br>
                <div class="panel-body">
					<center>
				<canvas id="countries" width="400" height="400" style="opacity: 1"></canvas>
					</center>
                </div>
            </div>
        </div>
    </div>
</div>
<div name='exc' value="<?php echo $exc ?>"></div>
<div name='goo' value="<?php echo $goo ?>"></div>
<div name='avg' value="<?php echo $avg ?>"></div>
<div name='beavg' value="<?php echo $be_avg ?>"></div>
<div name='wea' value="<?php echo $wea ?>"></div>
<script type="text/javascript">
   // pie chart data
  var exc = parseFloat($('div[name="exc"]').attr("value")) ;
  var goo = parseFloat($('div[name="goo"]').attr("value")) ;
  var avg = parseFloat($('div[name="avg"]').attr("value")) ;
  var beavg = parseFloat($('div[name="beavg"]').attr("value")) ;
  var wea = parseFloat($('div[name="wea"]').attr("value")) ;
   var pieData = [
        {
			value: 25
			//exc
			,
			color:"#CDD6D5"
		},
        {
			value :25
		//	goo
			,
            color : "#F0B99A"
        },
        {
			value :10
			//avg
			,
            color : "#ECD2A2"
		},
		{
			value :10
		//	beavg
			,
            color : "#D0E8B3"
        },
        {
			value :30
		//	wea
			,
            color : "#CAE9E0"
        }
    ];
	console.log(pieData);
    // pie chart options
    var pieOptions = {
        segmentShowStroke : false,
        animateScale : true
    }
 
    // get pie chart canvas
    var countries= document.getElementById("countries").getContext("2d");
 
    // draw pie chart
    new Chart(countries).Pie(pieData, pieOptions);
</script>