<?php
include('admin/modules/result/connection.php');
//include('admin/connect.php');
//	session_start();
$username = $_SESSION['login'];
?>
<link rel="stylesheet" type="text/css" href="css/user-manage-cls-std.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-7 info_">
            <div class="s_tittle"><i>Manage > Test > Add</i></div>

            <?php
            //require_once('modules/PHPExcel/Classes/PHPExcel.php');
            $sql1 = "SELECT * FROM `test`";
            $sql3 = "SELECT * FROM `course`";
            $result1 = $conn->query($sql1);
            $result3 = $conn->query($sql3);
            ?>
            <form class="form-add-class" method='POST' enctype="multipart/form-data" action='./modules/test/controlTest.php'>
                <!---action='./modules/test/controlTest.php' -->
                <table id='tblTest'>
                    <tr>
                        <td>Test Name</td>
                        <td><input type="text" name='txtTestName' placeholder='test_name' required></td>
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td><select name="selType" id="selType">
                                <option value="">---Choose type of test---</option>
                                <option value="free">Free Test</option>
                                <option value="todo">Todo Test</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Course</td>
                        <td>
                            <select name="selCourse" id="selCourse" onchange=CourseChanged(this)>
                                <option value="">---Choose course---</option>
                                <?php
                                while ($row3 = $result3->fetchAll(PDO::FETCH_ASSOC)) {
                                    ?>
                                    <option value="<?php echo $row3['COURSE_ID']; ?>"><?php echo $row3['COURSE_NAME']; ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Class</td>
                        <td>
                            <div id='listClass'>
                                <select name="selClass" id="selClass">
                                    <option value="">---Choose class---</option>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Time limit</td>
                        <td><input type="number" name='txtTimeLimit' placeholder='ex: 30 (minutes)'></td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td><input type="file" name='imgTest' required></td>
                    </tr>
                    <tr>
                        <td>Excel file</td>
                        <td><input type="file" name='fileExcel' required></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style='font-size: 15px; padding: 5px'>Accept .xlsx file only</td>
                    </tr>
                    <tr>
                        <td colspan=2>
                            <button name='btnSubmitAdd'><strong>Submit</strong></button>
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