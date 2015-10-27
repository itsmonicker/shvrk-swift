/*MySQL queries*/

<?php
    class MySQLDao {
        var $dbhost = null;/*what goes here?*/
        var $dbuser = monicamr_shvrk;
        var $dbpass = Bobo2012;
        var $conn = null;/*what goes here?*/
        var $dbname = <monicamr_shvrk>;
        var $result = null;/*what goes here?*/
        
        function __construct() {
            $this->dbhost = Conn::$dbhost;
            $this->dbuser = Conn::$dbuser;
            $this->dbpass = Conn::$dbpass;
            $this->dbname = Conn::$dbname;
        }
        
        public function openConnection() {
            $this->conn = new mysqli($this->dbhost, $this->dbuser, $this->dbpass, $this->dbname);
            if (mysqli_connect_errno())
                echo new Exception("Could not establish connection with database");
        }
        
        public function getConnection() {
            return $this->conn;
        }
        
        public function closeConnection() {
            if ($this->conn != null)
                $this->conn->close();
        }
        
        public function getUserDetails($email)
        {
            $returnValue = array();
            $sql = "select * from users where user_email='" . $email . "'";
            
            $result = $this->conn->query($sql);
            if ($result != null && (mysqli_num_rows($result) >= 1)) {
                $row = $result->fetch_array(MYSQLI_ASSOC);
                if (!empty($row)) {
                    $returnValue = $row;
                }
            }
            return $returnValue;
        }
        
        public function getUserDetailsWithPassword($email, $userPassword)
        {
            $returnValue = array();
            $sql = "select id,userPhone from users where userPhone='" . $email . "' and userPassword='" .$userPassword . "'";
            
            $result = $this->conn->query($sql);
            if ($result != null && (mysqli_num_rows($result) >= 1)) {
                $row = $result->fetch_array(MYSQLI_ASSOC);
                if (!empty($row)) {
                    $returnValue = $row;
                }
            }
            return $returnValue;
        }
        
        public function registerUser($email, $password)
        {
            $sql = "insert into users set userPhone=?, userPassword=?";
            $statement = $this->conn->prepare($sql);
            
            if (!$statement)
                throw new Exception($statement->error);
            
            $statement->bind_param("ss", $email, $password);
            $returnValue = $statement->execute();
            
            return $returnValue;
        }
        
    }
    ?>