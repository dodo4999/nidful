<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class ProfileController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:users,username,' . auth()->user()->username,
            'phone_number' => 'required|string|max:255|unique:users,phone_number,'. auth()->user()->phone_number,
            'address' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,id,'. auth()->user()->email,
            'ig_url' => 'url',
            'fb_url' => 'url',
        ]);

        $user = auth()->user();

        $userData = [
            'name' => $request->name,
            'username' => Str::slug($request->username),
            'phone_number' => $request->phone_number,
            'address' => $request->address,
            'email' => $request->email,
        ];

        if(!empty($request->password)){
            $request->validate([
                'password' => 'required|string|min:6',
            ]);
            $userData['password'] = Hash::make($request->password);
        }

        User::where('id', auth()->id())->update($userData);

        $dataToUpdate = [
            'ig_url' => $request->ig_url,
            'fb_url' => $request->fb_url,
        ];

        if ($request->hasFile('profile_image')) {
            $request->validate([
                'profile_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
            $imageName = time() . '.' . $request->profile_image->extension();
            $request->profile_image->move(public_path('images'), $imageName);
            $dataToUpdate['profile_image'] = $imageName;
        }

        $profile = $user->profile()->updateOrCreate(
            ['user_id' => $user->id],
            $dataToUpdate
        );

        $userD = User::where('id', auth()->id())->first();

        return response([
            'message' => 'Profile Updated',
            'profile' => $profile,
            'user' => $userD,
        ], 201);
    }
}
