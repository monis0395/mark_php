<?php

    include 'config.inc.php';

    // Check whether did is set from android
    if (isset($_POST['did'])) {
      // Innitialize Variable
        $result   = '';
        $did = $_POST['did'];

        // Query database for row exist or not
        $sql  = 'SELECT access FROM dailystud WHERE  did = '.$did;
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        if ($stmt->rowCount()) {
            $row = $stmt->fetch_assoc();
            $access = $row['access'];
            if($access.equals==1)
                return "true";
            else
                return "false";
        }
        else
            echo "not found";

    }

?>


