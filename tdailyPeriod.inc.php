<?php

    include 'config.inc.php';

    // Check whether classid is set from android
    if (isset($_POST['tsap'])) {
      // Innitialize Variable
        $result   = '';
        $tsap = $_POST['tsap'];

        // Query database for row exist or not
        $sql  = 'SELECT * FROM dailystud WHERE  tsap = "'.$tsap.'"';
        $stmt = $conn->prepare($sql);
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


