<?php

    include 'config.inc.php';

    // Check whether classid is set from android
    if (isset($_POST['table']) && isset($_POST['column']) && isset($_POST['student']) && isset($_POST['value'])) {
      // Innitialize Variable
        $result   = '';
        $table = $_POST['table'];
        $column = $_POST['column'];
        $student = $_POST['student'];
        $value = $_POST['value'];

        // Query database for row exist or not
        $sql  = 'UPDATE `'.$table.'` SET `'.$column.'`='.$value.' WHERE `student`='.$student;
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        echo $value;
    }

?>

