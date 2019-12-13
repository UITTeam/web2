<?php
    include('admin/modules/result/connection.php');
    //include('admin/connect.php');
    //	session_start();
        $tittle = $_GET['id'];
        $username = $_SESSION['login'];
        $sql_role = "SELECT * FROM `account` WHERE username = '$username'";
        $query_role = $conn->prepare($sql_role);
        $query_role->execute();
        $result_role = $query_role->fetch(PDO::FETCH_ASSOC);

        $sql_std = "SELECT * FROM STUDY, RESULT, TEST
                    WHERE STUDY.CLASS_ID='$tittle' 
                    AND STUDY.USERNAME = RESULT.USERNAME
                    AND RESULT.TEST_ID = TEST.TEST_ID";
        $query_std = $conn->prepare($sql_std);
        $query_std->execute();
        $result_std = $query_std->fetchAll(PDO::FETCH_ASSOC);
?>
<link rel="stylesheet" type="text/css" href="css/user-manage-cls-std.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-6 info_">
<?php
           
            echo '<div class="s_tittle"><i>Learning Outcome > ' . $tittle . '</i></div>';
            
            if ($row['role_id'] == 'student')
            {
                ?>
                     <div class="table-std">
                <table id='list-student'>
                    <tr>
                        <td>TEST NAME</td>
                        <td>TIMES</td>
                        <td>RESULT</td>                   
                    </tr>
                    <?php
                    foreach ($result_std as $row) {
                        echo '<tr>
                            <td>' . $row["TEST_NAME"] . '</td>
                            <td>' . $row["TIMES"] . '</td>
                            <td>' . $row["POINT"] . '</td>
                            </tr>';
                    }

                    ?>
                </table>
            </div>

                <?php
            }
else {
?>
        <div class="table-std">
                <table id='list-student'>
                    <tr>
                        <td>USERNAME</td>
                        <td>FULL NAME</td>
                        <td>RESULT</td>
                        <td>RANK</td>                    
                    </tr>

                    <?php
                    include('admin/modules/result/connection.php');
                    $sql = "SELECT * FROM STUDY,STUDENT WHERE STUDY.CLASS_ID='$tittle' AND STUDY.USERNAME=STUDENT.USERNAME";
                    $query = $conn->prepare($sql);
                    $query->execute();
                    $result = $query->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($result as $row) {
                        echo '<tr>
                            <td><a href=./index.php?click=lo-listStudent&id='.$row["USERNAME"].'>' . $row["USERNAME"] . '</td>
                            <td>' . $row["FULLNAME"] . '</td>
                            <td>' . $row["RESULT"] . '</td>
                            <td>' . $row["RANK"] . '</td>
                            </tr>';
                    }

                    ?>
                </table>
            </div>
    <?php
}
?>
            
        </div>
    </div>

    <div class="clearfix"></div>
</div>
</div>