<?php

include ('../Connect/DatabaseConnect.php');

class Cliente extends DatabaseConnect{
    function create(){
            echo "criando";
    }
    function read(){
            echo "lendo";
    }
    function delete(){
            echo "deletando";
    }
    function alter(){
            echo "Alterando";
    }
}