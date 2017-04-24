<?php

    include 'config.inc.php';

    // Check whether classid is set from android
    if (isset($_POST['table']) && isset($_POST['column'])) {
      // Innitialize Variable
        $result   = '';
        $table = $_POST['table'];
        $column = $_POST['column'];

        // Query database for row exist or not
        $sql  = 'select students as student, `'.$column.'-LA` as la, `'.$column.'-LT` as lt FROM `'.$table.'`';
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        if ($stmt->rowCount()) {
            $row_all = $stmt->fetchall(PDO::FETCH_ASSOC);
            header('Content-type: application/json');
            echo json_encode($row_all);
        }
        else{
            echo "false";
        }
    }

?>


