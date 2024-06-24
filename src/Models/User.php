<?php

namespace App\Src\Models;

use App\Core\Model\Model;

class User extends Model
{
    public function getUsers(int $limit, int $offset): ?array
    {
        return $this->db->select([
            'table' => $this->table(),
            'limit' => $limit,
            'offset' => $offset,
        ]);
    }

    public function find(int $id): ?array
    {
        return $this->db->selectOne([
            'table' => $this->table(),
            'where' => ['id' => $id],
        ]);
    }

    public function getByLogin(string $login): ?array
    {
        return $this->db->selectOne([
            'table' => $this->table(),
            'where' => ['login' => $login],
        ]);
    }

    public function create(array $data): false|string
    {
        return $this->db->insert([
            'table' => $this->table(),
            'data' => $data
        ]);
    }

    public function update(array $set, int $id): bool
    {
        return $this->db->update([
            'table' => $this->table(),
            'set' => $set,
            'where' => ['id' => $id],
        ]);
    }

    public function delete(int $id): bool
    {
        return $this->db->delete([
            'table' => $this->table(),
            'where' => ['id' => $id],
        ]);
    }

    // The method for receiving count of users in the database
    public function getCountUsers(): int
    {
        return $this->db->countColumn([
            'table' => 'users',
        ]);
    }

    protected function table(): string
    {
        return 'users';
    }
}