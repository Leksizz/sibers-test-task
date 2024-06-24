<?php

namespace App\Src\Services;

use App\Core\DataBase\DataBase;
use App\Core\Http\Response\Response;
use App\Src\Models\User;

class AdminService
{

    private User $user;
    private Response $response;

    public function __construct(DataBase $db, Response $response)
    {
        $this->user = new User($db);
        $this->response = $response;
    }


    public function createUser(array $data): void
    {
        $this->isNewLogin($data['login']); // Checking the uniqueness of the login
        $data['password'] = password_hash($data['password'], PASSWORD_BCRYPT);
        $this->user->create($data);
    }

    private function isNewLogin(string $login): void
    {
        if ($this->user->getByLogin($login)) {
            $this->response->json('error', 'This login is already taken');
        }
    }

    private function isCurrentLogin(int $id)
    {
        return $this->user->find($id)['login'];
    }

    public function updateUser(array $data, int $id): void
    {
        if ($data['login'] !== $this->isCurrentLogin($id)) {
            $this->isNewLogin($data['login']);
        }

        $this->user->update($data, $id);
    }

    public function deleteUser(int $id): void
    {
        $this->user->delete($id);
    }
}

