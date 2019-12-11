<?php
	//include('admin/connect.php');
	$username = $_SESSION['login'];
	$sql_role = "SELECT * FROM `account` WHERE username = '$username'";
	$result_role = $conn->query($sql_role);
	$row_role = $result_role->fetch_assoc();
	if ($row_role['role_id'] == 'admin')
	{
		$sql = "SELECT * 
			FROM test"; 
	}
	else if ($row_role['role_id'] == 'student') {
		$sql = "SELECT * 
				FROM test,  study, class
				WHERE test.CLASS_ID = class.CLASS_ID 
					AND class.CLASS_ID = study.CLASS_ID
					and study.USERNAME = '$username'
				"; 
	}
	//Hien thi danh sach cai bai test ma giao vien dang day
	else if ($row_role['role_id'] == 'teacher') {
		$sql = "SELECT * 
				FROM test, class
				WHERE test.CLASS_ID = class.CLASS_ID 
				and TEACHER = '$username'"; 
	}

	else {
		$sql = "SELECT * 
				FROM test, class
				WHERE test.CLASS_ID = class.CLASS_ID 
					and class.TEACHER = '$username'"; 
	}
	$result = $conn->query($sql);
?>
	<link rel="stylesheet" type="text/css" href="./css/animate.css">
	<link rel="stylesheet" type="text/css" href="./css/test.css">
	<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="./js/js_test.js"></script>
<div class='content' style='margin-top: 0px'>
    <ul class="menu"> 
			<li data-type="free">Free Tests</li>
			<li data-type="todo">Todo Tests</li>
			<li data-type="all">All</li>
		</ul>
	<div class="test-list">	
<?php
	while ($row = $result->fetch_assoc())
	{	
?>
		<article class="test-listing <?php echo $row['TYPE']; ?> all">
     			 <a class="test-title" href="index.php?click=test-choosen&id=<?php echo $row['TEST_ID']; ?>">
				  <?php echo $row['TEST_NAME'];?></a>
    			  <div class="test-image">
    				    <a href="index.php?click=test-choosen&id=<?php echo $row['TEST_ID']; ?>">
							<img  src="admin/modules/imgTest/<?php echo $row['IMG'];?>"></a>
    			 </div>
   		</article>
<?php
	}
?>
	</div>
</div>

