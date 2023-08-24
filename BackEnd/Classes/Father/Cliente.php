<?php

include('../Connect/DatabaseConnect.php');

abstract Class Cliente extends DatabaseConnect{
    

    public function create(){

    }

    abstract function read();


    public function alter(){

    }
    

    public function delete(){

    }
    
}