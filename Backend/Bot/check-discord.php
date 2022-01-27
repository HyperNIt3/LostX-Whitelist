<?php

include("../database.php");
$check = $_GET["discord"];

$found = "false";
for ($i = 0; $i < count($dataBase); $i++) {
    if($check == $dataBase[$i]["Discord"]){
    $found = "true";
    }
}

echo($found);


?>