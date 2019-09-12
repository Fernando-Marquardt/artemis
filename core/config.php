<?php
use Slim\Views\Twig;
use Twig\TwigFunction;

return [
    Twig::class => function() {
        global $imgs, $fimgs, $title, $lang, $announcement; // Needed for now

        $view = new Twig(__DIR__ . '/../templates');
        $environment = $view->getEnvironment();

        $environment->addGlobal('images_url', "/$imgs$fimgs");
        $environment->addGlobal('page_name', $title);
        $environment->addGlobal('lang', $lang);
        $environment->addGlobal('announcement', $announcement);

        $environment->addFunction(new TwigFunction('logo', function() {
            global $title;

            logo($title);
        }));

        $environment->addFunction(new TwigFunction('menu_up', function() {
            menu_up();
        }));

        $environment->addFunction(new TwigFunction('menu_down', function() {
            menu_down();
        }));

        $environment->addFunction(new TwigFunction('about', function() {
            about();
        }));

        return $view;
    }
];
