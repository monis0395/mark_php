<?php

    include 'config.inc.php';


    // run the query and assign the result to $result
    $result = mysql_query("show tables");

    // go through each row that was returned in $result
    while($table = mysql_fetch_array($result)) {

        // print the table that was returned on that row.
        header('Content-type: application/json');
        $result = json_encode($table);
    }
    echo $result;

?>


