<?php
namespace Artemis\Core\Services;

use Artemis\Engine\Database;

class GameService {
    
    /** @var Database */
    private $database;

    public function __construct(Database $database) {
        $this->database = $database;
    }

    public function getStatistics($duration = 48) {
        $totalUsers = $this->database->query('SELECT COUNT(*) FROM users');
        $lastUsers = $this->database->query("SELECT COUNT(*) FROM users WHERE HOUR(TIMEDIFF(NOW(), lastVisit)) < $duration");

        return [
            'total_users' => $totalUsers->fetch_row()[0],
            'last_users' => $lastUsers->fetch_row()[0]
        ];
    }
}
