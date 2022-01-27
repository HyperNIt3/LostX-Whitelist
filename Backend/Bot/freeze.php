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

if($found == "true"){
    $reset;
    if($dataBase[$entry]["isFrozen"] == true){
        $reset = false;
    }else{
        $reset = true;
    };

    $dataBase[$entry]["isFrozen"] = $reset;
    $towrite = var_export($dataBase, true);
    $write = '<?php $dataBase = '.$towrite.'; ?>';
    file_put_contents("../database.php", $write);
    echo("task performed");
}else{
    echo("nf");
};

?>