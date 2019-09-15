<?php
use Artemis\Engine\Database;
use Slim\Views\Twig;
use Symfony\Component\Translation\Loader\PhpFileLoader;
use Symfony\Component\Translation\Translator;
use Twig\TwigFilter;
use Twig\TwigFunction;
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
    
    Twig::class => function (Translator $translator) {
        global $imgs, $fimgs, $announcement; // Needed for now

        $view = new Twig(__DIR__ . '/../templates');
        $environment = $view->getEnvironment();

        $environment->addFilter(new TwigFilter('trans', [$translator, 'trans']));

        $environment->addGlobal('images_url', "/$imgs$fimgs");
        $environment->addGlobal('announcement', $announcement);

        $environment->addFunction(new TwigFunction('logo', function () {
            logo(null);
        }));

        $environment->addFunction(new TwigFunction('menu_up', function () {
            menu_up();
        }));

        $environment->addFunction(new TwigFunction('menu_down', function () {
            menu_down();
        }));

        $environment->addFunction(new TwigFunction('about', function () {
            about();
        }));

        return $view;
    }
];
