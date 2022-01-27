<?php

include("../database.php");
$check = $_GET["key"];

$found = "false";
$entry;
for ($i = 0; $i < count($dataBase); $i++) {
    $key = $dataBase[$i]["Key"];
    if(strpos($key, $check) === 0){
    $found = "true";
    $entry = $i;
    };
};

echo(json_encode($dataBase[$entry]));
?>