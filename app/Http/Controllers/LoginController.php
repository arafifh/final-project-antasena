<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class LoginController extends Controller
{
    public function login(Request $request) {
        $credentials = $request->only('email', 'password');

        if (!Auth::attempt($credentials)) {
            return response()->json([
                'success' => false,
                'message' => 'login failed',
            ], 400);
        }

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        $token = $user->createToken('login token')->plainTextToken;
        
        return response()->json([
            'success' => true,
            'message' => 'login successful',
            'token' => $token,
        ], 200);
    }

    public function me() {
        $user =  auth('sanctum')->user();

        return response()->json([
            'success' => true,
            'data' => $user->only('name', 'email')
        ]);
    }
}
