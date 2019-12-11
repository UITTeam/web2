<table>
    <?php
    include('../../admin/modules/result/connection.php');
    $teacherid = $_POST["teacherid"];
    $courseid = $_POST["courseid"];
    $sql = "SELECT * FROM CLASS WHERE COURSE_ID = '$courseid' AND TEACHER ='$teacherid'";
    $query = $conn->prepare($sql);
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_ASSOC);

    echo ' <tr>
<td>CLASS ID</td>
<td>CLASS NAME</td>
<td>INFOMATION</td>
<td>BEGIN</td>
<td>FINISH</td> 
</tr> ';
    foreach ($result as $row) {
        echo '<tr><td><a href=./index.php?click=mn-listStudent&id=' . $row["CLASS_ID"] . '>' . $row["CLASS_ID"] . '</td>
        <td>' . $row["CLASS_NAME"] . '</td>
        <td>' . $row["INFO"] . '</td>
        <td>' . $row["BEGIN"] . '</td>
        <td>' . $row["FINISH"] . '</td></tr>';
    }

    ?>
</table>