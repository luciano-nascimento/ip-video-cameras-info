<?php
// DIC configuration

use app\controller\IpCameraController;
use app\model\IpCameraModel;


$container = $app->getContainer();

// view renderer
$container['renderer'] = function ($c) {
    $settings = $c->get('settings')['renderer'];
    return new Slim\Views\PhpRenderer($settings['template_path']);
};

// monolog
$container['logger'] = function ($c) {
    $settings = $c->get('settings')['logger'];
    $logger = new Monolog\Logger($settings['name']);
    $logger->pushProcessor(new Monolog\Processor\UidProcessor());
    $logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], $settings['level']));
    return $logger;
};

$container['db'] = function($c) {
    $settings = $c->get('settings')['db'];

    //data source name
    $dsn = "mysql:dbname=" . $settings['dbname'] . ";host=" . $settings['host'];
    $dbuser = $settings['user'];
    $dbpass = $settings['pass'];


    try{
        $pdo = new PDO($dsn, $dbuser, $dbpass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch(PDOException $e) {
        echo "Fail: " . $e->etMessage();
    }
    return false;
    
    
};

$container['IpCameraController'] = function ($c)
{
    $service = new IpCameraController($c->IpCameraModel);
	return $service;
};

$container['IpCameraModel'] = function ($c)
{
    $service = new IpCameraModel($c->db);
	return $service;
};