<?php
    $username = $_SESSION['login'];


?>


<link rel="stylesheet" type="text/css" href="css/user-locopy.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<div class="container">
	<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-6 info_">
	<canvas id="myChart"></canvas>
	</div>
        
	</div>
</div>


<script>
function renderChart(data, labels) {
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: 'This week',
                data: data,
            }]
        },
    });
}

$(document).ready(function () {
	
	data = [2500000, 1400000, 1200000, 1500000, 1800000, 1900000, 2200000];
        labels =  ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"];
        renderChart(data, labels);
  })
</script>