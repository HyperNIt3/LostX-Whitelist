<?php
// Modules
date_default_timezone_set('America/Chicago');
include_once("./database.php"); // Database
include_once("./Modules/encrypt.php"); // Encrypt(String)
include_once("./Modules/decrypt.php"); // Decrypt(String)
include_once("./Modules/getUserIp.php"); // getUserIP(void)
include_once("./Modules/createLog.php"); // createLog(String)
include_once("./Modules/randomString.php"); // randomString(Number)
include_once("./Modules/isWithin.php"); // isWithin(Number)
include_once("./Modules/isOnVpn.php"); // isOnVpn(String)
$fakeReturn = Encrypt(randomString(rand(10, 80)));

// Variables
$encReq = $_GET["req"];
if (!$encReq){echo $fakeReturn; exit();}
$req = Decrypt($encReq);
$sReq = explode(":>", $req);

// Login variables
$Val1 = $sReq[0];
$Key = $sReq[1];
$reqType = $sReq[2];
$Exploit = $sReq[3];
$Val2 = $sReq[4];
$Val3 = $sReq[5];

if(!$Val1){echo $fakeReturn; exit();}
if(!$Key){echo $fakeReturn; exit();}
if(!$reqType){echo $fakeReturn; exit();}
if(!$Exploit){echo $fakeReturn; exit();}
if(!$Val2){echo $fakeReturn; exit();}
if(!$Val3){echo $fakeReturn; exit();}

$HWID = getallheaders()["Syn-Fingerprint"];
if(!$HWID){echo $fakeReturn; exit();}

$KeyFound = false;
$dbEntry;
for ($i = 0; $i < count($dataBase); $i++) {
 if($Key == $dataBase[$i]["Key"]){
    $KeyFound = true;
    $dbEntry = $i;
    };
};

if(!$KeyFound){
  echo(Encrypt(randomString(10)."+AuthFailed+".randomString(10)));
  exit();
}

if($dataBase[$dbEntry]["HWID"] !== $HWID){
  echo(Encrypt(randomString(10)."+HwidMatch+".randomString(10)));
  exit();
}

if($dataBase[$dbEntry]["isBlacklisted"] == true){
  echo(Encrypt(randomString(10)."+Black+".randomString(10)));
  exit();
}

if($dataBase[$dbEntry]["isFrozen"] == true){
  echo(Encrypt(randomString(10)."+Froze+".randomString(10)));
  exit();
}

$returnVal1 = strrev($Val1);
$returnKey = base64_encode($Key);
$returnReqType = $reqType;
$returnVal2 = strrev($Val2);
$returnVal3 = base64_encode($Val3);
$returnValue = Encrypt("Continue+$returnKey+$returnVal1+$returnVal3+$returnReqType+$returnVal2");
echo($returnValue);

?>