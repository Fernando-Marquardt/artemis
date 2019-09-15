<?php
namespace Artemis\Engine;

class Database {

    private $hostname;
    private $username;
    private $password;
    private $database;

    /** @var \mysqli */
    private $link;

    public function __construct(string $hostname, string $username, string $password, string $database) {
        $this->hostname = $hostname;
        $this->username = $username;
        $this->password = $password;
        $this->database = $database;
    }

    public function connect(): void {
        $this->link = new \mysqli($this->hostname, $this->username, $this->password, $this->database);
    }
    
    public function query(string $query): \mysqli_result {
        return $this->link->query($query);
    }
}
