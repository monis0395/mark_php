<?php

    include 'config.inc.php';

    // Check whether classid is set from android
    if (isset($_POST['table']) && isset($_POST['column'])) {
      // Innitialize Variable
        $result   = '';
        $table = $_POST['table'];
        $column = $_POST['column'];
        try {
            // Query database for row exist or not
            $sql  = 'ALTER TABLE `'.$table.'` ADD `'.$column.'` INT( 1 )';
            // $sql  = 'SELECT * FROM users ';
            $stmt = $conn->prepare($sql);
            $stmt->execute();

            echo "true";
        }
        catch(PDOException $e)
        {
            echo "true";
        }
    }

?>


