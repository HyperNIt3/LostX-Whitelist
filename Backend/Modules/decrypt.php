<?php
function toLetter($number) {
        $strings = array("a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G", "h", "H", "i", "I", "j", "J", "k", "K", "l", "L", "m", "M", "n", "N", "o", "O", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "u", "U", "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "~", "`", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "-", "+", "=", "[", "{", "]", "}", "|", "", "'", ";", ":", "/", "?", ".", ">", "<", " ", ",");
        for ($x = 0; $x < count($strings); $x++) {
            $v = $strings[$x];
            if ($number == (($x + 1) * 3)) {
                return $strings[$x];
            }
        }
    }

function Decrypt($str) {
    $str = strrev("-".$str);
  
   $strr = explode("-", $str);
    $arrlength = count($strr);
    $times = 0;
    $c = "";
    for ($x = 0; $x < $arrlength; $x++) {
        $v = $strr[$x];
        if (is_numeric($v)) {
            $times = $times + 1;
            $v = $v / ($times * 6);
            $c = $c.toLetter($v);
        }
    };
  return($c);
}
?>