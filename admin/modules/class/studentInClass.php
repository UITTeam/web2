
<style>
    td {
       border: 1px solid #f29393;
       max-width : max-content;
       text-align: center;
        padding: 8px;
    }
    
</style>
 
<?php 
$classid = $_GET['id'];
    $sql = "SELECT STUDENT.USERNAME, STUDENT.FULLNAME  FROM STUDY, STUDENT 
    WHERE STUDY.USERNAME=STUDENT.USERNAME
    AND STUDY.CLASS_ID = '$classid'";
    $sql1 = "SELECT COUNT(USERNAME) AS NUMBER_OF_STD FROM STUDY
    WHERE CLASS_ID = '$classid'";
    $result = $conn->query($sql);
    $result1 = $conn->query($sql1);
    $row1 = $result1->fetch_assoc();
?>
<strong> STUDENT LIST OF <?php echo $classid ?> </strong>
<br><br>
<div class='list-std'>
    <table>
        
        <tr>
            <td>USERNAME</td>
            <td>FULL NAME</td>
            <td colspan=2>CONTROL</td>
        </tr>
        <?php
        $i = 0;
        while ($row = $result->fetch_assoc()) //Trong khi con dong
        {
            ?>
        <tr>
            <td><?php echo $row['USERNAME'] ?></td>
            <td><?php echo $row['FULLNAME'] ?></td>
            <td style='display: flex'>  
                <a href="./index.php?click=editClass&ac=edit&id=<?php echo $row['USERNAME']?>">
                    <button name='btnEditClass'>Move</button>
                    </a>                 
                </td>
                <td>
                  <button name='btnDelClass'>
                    <a href="./modules/class/controlClass.php?id1=<?php echo $classid ?>&id2=<?php echo $row['USERNAME']?>">
                        Delete
                    </a></button>
            </td>
            
        </tr> 
        <?php 
        $i++;
        } ?>     
        <tr>
            <td colspan=4>NUMBER OF STUDENT: <?php echo $row1['NUMBER_OF_STD'] ?> </td>
            
        </tr>
    </table>
</div>
    <br><br>
    <a href="./index.php?click=addStdInClass&ac=add&id=<?php echo $classid ?>">
      <button name='btnAddClass'>ADD NEW STUDENT</button>
</a>


   
