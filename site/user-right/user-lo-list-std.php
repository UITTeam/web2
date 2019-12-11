<link rel="stylesheet" type="text/css" href="css/user-manage-cls-std.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-6 info_">
            <?php
            $tittle = $_GET['id'];
            echo '<div class="s_tittle"><i>Learning Outcome > ' . $tittle . '</i></div>';
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


        </div>
        <script>
            $(document).ready(function($) {
                $('#course').change(function(event) {
                    courseId = $('#course').val();
                    teacherId = $('#course').find(':selected').data('tchr');
                    $.post('site/user-right/ajax-mn-class.php', {
                        "courseid": courseId,
                        "teacherid": teacherId
                    }, function(data) {
                        $('#list-class').html(data);
                    })
                })
                

            })
        </script>
    </div>

    <div class="clearfix"></div>
</div>
</div>