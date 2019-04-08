<?php
namespace app\controller;
class IpCameraController {

    private $model;
    private $pdo;

    public function __construct($model){
        $this->model = $model;
    }

    public function allCameras ($response){
        $IpCameraModel = $this->model;
        $data = $IpCameraModel->allCameras();
        $updatedResponse = $response->withJson($data, 201);  
        return $updatedResponse;     
    }
}