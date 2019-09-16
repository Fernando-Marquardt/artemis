<?php
use Artemis\Engine\Database;
use Artemis\Engine\Filters\RouteFilter;
use Psr\Http\Message\ResponseFactoryInterface;
use Slim\Factory\AppFactory;
use Slim\Interfaces\RouteCollectorInterface;
use Slim\Routing\RouteCollector;
use Slim\Views\Twig;
use Symfony\Component\Translation\Loader\PhpFileLoader;
use Symfony\Component\Translation\Translator;
use Twig\TwigFilter;
use Twig\TwigFunction;
use function DI\autowire;
use function DI\create;
use function DI\env;
use function DI\factory;
use function DI\get;

return [
    'database.host' => env('DATABASE_HOST'),
    'database.user' => env('DATABASE_USER'),
    'database.pass' => env('DATABASE_PASS'),
    'database.name' => env('DATABASE_NAME'),

    'locale.default' => 'en_US',

    Database::class => create()
        ->constructor(get('database.host'), get('database.user'), get('database.pass'), get('database.name'))
        ->method('connect'),

    Translator::class => factory(function ($defaultLocale) {
        // TODO We need load the user locale when logged in.
        $translator = new Translator($defaultLocale);
        $translator->setFallbackLocales([ $defaultLocale ]);
        $translator->addLoader('php', new PhpFileLoader());

        // Add the translations to the translator resources
        $translator->addResource('php', __DIR__ . '/../translations/messages.en_US.php', 'en_US', 'messages+intl-icu');

        return $translator;
    })
        ->parameter('defaultLocale', get('locale.default')),
    
    Twig::class => function (Translator $translator, RouteFilter $routeFilter) {
        $view = new Twig(__DIR__ . '/../templates');
        $environment = $view->getEnvironment();

        $environment->addFilter(new TwigFilter('trans', [$translator, 'trans']));
        $environment->addFilter(new TwigFilter('url', [$routeFilter, 'url']));

        return $view;
    },

    // These are needed so we can access the RouteParser to use on Twig filters.
    // The new RouteContext is useless for us at this point, as it requires the request to work.
    ResponseFactoryInterface::class => factory([AppFactory::class, 'determineResponseFactory']),
    RouteCollectorInterface::class => autowire(RouteCollector::class)
];
