<?php

   require('Twilio.php'); 
 
   $account_sid = 'AC48c1498939a649110dc156f226f474a7'; 
   $auth_token = 'b4984e07023efa8cef192c6b294c525c'; 
   $client = new Services_Twilio($account_sid, $auth_token); 

if(isset($_POST['submit']))
{
    
   $client->account->messages->create(array( 
        'To' => $_POST['phone'], //value?//
        'From' => "+19788061819",
        'Body' => $_POST['message'],
    ));
    
    header("Location: index.php");
    exit();
}

?>

<!DOCTYPE html>
<html>
    <head> 
        <title>SHVRK</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <link href='http://fonts.googleapis.com/css?family=Jura' rel='stylesheet' type='text/css'> 
    

    
    </head>
    <body>
        <h1>SHVRK</h1>
        <h3>Surf the crimson wave with fewer fatalities.</h3><br>
        <div align="center"><iframe src="https://player.vimeo.com/video/134277686" width="250" height="141" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><br>
        
        
        <form method="post" action="index.php">
            
            <div align="center"><span>Insert mobile number:</span><br><br>
            
        <input type="tel" name="phone" /><br><br>
                <div align="center"><span>Compose sweet nothing:</span><br><br><textarea name="message" value=cols="40" rows="4" maxlength="140"></textarea><br><br>
            <input name="submit" type="submit" value="Send sweet nothing" />
            
            </form>
    </body>
    
</html>