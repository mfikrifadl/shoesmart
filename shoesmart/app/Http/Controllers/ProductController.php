<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function productDetail($slug)
    {
        $data['code_page'] = 'detail_product';
        $data['product'] = Product::where('pp_slug', $slug)->first();
        if ($data['product']->pp_start_promo <= now() && $data['product']->pp_end_promo >= now()) $data['product']['diskon'] = true;
        $data['productRelate'] = $this->getProductRelated($data['product']->pp_id_brand);
        return view('front.detail-product')->with($data);
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
}
