<?php
    include('../../../admin/connect.php');

    session_start();
    $username = $_SESSION['login'];

    $sql = "SELECT * FROM `study` WHERE `USERNAME` = '$username'";
    $result = $conn->query($sql);
    $arrClass = array();
    while ($row = $result->fetch_assoc())
    {
        $arrClass[] = array(
            "CLASS_ID" => $row['CLASS_ID'],
            "RESULT" => $row['RESULT']
        );
        //array_push($arrClass, $row['CLASS_ID']);
    }
   // echo $username;
   echo json_encode($arrClass);

?>