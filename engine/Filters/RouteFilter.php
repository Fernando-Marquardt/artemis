<?php
namespace Artemis\Engine\Filters;

use Slim\Interfaces\RouteCollectorInterface;
use Slim\Interfaces\RouteParserInterface;
use Psr\Http\Message\ServerRequestInterface;

class RouteFilter
{
    /** @var RouteParserInterface */
    private $routeParser;

    public function __construct(RouteCollectorInterface $routeCollector)
    {
        $this->routeParser = $routeCollector->getRouteParser();
    }

    public function url($name, $data = [], $queryParams = [])
    {
        return $this->routeParser->urlFor($name, $data, $queryParams);
    }
}
