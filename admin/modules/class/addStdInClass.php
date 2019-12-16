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
            ?>
            <tr>
                <td>
                    <input type="checkbox" name="username" id="<?php echo $row1['USERNAME'] ?>">
                </td>
                <td><?php echo $row1['USERNAME'] ?></td>
                <td><?php echo $row1['FULLNAME'] ?></td>
            </tr>
            <?php
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
            var $checkbox = $('input:checked');
            $checkbox.each(function() 
            {
                var value = $(this).attr('id');
                arrayStd_checked.push(value);  
            })
                    console.log(arrayStd_checked);
                    alert('stop');
                  
        })

        
    })
</script>