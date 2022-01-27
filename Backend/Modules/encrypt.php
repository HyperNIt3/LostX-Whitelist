<?php
function toNumber($letter) {
        $strings = array("a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G", "h", "H", "i", "I", "j", "J", "k", "K", "l", "L", "m", "M", "n", "N", "o", "O", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "u", "U", "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "~", "`", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "-", "+", "=", "[", "{", "]", "}", "|", "", "'", ";", ":", "/", "?", ".", ">", "<", " ", ",");

        for ($x = 0; $x < count($strings); $x++) {
            $v = $strings[$x];
            if ($v == $letter) {
                return (($x + 1) * 5);
            }
        }
    }

function Encrypt($str) {
    $fin = "";
    $times = 0;
    for ($i = 0; $i < strlen($str); $i++) {
        $times = $times + 1;
        $c = $str[$i];
        $c = toNumber($c) * ($times * 6);
        $fin = $fin.$c.
        "-";
    }
    $fin = substr($fin, 0, -1);
    return strrev($fin);
}
?>