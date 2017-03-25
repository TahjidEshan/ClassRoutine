<?php

class connect {

    public function con() {
        $servername = "localhost";
        $username = "user";
        $password = "routinepassword";
        $dbname = "routine";
        $conn = new mysqli($servername, $username, $password, $dbname);
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        return $conn;
    }

    public function execute($con, $sql) {
        $result = $con->query($sql);
        return $result;
    }

    public function insert($con, $sql) {
        $con->query($sql);
    }

}

?>
