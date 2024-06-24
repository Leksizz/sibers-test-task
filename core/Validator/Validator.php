<?php

namespace App\Core\Validator;

// The class for checking the correctness of data
class Validator
{
    private array $errors = [];

    public function validate(array $data): bool
    {
        foreach ($data as $key => $value) {

            $key = preg_replace('/^phone(?P<index>\d+)$/', 'phone', $key);

            $error = $this->validateRule($value, $key);

            if ($error) {
                $this->errors[] = $error;
            }
        }
        return empty($this->errors);
    }

    public function errors(): array|string
    {
        return $this->errors;
    }


    private function validateRule(mixed $value, string $key): string|false
    {
        $patterns = [
            'name' => "/^[a-zA-Z]+$/",
            'lastname' => "/[a-zA-Z]+$/",
            'login' => "/[a-zA-Z]+$/",
            'gender' => "/^(male)|(female).*$/",
            'birthdate' => "/(\d{4})-(\d{1,2})-(\d{1,2})/",
            'password' => '/((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15})/',
        ];

        $errors = [
            'name' => "The name field must contain only Latin letters",
            'lastname' => "The lastname field must contain only Latin letters",
            'login' => "The login field must contain only Latin letters",
            'gender' => "The gender field must contain only male or female",
            'birthdate' => "The birthdate must be in the format year-month-day",
            'password' => "The password must be between 8-15 characters, with at least one digit, one uppercase and
    one lowercase letter.",
        ];
        if (preg_match($patterns[$key], $value)) {
            return false;
        } else {
            return $errors[$key];
        }
    }
}