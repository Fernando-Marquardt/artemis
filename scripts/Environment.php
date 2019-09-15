<?php
namespace Artemis\Scripts;

use Dotenv\Dotenv;

class Environment
{
    public static function setEnvironment(): void
    {
        $dotenv = Dotenv::create(__DIR__ . '/../');
        $dotenv->load();

        $dotenv->required(['DATABASE_HOST', 'DATABASE_USER', 'DATABASE_PASS', 'DATABASE_NAME']);
    }
}
