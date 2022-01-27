<?php
include("../database.php");
$exp = $_GET["exp"];
$fn = "https://hypernite.ml/LostX/Auths/".basename($_SERVER['PHP_SELF']);
$fnn = basename($_SERVER['PHP_SELF']);

if(!$exp){
  echo("_G.L='$fn';".file_get_contents('./aMain.lua'));
  return;
}

$hwid = "";
if($exp == "syn"){
  $hwid = getallheaders()["Syn-Fingerprint"];
}elseif($exp == "sen"){
  $hwid = getallheaders()["sentinel-fingerprint"];
}else{
  echo "return game.Players.LocalPlayer:Kick('ERR 1!')";
  return;
}

$check = explode("-", $fnn)[0];

$found = false;
$entry;
for ($i = 0; $i < count($dataBase); $i++) {
    if($check == $dataBase[$i]["Discord"]){
    $found = true;
    $entry = $i;
    };
};

if(!$found){
  echo "return game.Players.LocalPlayer:Kick('ERR 2!')";
  return;
}

$date = date("Y/m/d");

 $dataBase[$entry]["HWID"] = $hwid;
 $dataBase[$entry]["lastHwidChange"] = $date;
 $dataBase[$entry]["Exploit"] = $exp;
 $towrite = var_export($dataBase, true);
 $write = '<?php $dataBase = '.$towrite.'; ?>';
 file_put_contents("../database.php", $write);
 echo "return game.Players.LocalPlayer:Kick('HWID has been set!')";
 unlink("./$fnn")

?>