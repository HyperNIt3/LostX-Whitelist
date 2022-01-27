<?php

include("../database.php");
$check = $_GET["discord"];

$found = "false";
$entry;
for ($i = 0; $i < count($dataBase); $i++) {
    if($check == $dataBase[$i]["Discord"]){
    $found = "true";
    $entry = $i;
    };
};

echo(json_encode($dataBase[$entry]));
?>