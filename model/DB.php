<?php

class DB extends PDO
{
    private static $instance;

    public function __construct($db)
    {
        $dsn = 'mysql:host=' . $db['server'] . 
        ';dbname=' . $db['baza'] . ';charset=utf8';
        parent::__construct($dsn,$db['korisnik'],$db['lozinka']);

        $this->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
    }

    public static function getInstanca()
    {
        if(is_null(self::$instance)){
            self::$instance=new self(APP::config('db'));
        }
        return self::$instance;
    }

}