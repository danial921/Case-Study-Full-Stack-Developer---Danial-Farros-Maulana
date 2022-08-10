<?php

namespace App\Http\Controllers;

use App\Models\asset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class dashboard extends Controller
{
    public function index(){
        $countasset = DB::table('assets')->count();
        $countproduct = DB::table('products')->count();
        $countproductassets = DB::table('productassets')->count();
        $countcategories = DB::table('categories')->count();

        $categories = DB::table('categories')->join('assets','categories.asset_id', '=', 'assets.id')->get();
        // $produk = DB::table('products')
        // ->join('productassets','productassets.product_id', '=', 'products.id')->get();.
        $produk = DB::select('
        SELECT products.product_name,products.price, products.product_slug, products.description, assets.path , COUNT(*) duplikat FROM productassets 
        INNER JOIN products ON productassets.product_id = products.id
        INNER JOIN assets ON productassets.asset_id = assets.id
        GROUP BY product_id HAVING COUNT(duplikat) > 1');
        // dd($produk);
        return view('dashboard',compact([
            'countasset',
            'countcategories',
            'countproduct',
            'countproductassets',
            'categories',
            'produk'
        ]));
    }
    public function detailproduct($id){
        $imgpath = DB::table('productassets')
        ->join('assets','productassets.asset_id', '=', 'assets.id')
        ->join('products','productassets.product_id', '=', 'products.id')
        ->where('products.product_slug', '=', $id)
        ->get();
        // dd($imgpath);
        $desc = DB::table('products')
        ->where('product_slug', '=', $id)
        ->get();

        // dd($desc);
        return view('detailproduct',compact(['imgpath','desc']));
    }
}
