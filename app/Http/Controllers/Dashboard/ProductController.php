<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\addProductRequest;
use App\Http\Requests\editProductRequest;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\color_product;
use App\Models\ImgProduct;
use App\Models\Product;
use App\Models\product_category;
use App\Models\Size;
use App\Models\Variant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $data['title_page'] = 'Daftar Produk';
        $data['produk'] = Product::where('pp_is_displayed', true)->orderBy('pp_update_at', 'desc')->get();
        foreach ($data['produk'] as $prod) {
            foreach ($prod->variants as $var) {
                $prod['total_stock'] += $var->pv_stock;
            }
        }
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
        $data['brands'] = Brand::orderBy('pb_title', 'asc')->get();
        $data['sizes'] = Size::orderBy('ps_size', 'asc')->get();
        $data['colors'] = Color::orderBy('pc_name', 'asc')->get();
        return view('admin.form-produk')->with($data);
    }
    public function editProductForm($id)
    {
        $data['product'] = Product::find($id);
        $data['title_page'] = 'Edit Produk';
        $data['categories'] = Category::all();
        $data['brands'] = Brand::orderBy('pb_title', 'asc')->get();
        $data['sizes'] = Size::orderBy('ps_size', 'asc')->get();
        $data['colors'] = Color::orderBy('pc_name', 'asc')->get();
        return view('admin.form-edit-produk')->with($data);
    }
    public function addProduct(addProductRequest $request)
    {
        DB::beginTransaction();
        try {
            // $product = new Product;
            $id = mt_rand();
            $check_id = $this->check_token($id);

            while ($check_id != 0) {
                $id = mt_rand();
                $check_id = $this->check_token($id);
            }

            $product = new Product;
            $product['pp_id'] = $id;
            $product['pp_id_brand'] = $request->pp_id_brand;
            $product['pp_name'] = $request->pp_name;
            $product['pp_gender'] = $request->pp_gender;
            $product['pp_sku'] = $request->pp_sku;
            $product['pp_description'] = $request->pp_description;
            $product['pp_measurements'] = $request->pp_measurements;
            $product['pp_start_promo'] = @$request->pp_start_promo;
            $product['pp_end_promo'] = @$request->pp_end_promo;
            $product['pp_price'] = $request->pp_price;
            $product['pp_promo_price'] = @$request->pp_promo_price;
            $product['pp_care_label'] = $request->pp_care_label;
            $product['pp_is_displayed'] = $request->pp_is_displayed;
            $product['pp_material_upper'] = $request->pp_material_upper;
            $product['pp_material_outer_sole'] = $request->pp_material_outer_sole;
            $product['pp_final_price'] = $request->pp_price;
            $product['pp_slug'] = Str::slug($request->pp_name, '-');

            $product->save();

            $imgProduct = new ImgProduct;
            $imgProduct['pip_id_product'] = $product['pp_id'];
            $folder = Str::slug($request->pp_name, '-');
            $file = $request->file('pip_img_path');
            $nama_file = time() . "_" . $file->getClientOriginalName();

            // isi dengan nama folder tempat kemana file diupload
            $path = 'image/product/' . $folder . '/';
            if (!is_dir('image/product/' . $folder)) {
                mkdir('./image/product/' . $folder, 0777, TRUE);
            }
            $file->move($path, $nama_file);
            $imgProduct['pip_img_path'] = $nama_file;

            $imgProduct->save();

            foreach ($request->category as $category) {
                $product_category = new product_category;
                $product_category['ppc_id_product'] = $product['pp_id'];
                $product_category['ppc_id_category'] = $category;
                $product_category->save();
            }

            foreach ($request->pv_id_size as $index => $variants) {
                foreach ($variants as $size) {
                    $varian = new Variant;
                    $varian['pv_id_product'] = $product['pp_id'];
                    $varian['pv_id_color'] = $request->pv_id_color[$index];
                    $varian['pv_stock'] = $request->pv_stock[$index];
                    $varian['pv_id_size'] = $size;
                    $varian->save();
                }
                $color_product = new color_product;
                $color_product['pcp_id_color'] = $request->pv_id_color[$index];
                $color_product['pcp_id_product'] = $product['pp_id'];
                $color_product->save();
            }

            DB::commit();

            return redirect()->back()->with(['message' => 'Success Add A Product']);
            // all good
        } catch (\Exception $e) {
            DB::rollback();
            return $e;
            // something went wrong
        }
    }
    public function check_token($id)
    {
        $data = Product::where('pp_id', $id)->count();
        return $data;
    }
    public function deleteImgProduct(ImgProduct $img)
    {
        $img->delete();
        return redirect()->back()->with(['message' => 'Delete A Image']);
    }
    public function editProduct(editProductRequest $request, Product $product)
    {
        // dd($request);
        foreach ($product->variants as $val) {
            $val->delete();
        }
        foreach ($product->color_products as $col) {
            $col->delete();
        }
        foreach ($product->product_categoies as $pc) {
            $pc->delete();
        }
        foreach ($request->category as $category) {
            $categoryProduct = new product_category;
            $categoryProduct['ppc_id_product'] = $product['pp_id'];
            $categoryProduct['ppc_id_category'] = $category;
            $categoryProduct->save();
        }

        foreach ($request->size as $size) {
            $varian = new Variant;
            $varian['pv_id_product'] = $product['pp_id'];
            $varian['pv_id_color'] = $request->pv_id_color;
            $varian['pv_stock'] = $request->pv_stock;
            $varian['pv_id_size'] = $size;
            $varian->save();
        }

        $color = new color_product;
        $color['pcp_id_color'] = $request->pv_id_color;
        $color['pcp_id_product'] = $product['pp_id'];
        $color->save();

        if (isset($request->size1)) {
            foreach ($request->size1 as $size) {
                $varian = new Variant;
                $varian['pv_id_product'] = $product['pp_id'];
                $varian['pv_id_color'] = $request->pv_id_color1;
                $varian['pv_stock'] = $request->pv_stock1;
                $varian['pv_id_size'] = $size;
                $varian->save();
            }

            $color1 = new color_product;
            $color1['pcp_id_color'] = $request->pv_id_color1;
            $color1['pcp_id_product'] = $product['pp_id'];
            $color1->save();
        }

        if (isset($request->pip_img_path)) {
            $imgProduct = new ImgProduct;
            $imgProduct['pip_id_product'] = $product['pp_id'];
            $folder = Str::slug($request->pp_name, '-');
            $file = $request->file('pip_img_path');
            $nama_file = time() . "_" . $file->getClientOriginalName();

            // isi dengan nama folder tempat kemana file diupload
            $path = 'image/product/' . $folder . '/';
            if (!is_dir('image/product/' . $folder)) {
                mkdir('./image/product/' . $folder, 0777, TRUE);
            }
            $file->move($path, $nama_file);
            $imgProduct['pip_img_path'] = $nama_file;

            $imgProduct->save();
        }

        $product['pp_id_brand'] = $request->pp_id_brand;
        $product['pp_name'] = $request->pp_name;
        $product['pp_gender'] = $request->pp_gender;
        $product['pp_sku'] = $request->pp_sku;
        $product['pp_description'] = $request->pp_description;
        $product['pp_measurements'] = $request->pp_measurements;
        $product['pp_start_promo'] = $request->pp_start_promo;
        $product['pp_end_promo'] = $request->pp_end_promo;
        $product['pp_price'] = $request->pp_price;
        $product['pp_promo_price'] = $request->pp_promo_price;
        $product['pp_care_label'] = $request->pp_care_label;
        $product['pp_is_displayed'] = $request->pp_is_displayed;
        $product['pp_material_upper'] = $request->pp_material_upper;
        $product['pp_material_outer_sole'] = $request->pp_material_outer_sole;
        $product['pp_final_price'] = $request->pp_price;
        $product['pp_slug'] = Str::slug($request->pp_name, '-');
        $product->save();


        return redirect()->back()->with(['message' => 'Edit A Product']);
    }
}
