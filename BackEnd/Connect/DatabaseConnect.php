<?php

abstract class DatabaseConnect{
    
    protected $host = "localhost";
    protected $user = "root";
    //Mudar se Pedir
    protected $pass = "";
    protected $port = 3007;
    protected $db = "itospet";
    protected object $conn = null;

    public function connect(): ?PDO {
        try {
            $this->conn = new PDO(
                "mysql:host={$this->host};
                port={$this->port};
                dbname={$this->db}",
                $this->user,
                $this->pass
            );

            return $this->conn;
            
        } catch(PDOException $err) {
         
            error_log("Connection error: " . $err->getMessage());
            return null;
        }
    }
    
    
    abstract function create();

    abstract function read();

    abstract function alter();
    
    abstract function delete();
}