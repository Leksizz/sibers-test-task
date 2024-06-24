<?php

namespace App\Src\Controllers;

use App\Core\Controller\Controller;
use App\Src\Services\AuthService;
use Exception;
use JetBrains\PhpStorm\NoReturn;

// The controller for working with authorization

class AuthController extends Controller
{
    /**
     * @throws Exception
     */

    public function index(): void
    {
        $this->view('auth/index', 'Login');
    }

    #[NoReturn] public function login(): void
    {
        $authService = new AuthService($this->db(), $this->session());

        if (!$this->request()->validate()) {
            $this->response()->json('error', $this->request()->errors());
        }

        if (!$authService->attempt($this->request()->all())) {
            $this->response()->json('error', 'Invalid login or password');
        }

        $this->response()->redirect('admin/index/1');
    }

    #[NoReturn] public function logout(): void
    {
        $this->auth()->logout();
        $this->redirect('/');
    }
}