<?php

function dirToArray($dir) {
  
   $result = array();

   $cdir = scandir($dir);
   foreach ($cdir as $key => $value)
   {
      if (!in_array($value,array(".","..")))
      {
         if (is_dir($dir . DIRECTORY_SEPARATOR . $value))
         {
            $result[$value] = dirToArray($dir . DIRECTORY_SEPARATOR . $value);
         }
         else
         {
            $result[] = $value;
         }
      }
   }
  
   return $result;
}

function randomString(
    int $length,
    string $keyspace = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
): string {
    if ($length < 1) {
        throw new \RangeException("Length must be a positive integer");
    }
    $pieces = [];
    $max = mb_strlen($keyspace, '8bit') - 1;
    for ($i = 0; $i < $length; ++$i) {
        $pieces []= $keyspace[random_int(0, $max)];
    }
    return implode('', $pieces);
}

include("../database.php");

$check = $_GET["d"];

$found = false;
$entry;
for ($i = 0; $i < count($dataBase); $i++) {
    if($check == $dataBase[$i]["Discord"]){
    $found = true;
    $entry = $i;
    };
};

if(!$found){
  echo "notAuth";
  return;
}

$files1 = dirToArray("../Auths");
for ($i = 0; $i < count($files1); $i++) {
  if(strstr($files1[$i], $check)){
    echo "https://hypernite.ml/LostX/Auths/$files1[$i]";
    return;
  }
}

$date = date("Y/m/d");
if($date == $dataBase[$entry]["lastHwidChange"]){
  echo "time";
  return;
}


$ran = randomString(5);
  
$myfile = fopen("../Auths/$check-$ran.php", "w") or die("Unable to open file!");
$txt = file_get_contents("../Auths/aAuth.php");
fwrite($myfile, $txt);
fclose($myfile);

echo("https://hypernite.ml/LostX/Auths/$check-$ran.php");

?>