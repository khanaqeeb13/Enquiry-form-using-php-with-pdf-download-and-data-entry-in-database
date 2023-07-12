<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "enquiry_form";


$con = mysqli_connect($host, $username, $password, $database);

if(!$con)
{
    die("Error deleting record:");
}

?>