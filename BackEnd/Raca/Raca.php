<?php

include ('../Connect/DatabaseConnect.php');

class Raca extends DatabaseConnect{

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