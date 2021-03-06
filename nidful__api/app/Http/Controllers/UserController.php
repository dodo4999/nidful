<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return response([
            'user' => auth()->user(),
            'profile' => auth()->user()->profile,
            'following' => auth()->user()->follow->count(),
            'product' => auth()->user()->products,
        ], 201);
    }
}