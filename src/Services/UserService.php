<?php

namespace App\Src\Services;

use App\Core\DataBase\DataBase;
use App\Src\Models\User;

class UserService
{

    private User $user;

    public function __construct(DataBase $db)
    {
        $this->user = new User($db);
    }

    // The receiving 10 users for pagination
    public function getUsers(int $page): array
    {
        $limit = 10;
        $offset = ($page - 1) * $limit;
        $users = $this->user->getUsers($limit, $offset);
        $users['total'] = $this->user->getCountUsers();
        return $users;
    }

    public function getUser(int $id): array
    {
        return $this->user->find($id);
    }
}