<?php
namespace Artemis\Core\Controllers;

use Psr\Http\Message\ResponseInterface;
use Slim\Views\Twig;
use Artemis\Core\Services\GameService;

class HomeController
{
    public function index(ResponseInterface $response, Twig $view, GameService $gameService): ResponseInterface
    {
        if (!isset($_SESSION['lang'])) {
            $_SESSION['lang'] = 'en.php';
        }

        return $view->render($response, 'home.html', [
            'stats' => $gameService->getStatistics()
        ]);
    }
}
