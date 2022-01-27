<?php
/*
* A PHP function that interacts with http://getIPIntel.net to look up an IP address
* returns TRUE if the IP returns a value greater than $banOnProbability,
* FALSE otherwise, including errors
* HTTP error codes are NOT explicitly implemented here
* This should be used as a guide, be sure to edit and test it before using it in production
* MIT License
*/
//function requires curl
function isOnVpn(){
        $ip=$_SERVER['REMOTE_ADDR'];
		$contactEmail="ezpotato23@gmail.com"; //you must change this to your own email address
		$timeout=5; //by default, wait no longer than 5 secs for a response
		$banOnProbability=0.99; //if getIPIntel returns a value higher than this, function returns true, set to 0.99 by default
		
		//init and set cURL options
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
		//if you're using custom flags (like flags=m), change the URL below
		curl_setopt($ch, CURLOPT_URL, "http://check.getipintel.net/check.php?ip=$ip&contact=$contactEmail");
		$response=curl_exec($ch);
		
		curl_close($ch);
		
		
		if ($response > $banOnProbability) {
				return true;
		} else {
				return false;
		}
}

?>