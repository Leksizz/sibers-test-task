<?php

namespace App\Core\Model;

use App\Core\DataBase\DataBase;

// The basic model

abstract class Model
{
    protected DataBase $db;

    public function __construct(DataBase $db)
    {
        $this->db = $db;
    }

    abstract protected function table(): string;
}