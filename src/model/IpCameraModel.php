<?php

namespace app\Model;

class IpCameraModel {

    private $pdo;

    public function __construct($pdo){

        $this->pdo = $pdo;
    }

    public function allCameras (){
        if($this->pdo != false){
            $sql = "SELECT * FROM cameras_info";
            $data = $this->pdo->query($sql)->fetchAll();
            return $data;    
        }    
        else {
            echo "db fail";
        }        
    }
}