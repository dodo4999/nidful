<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // get 10 products
        $products = Product::latest()->limit(10)->get();
        
        return response([
            'count' => $products->count(),
            'products' => $products
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'product_name' => 'required',
            'price' => 'required|integer',
            'quantity' => 'required|integer',
            'product_condition' => 'required',
            'description' => 'required',
            'product_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        $user_id = auth()->id();

        $imageName = time() . '.' . $request->product_image->extension();
        $request->product_image->move(public_path('product_images'), $imageName);
        
        $product =  Product::create([
            'product_name' => $request->product_name,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'product_condition' => $request->product_condition,
            'description' => $request->description,
            'product_image' => $imageName,
            'user_id' => $user_id
        ]);
        
        return response([
            'product' => $product
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);
        
        return response([
            'message' => 'product',
            'products' => $product
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        
        $request->validate([
            'product_name' => 'required',
            'price' => 'required|integer',
            'quantity' => 'required|integer',
            'product_condition' => 'required',
            'description' => 'required',
        ]);

        $datatoupdate = [
            'product_name' => $request->product_name,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'product_condition' => $request->product_condition,
            'description' => $request->description,
        ];
        
        if($request->hasFile('product_image')){
        $imageName = time() . '.' . $request->product_image->extension();
        $request->product_image->move(public_path('product_images'), $imageName);
        $datatoupdate['product_image'] = $imageName;
        }

        Product::where('id', $id)->update($datatoupdate);

        return response([
            'product' => $product
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete = Product::destroy($id);
         
        return response([
            'message' => 'product deleted',
            'products' => $delete
        ], 200);
    }
    
    /**
     * Search by name
     *
     * @param  str  $name
     * @return \Illuminate\Http\Response
     */
    public function search($product_name)
    {
        return Product::where('product_name','like', '%'.$product_name.'%')->get();
    }
}
