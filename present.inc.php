<?php

    include 'config.inc.php';

    // Check whether variables are set from android
    if (isset($_POST['username']) && isset($_POST['column']) && isset($_POST['NFC_UID']) && isset($_POST['location']) && isset($_POST['table'])) {

      // Innitialize Variable
        $result   = '';
        $username = $_POST['username'];
        $column = $_POST['column'];
        $uid = $_POST['NFC_UID'];
        $location = $_POST['location'];
        $table = $_POST['table'];

        // Query database for row exist or not
        $sql  = 'SELECT * FROM nfc_tags WHERE  uid ="'.$uid.'" AND location ='.$location;
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        if (!$stmt->rowCount())
            $result = 'illegal';
        else{
            $sql  = 'UPDATE `enterprise resource planning-amruta patil` SET `'.$column.'`= 1 WHERE student = '.$username;
            $stmt = $conn->prepare($sql);
            $stmt->execute();
                $result = "true";
        }

        // send result back to android
        echo $result;

    }

?>


