<?php

    include 'config.inc.php';

    // Check whether username or password is set from android
    if (isset($_POST['classid'])) {
      // Innitialize Variable
        $result   = '';
        $classid = $_POST['classid'];

        // Query database for row exist or not
        $sql  = 'SELECT * FROM dailystud WHERE  classid = 1';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':classid', $classid, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt->rowCount()) {
            $row_all = $stmt->fetchall(PDO::FETCH_ASSOC);
            header('Content-type: application/json');
            echo json_encode($row_all);
        }
        else{
            echo "0 results";
        }

    }

?>


