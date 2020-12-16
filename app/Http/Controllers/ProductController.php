<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\Size;
use App\Models\Variant;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $data['code_page'] = 'daftar_product';
        $data['categories'] = $this->getAllCategories();
        $data['colors'] = $this->getAllColors();
        $data['sizes'] = $this->getAllSize();
        $data['brands'] = $this->getAllBrand();
        $data['products'] = $this->getAllProduct();
        $data['ip'] = $request->getClientIp();
        return view('front.daftar-produk')->with($data);
    }
    public function getAllCategories()
    {
        $data = Category::all();
        return $data;
    }
    public function getAllColors()
    {
        $data = Color::all();
        return $data;
    }
    public function getAllSize()
    {
        $data = Size::all();
        return $data;
    }
    public function getAllBrand()
    {
        $data = Brand::all();
        return $data;
    }
    public function getAllProduct()
    {
        $data = Product::where('pp_is_displayed', true)->orderBy('pp_created_at', 'desc')->get();
        foreach ($data as $lp) {
            $lp->diskon = false;
            if ($lp->pp_start_promo <= now() && $lp->pp_end_promo >= now()) $lp->diskon = true;
        }
        return $data;
    }
    public function productDetail(Request $request, $slug)
    {
        $data['code_page'] = 'detail_product';
        $data['product'] = Product::where('pp_slug', $slug)->first();
        if ($data['product']->pp_start_promo <= now() && $data['product']->pp_end_promo >= now()) $data['product']['diskon'] = true;
        $data['productRelate'] = $this->getProductRelated($data['product']->pp_id_brand);
        $data['productSize'] = $this->getSizeProduct($data['product']['pp_id']);
        $data['ip'] = $request->getClientIp();
        return view('front.detail-produk')->with($data);
    }

    public function getProductRelated($brand)
    {
        $product = Product::where('pp_id_brand', $brand)->limit(5)->get();
        foreach ($product as $lp) {
            $lp->diskon = false;
            if ($lp->pp_start_promo <= now() && $lp->pp_end_promo >= now()) $lp->diskon = true;
        }
        return $product;
    }
    public function getSizeProduct($id)
    {
        $product = Variant::where('pv_id_product', $id)->get();
        return $product;
    }

    public function getFilter(Request $request)
    {
        if (isset($request["action"])) {
            $statement = Product::where('pp_is_displayed', true)->count();
        }
        $total_row = $statement;
        $output = '';
        if ($total_row > 0) {
            foreach ($statement as $row) {
                $output .= '
                    ok
			';
            }
        } else {
            $output = '<h3>No Data Found</h3>';
        }
        return $output;
    }
}
