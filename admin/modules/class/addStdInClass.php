<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<style>
    td {
        margin: 5px;
        border: 1px solid #f29393;
        padding: 10px;
    }
</style>
<?php
$classid = $_GET['id'];

$sql1 = "SELECT * FROM STUDENT WHERE USERNAME NOT IN (
        SELECT STUDY.USERNAME FROM STUDY,CLASS
        WHERE STUDY.CLASS_ID = CLASS.CLASS_ID
        AND CURRENT_DATE >= CLASS.BEGIN
        AND CURRENT_DATE <= CLASS.END)";

$result1 = $conn->query($sql1);

?>
<script>
    var arrayStd_checked = [];
</script>
<strong> ADD NEW STUDENT(S) INTO <?php echo $classid ?> </strong>
<br><br>
<form>
    <table style="overflow: auto">
        <tr>
            <td>CHOOSE</td>
            <td>USERNAME</td>
            <td>FULL NAME</td>
        </tr>
        <?php
        $i = 0;
        foreach ($result1 as $row1) {

            echo '<tr>
<td><center><input type="checkbox" name="username" id="' . $i . '" value="' . $row1['USERNAME'] . '" ></center></td>
<td>' . $row1['USERNAME'] . '</td>
<td>' . $row1['FULLNAME'] . '</td>
</tr>';
            $i = $i + 2;
            ?>

        <?php
        }
        ?>
    </table>
    <br><br>
    <a href="#">
        <button name='btnAddClass'>ADD NEW STUDENT</button>
    </a>
</form>

<script>
    $(document).ready(function($) {

        $('button[name="btnAddClass"]').on("click", function() {
                if ($('input[name="username"]').is(':checked')) {
                    $(this).each(function() {
                        // var n = $("input:checked").length;
                        var value = $(this).val();
                        alert(value);
                        arrayStd_checked.push(value);

                    })
                    console.log(arrayStd_checked);
                    // if($(this).is(':checked')) { 
                    //     var value = $(this).val();
                    //     arrayStd_checked.push(value);
                    //     console.log(arrayStd_checked);
                    //        }
                    // else {
                    //     var value = $(this).val();
                    //     arrayStd_checked.push(value);
                    // }
                    alert('hihi');

                }

        })
    })
</script>