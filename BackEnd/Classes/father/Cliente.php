<?php

include ('../../Connect/DatabaseConnect.php');

abstract class Cliente extends DatabaseConnect{
    function create(){
            echo "criando";
    }
    abstract function read();
    
    function delete(){
            echo "deletando";
    }
    function alter(){
            echo "Alterando";
    }
}