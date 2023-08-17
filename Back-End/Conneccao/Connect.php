<?php

abstract class Connect{
    
    public $host = "localhost";
    //Mudar se quiser
    public $pass = "";
    public $port = 3007;
    public $db = "dia_17_08";
    public $conn = null;

    function conne(){

    }
    abstract function create();
    abstract function read();
    abstract function delete();
    abstract function alter();
}