<?php
include('admin/modules/result/connection.php');
//include('admin/connect.php');
//	session_start();
$username = $_SESSION['login'];
$test_name = $_GET['name'];
$test_id = $_GET['id'];
?>
<link rel="stylesheet" type="text/css" href="css/user-manage-cls-std.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-7 info_">
            <?php
            echo '<div class="s_tittle"><i>Manage > Test > Edit >' . $test_name . ' </i></div>';
            ?>

            <?php
            // include('../connect.php');
            $sql1 = "SELECT * FROM ((TEST
     INNER JOIN CLASS ON TEST.CLASS_ID = CLASS.CLASS_ID)
     INNER JOIN COURSE ON COURSE.COURSE_ID = CLASS.COURSE_ID)
                WHERE TEST.TEST_ID ='$test_id'";
            $sql2 = "SELECT * FROM `course`";
            $sql3 = "SELECT * FROM  `class`";
            $result1 = $conn->prepare($sql1);
            $result1->execute();
            $row1 = $result1->fetch(PDO::FETCH_ASSOC);
            $result3 = $conn->prepare($sql3);
            $result3->execute();
            $row3 = $result3->fetchAll(PDO::FETCH_ASSOC);
            ?>
            <form class="form-edit-test" action='site/user-right/user-manage-controlTest.php?id=<?php echo $test_id; ?>' enctype="multipart/form-data" method='POST'>
                <table id='tblTest'>
                    <tr>
                        <td>Test Name</td>
                        <td><input type="text" name='txtTestName' placeholder='test_name' value='<?php echo $test_name; ?>' required>
                        </td>
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td><select name="selType" id="selType">
                                <option value='<?php echo $row1["TYPE"] ?>'>---Click here to change type of test---</option>
                                <option value="free">Free Test</option>
                                <option value="todo">Todo Test</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Course</td>
                        <td>
                            <select name="selCourse" id="selCourse" onchange=CourseChanged(this)>

                                <?php
                                //  include('modules/result/connection.php');
                                $query2 = $conn->prepare($sql2);
                                $query2->execute();
                                $result2 = $query2->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($result2 as $row2) {
                                    echo '<option ';
                                    if ($row2["COURSE_ID"] === $row1["COURSE_ID"]) echo 'selected="selected"';
                                    echo ' value="' . $row2["COURSE_ID"] . '">' . $row2["COURSE_NAME"] . '</option>';
                                }
                                ?>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Class</td>
                        <td>
                            <div id='listClass'>
                                <select name="selClass" id="selClass">
                                    <option value="<?php echo $row1["CLASS_ID"] ?>"><?php echo $row1["CLASS_NAME"] ?></option>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Time limit</td>
                        <td><input type="number" name='txtTimeLimit' value='<?php echo $row1['TIMELIMMIT']; ?>'>
                        </td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td><input type="file" name='imgTest' accept="image/*"></td>
                    </tr>
                    <tr>
                        <td>Excel file</td>
                        <td><input type="file" name='fileExcel' accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style='font-size: 15px; padding: 5px'>Accept .xlsx file only</td>
                    </tr>
                    <tr>
                        <td colspan=2>
                            <button name='btnEdit'><strong>Submit</strong></button>
                    </tr>
                </table>
            </form>
            <script>
                function CourseChanged(obj) {
                    var value = obj.value;
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: "admin/modules/test/showClass_ajax.php",
                        data: 'string=' + value,
                        cache: false,
                        success: function(result) {
                            var html = '';
                            html += '<select name ="selClass" id="selClass">';
                            $.each(result, function(key, item) {
                                //  alert(item['CLASS_ID']);
                                html += '<option value="' + item['CLASS_ID'] + '">';
                                html += item['CLASS_NAME'];
                                html += '</option>';
                                // console.log(result); 
                            });
                            html += '</select>';
                            $('#listClass').html(html);
                        },
                        error: function(e) {
                            console.log(e.message);
                        }
                    });
                }
            </script>
        </div>

        <div class="clearfix"></div>
    </div>
</div>