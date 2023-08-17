<?php

abstract class Connect{
    
    public $host = "localhost";
    public $user = "root";
    //Mudar se Pedir
    public $pass = "";
    public $port = 3007;
    public $db = "dia_17_08";
    public $conn = null;

    function connec(){
        try{

            $this->conn = new PDO("mysql:host=".$this->host.";port=".$this->port.
            ";dbname=".$this->db, $this->user, $this->pass);

            return $this->conn;
            
        }catch(Exception $err){

            die("Morri");
            return false;

        }
    }
    
    abstract function create();
    abstract function read();
    abstract function delete();
    abstract function alter();
}