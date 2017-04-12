<?php

    include 'config.inc.php';

    // Check whether did is set from android
    if (isset($_POST['did'])) {
      // Innitialize Variable
        $result   = '';
        $did = $_POST['did'];

        // Query database for row exist or not
        $sql  = 'SELECT * FROM dailystud WHERE  did = :did AND access = 1';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':did', $did, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt->rowCount())
            $result = "true";

        elseif (!$stmt->rowCount())
            $result = "false";

        // send result back to android
        echo $result;


    }

?>


