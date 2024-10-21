<?php
class DAOFactory
{
    
    private $host = "database-boley.c54kcq6ein9a.us-east-1.rds.amazonaws.com";
    private $dbname = "boleybol";
    private $username = "admin";
    private $password = "admin7038";
    private static $instance = null;
    private static $pdo;

    private function __construct()
    {
        
       
    }

    public static function getInstance(){
        if(self::$instance == null){
            self::$instance = new DAOFactory();
         }
         return self::$instance;
    }

    public function getConnection(){
        if(self::$pdo == null){
            try{
                self::$pdo = new PDO("mysql:host={$this->host};dbname={$this->dbname}", $this->username, $this->password);
                self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }catch(PDOException $e){
                print "error de conexion a la  BBDD" . $e;
            }
        }
        return self::$pdo;
    }
    
}