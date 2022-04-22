<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return response([
            'data' => $categories
        ], 200);
    }


    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|min:3',
        ]);
        $category = Category::create($data);
        return response()->json($category, 201);
    }

    public function show($id)
    {
        $categories = Category::findOrFail($id);
        return response()->json($categories);
    }


    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return response()->json(null, 204);
    }
}
