<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $data['title_page'] = 'Daftar Produk';
        $data['produk'] = Product::where('pp_is_displayed', true)->orderBy('pp_created_at', 'asc')->get();
        return view('admin.daftar-produk')->with($data);
    }
    public function getDraftProduct()
    {
        $data['title_page'] = 'Daftar Produk Draft';
        $data['produk'] = Product::where('pp_is_displayed', false)->orderBy('pp_update_at', 'asc')->get();
        return view('admin.daftar-produk')->with($data);
    }
    public function draftProduct($id)
    {
        $product = Product::find($id);
        $product->pp_is_displayed = false;
        $product->save();
        return redirect()->back()->with(['message' => 'Draft A Product']);
    }
    public function postProduct($id)
    {
        $product = Product::find($id);
        $product->pp_is_displayed = true;
        $product->save();
        return redirect()->back()->with(['message' => 'Post A Product']);
    }
    public function deleteProduct(Product $product)
    {
        $product->delete();
        return redirect()->back()->with(['message' => 'Delete A Product']);
    }
    public function addProductForm()
    {
        $data['title_page'] = 'Tambah Produk';
        $data['categories'] = Category::all();
        return view('admin.form-produk')->with($data);
    }
    public function addProduct(Request $request)
    {
        dd($request);
        $product = new Product;
        // dd($product);
        $product['pp_name'] = $request->pp_name;
        $product['pp_gender'] = $request->pp_gender;
        $product['pp_sku'] = $request->pp_sku;
        $product['pp_start_promo'] = $request->pp_start_promo;
        $product['pp_end_promo'] = $request->pp_end_promo;
        $product['pp_price'] = $request->pp_price;
        $product['pp_promo_price'] = $request->pp_promo_price;
        $product['pp_care_label'] = $request->pp_care_label;
        $product['pp_is_displayed'] = $request->pp_is_displayed;
        $product['pp_material_upper'] = $request->pp_material_upper;
        $product['pp_material_outer_sole'] = $request->pp_material_outer_sole;
        $product['pp_id_brand'] = 1;
        $product['pp_total_stock'] = 0;
        $product['pp_final_price'] = $request->pp_price;
        $product->save();
        // return redirect()->back()->with(['message' => 'Add A Product']);
    }
}
