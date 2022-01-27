<?php

include("../database.php");
$check = $_GET["key"];

$found = "false";
for ($i = 0; $i < count($dataBase); $i++) {
    if($check == $dataBase[$i]["Key"]){
    $found = "true";
    }
}

echo($found);


?>