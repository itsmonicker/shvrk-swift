<?php
    
    
    require("Conn.php");
    require("MySQLDao.php");
    
    $phone = htmlentities($_POST["phone"]);
    $password = htmlentities($_POST["password"]);
    
    $returnValue = array();
    
    if(empty($phone) || empty($password))
    {
        $returnValue["status"] = "error";
        $returnValue["message"] = "Missing required field";
        echo json_encode($returnValue);
        return;
    }
    
    $dao = new MySQLDao();
    $dao->openConnection();
    $userDetails = $dao->getUserDetails($phone);
    
    if(!empty($userDetails))
    {
        $returnValue["status"] = "error";
        $returnValue["message"] = "User already exists";
        echo json_encode($returnValue);
        return;
    }
    
    $secure_password = md5($password); // I do this, so that user password cannot be read even by me
    
    $result = $dao->registerUser($phone,$secure_password);
    
    if($result)
    {
        $returnValue["status"] = "Success";
        $returnValue["message"] = "User is registered";
        echo json_encode($returnValue);
        return;
    }
    
    $dao->closeConnection();
    
    ?>