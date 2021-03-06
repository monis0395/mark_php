<?php

    include 'config.inc.php';

    // Check whether username or password is set from android
    if (isset($_POST['username']) && isset($_POST['password'])) {
      // Innitialize Variable
        $result   = '';
        $username = $_POST['username'];
        $password = $_POST['password'];

        // Query database for row exist or not
        $sql  = 'SELECT * FROM users';
        $stmt = $conn->prepare($sql);
        // $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        // $stmt->bindParam(':password', $password, PDO::PARAM_STR);
        $stmt->execute();

        if ($stmt->rowCount()){
            $row_all = $stmt->fetchall(PDO::FETCH_ASSOC);
            header('Content-type: application/json');
            $result = json_encode($row_all);
        }
        elseif (!$stmt->rowCount())
            $result = "false";

        // send result back to android
        echo $result;
    }

?>
