<?php
include("../database.php");
$field = $_GET["field"];
$value = $_GET["value"];
function roundThat($str){
    if($str == "true"){
        return true;
    }elseif($str == "false"){
        return false;
    }elseif($str == NULL){
        return "";
    }else{
        return $str;
    };
};

for ($i = 0; $i < count($dataBase); $i++) {
    $entry = $i;
    $dataBase[$i][roundThat($field)] = roundThat($value);
};

    $towrite = var_export($dataBase, true);
    $write = '<?php $dataBase = '.$towrite.'; ?>';
    file_put_contents("../database.php", $write);
    echo("task performed");
?>