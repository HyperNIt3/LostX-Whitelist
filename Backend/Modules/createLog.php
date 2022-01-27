<?php
function createLog($str){
      file_put_contents("./logs/secure-log", "\n".date('h:i:s A, m/d/Y')."|".$str, FILE_APPEND | LOCK_EX);
};
?>