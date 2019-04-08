<?php

use Slim\Http\Request;
use Slim\Http\Response;

//use App\controller\IpCameraController;

// Routes
/*
$app->get('/cameras', function (Request $request, Response $response, array $args) {

    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    

    $data = array(array('name' => 'luciano', 'age' => 20), array('name' => 'bolinha', 'age' => 40));
    return $responseUpdated = $response->withJson($data, 201);
});
*/


$app->get('/cameras', function (Request $request, Response $response, array $args) {

    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");
    
    if($this->has('IpCameraController')) {
        $IpCameraController = $this->IpCameraController;
        $updatedResponse = $IpCameraController->allCameras($response);
    }
    return $updatedResponse;
});



