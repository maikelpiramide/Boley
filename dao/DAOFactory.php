<?php
class DAOFactory
{
    private $host = "database-boley.c54kcq6ein9a.us-east-1.rds.amazonaws.com";
    private $dbname = "boleybol";
    private $username = "admin";
    private $password = "admin7038";

    private static $instance = null;
    private function __construct()
    {
    }

    private function getConnection(){
        if(self::$instance == null){
            try{
                self::$instance = new PDO("mysql:host=$this->host;dbname=$this->dbname", $this->username, $this->password);
            }catch(Exception $ex){
                print "error de conexion a la  BBDD";
            }
        }
        return self::$instance;
    }
    
}