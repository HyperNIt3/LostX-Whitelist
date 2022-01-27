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
    if($dataBase[$entry]["isBlacklisted"] == false){
        $reset = true;
    }else{
      echo "al";
      exit();
    }

    $dataBase[$entry]["isBlacklisted"] = $reset;
    $towrite = var_export($dataBase, true);
    $write = '<?php $dataBase = '.$towrite.'; ?>';
    file_put_contents("../database.php", $write);
    echo("task performed");
}else{
    echo("nf");
};

?>