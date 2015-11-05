<?php

$sweetNothings = Array ("hello1", "hello2", "hello3", "hello4", "hello5");

echo $sweetNothings[array_rand($sweetNothings)];

parse_str(parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY), $query);

echo "number: " . $query['number'] . "<br>";
echo "message: " . $query['message'] . "<br>";
echo "sender: " . $query['sender'] . "<br>";


   require('Twilio.php'); 
 
   $account_sid = 'AC48c1498939a649110dc156f226f474a7'; 
   $auth_token = 'b4984e07023efa8cef192c6b294c525c'; 
   $client = new Services_Twilio($account_sid, $auth_token); 

  
   $client->account->messages->create(array( 
        'To' => $query['number'], //value?//
        'From' => "+16468463303",
        'Body' => "From: " . $query['sender'] . "\n" . $query['message'],
    ));
    
    
    exit();


?>
