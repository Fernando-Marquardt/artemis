<?php
namespace Artemis\Core\Controllers;

use Artemis\Engine\Controller;
use Psr\Http\Message\ResponseInterface;
use Slim\Views\Twig;

class HomeController extends Controller {

    public function index(ResponseInterface $response, Twig $view): ResponseInterface {
        if (!isset($_SESSION['lang'])) {
            $_SESSION['lang'] = 'en.php';
        }

        return $view->render($response, 'home.html', [
            'gen_stats' => gen_stats(48)
        ]);
    }
}
