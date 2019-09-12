<?php
use DI\Bridge\Slim\Bridge;
use Slim\Views\Twig;
use Slim\Views\TwigMiddleware;

use Artemis\Core\Controllers\HomeController;

// These are still needed for now
require __DIR__ . '/antet.php';
require __DIR__ . '/func.php';

require __DIR__ . '/vendor/autoload.php';

$container = require __DIR__ . '/core/bootstrap.php';

$app = Bridge::create($container);
$app->add(TwigMiddleware::createFromContainer($app, Twig::class));

$app->get('/', [HomeController::class, 'index']);

$app->run();
