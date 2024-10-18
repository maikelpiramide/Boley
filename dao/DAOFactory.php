<?php
class DAOFactory
{
    private $host = "";
    private $dbname = "";
    private $username = "";
    private $password = "";

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