<?php
    define('HOST','localhost');
    define('USER','root');
    define('PASS','');
    define('DB','dbwisata');

    $conn = mysqli_connect(HOST, USER, PASS, DB)or die('Unable to connect');