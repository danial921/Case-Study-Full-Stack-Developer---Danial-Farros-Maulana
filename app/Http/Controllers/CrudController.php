<?php

namespace App\Http\Controllers;

use App\Models\asset;
use App\Models\category;
use App\Models\product;
use App\Models\productasset;
use Illuminate\Http\Request;

class CrudController extends Controller
{
    public function assetstore(Request $request){
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'path' => 'required',
            'size' => 'required'
        ]);
        $show = asset::create($validatedData);
        return redirect('asset')->with('success', 'asset is successfully saved');
    }

    public function productstore(Request $request){
        $validatedData = $request->validate([
            'product_name' => 'required|max:255',
            'product_slug' => 'required',
            'price' => 'required',
            'description' => 'required|max:350'
        ]);
        $show = product::create($validatedData);
        return redirect('product')->with('success', 'product is successfully saved');
    }

    public function categorystore(Request $request){
        $validatedData = $request->validate([
            'category_name' => 'required|max:255',
            'category_slug' => 'required',
            'asset_id' => 'required',
        ]);
        $show = category::create($validatedData);
        return redirect('category')->with('success', 'category is successfully saved');
    }

    public function productassetstore(Request $request){
        $validatedData = $request->validate([
            'asset_id' => 'required|max:255',
            'product_id' => 'required',
        ]);
        $show = productasset::create($validatedData);
        return redirect('productasset')->with('success', 'product asset is successfully saved');
    }
}
