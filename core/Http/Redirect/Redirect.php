<?php

namespace App\Core\Http\Redirect;

use JetBrains\PhpStorm\NoReturn;

// The class for redirects
class Redirect
{
    #[NoReturn] public function to(string $url): void
    {
        header("Location: $url");
        exit();
    }
}
