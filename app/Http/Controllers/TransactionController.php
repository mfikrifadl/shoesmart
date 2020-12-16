<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\cart_product;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\transaction_product;
use App\Models\Variant;
use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransactionController extends Controller
{
    public function getCart($ip)
    {
        $data['code_page'] = 'cart_detail';
        $data['ip'] = $ip;
        $data['cart'] = $this->getChartGuest($ip);
        $data['total_cart'] = 0;
        foreach ($data['cart']->cart_products as $prod) {
            $prod->diskon = false;
            if ($prod->variant->product->pp_start_promo <= now() && $prod->variant->product->pp_end_promo >= now()) {
                $total = $prod->tcp_qty * $prod->variant->product->pp_promo_price;
                $data['total_cart'] += $total;
                $prod->diskon = true;
            } else {
                $total = $prod->tcp_qty * $prod->variant->product->pp_price;
                $data['total_cart'] += $total;
            }
        }
        $data['populerProducts'] = $this->getPopulerProduct();
        foreach ($data['populerProducts'] as $pp) {
            $pp->diskon = false;
            if ($pp->pp_start_promo <= now() && $pp->pp_end_promo >= now()) $pp->diskon = true;
        }
        // dd($data);
        return view('front.cart-detail')->with($data);
    }

    public function getChartGuest($ip)
    {
        $getChart = Cart::where('tc_ip_guest', $ip)->count();
        if ($getChart < 1) {
            $cartNew = new Cart;
            $cartNew['tc_ip_guest'] = $ip;
            $cartNew->save();
        }
        $cart = Cart::where('tc_ip_guest', $ip)->first();
        return $cart;
    }

    public function getPopulerProduct()
    {
        $data = Product::select(DB::raw("*, ( SELECT sum(v.pv_stock) FROM product.variant v WHERE pp_id = v.pv_id_product ) AS total_stock"))->where('pp_is_displayed', true)->orderBy('total_stock', 'asc')->limit(4)->get();
        return $data;
    }
    public function addCart(Request $request)
    {
        // dd($request);
        $cart = $this->getChartGuest($request->getClientIp());
        $variant = $this->getVariantProduct($request->pv_id_product, $request->pv_id_size, $request->pv_id_color);
        $product = new cart_product;
        $product['tcp_id_cart'] = $cart['tc_id'];
        $product['tcp_id_variant'] = $variant['pv_id'];
        $product['tcp_qty'] = $request->tcp_qty;
        $product->save();
        return redirect()->route('get.cart', $request->getClientIp());
    }

    public function getVariantProduct($product, $size, $color)
    {
        $data = Variant::where('pv_id_product', $product)->where('pv_id_size', $size)->where('pv_id_color', $color)->first();
        return $data;
    }

    public function delProdCart(cart_product $cart)
    {
        $cart->delete();
        return redirect()->back();
    }

    public function getCheckOut($ip)
    {
        $data['code_page'] = 'cart_checkout';
        $data['ip'] = $ip;
        $data['cart'] = $this->getChartGuest($ip);
        $data['total_cart'] = 0;
        foreach ($data['cart']->cart_products as $prod) {
            $prod->diskon = false;
            if ($prod->variant->product->pp_start_promo <= now() && $prod->variant->product->pp_end_promo >= now()) {
                $total = $prod->tcp_qty * $prod->variant->product->pp_promo_price;
                $data['total_cart'] += $total;
                $prod->diskon = true;
            } else {
                $total = $prod->tcp_qty * $prod->variant->product->pp_price;
                $data['total_cart'] += $total;
            }
        }
        return view('front.detail-checkout')->with($data);
    }

    public function addTransaction(Request $request, $idCart)
    {
        $data['cart'] = $this->getChartGuest($idCart);
        $data['total_cart'] = 0;
        foreach ($data['cart']->cart_products as $prod) {
            if ($prod->variant->product->pp_start_promo <= now() && $prod->variant->product->pp_end_promo >= now()) {
                $total = $prod->tcp_qty * $prod->variant->product->pp_promo_price;
                $data['total_cart'] += $total;
            } else {
                $total = $prod->tcp_qty * $prod->variant->product->pp_price;
                $data['total_cart'] += $total;
            }
        }



        $data['ip'] = $request->getClientIp();
        $trans = new Transaction;
        $trans['tt_address'] .= $request->tt_address;
        $trans['tt_address'] .= $request->tt_address1;
        $trans['tt_country'] = $request->tt_country;
        $trans['tt_zip_code'] = $request->tt_zip_code;
        $trans['tt_phone'] = $request->tt_phone;
        $trans['tt_total_price'] = $data['total_cart'];
        $trans['tt_id_cart'] = $data['cart']['tc_id'];
        $trans['tt_status'] = 0;
        $trans['tt_code_order'] = $this->generateRandomString();

        $file = $request->file('tt_img_path');
        $nama_file = time() . "_" . $file->getClientOriginalName();
        // isi dengan nama folder tempat kemana file diupload
        $path = 'image/invoice/';
        $file->move($path, $nama_file);
        $trans['tt_img_path'] = $nama_file;

        $trans->save();

        foreach ($data['cart']->cart_products as $cp) {

            $ok = $cp->variant->pv_stock -= $cp->tcp_qty;
            $cp->variant->update([
                'pv_stock' => $ok
            ]);
            $transProd = new transaction_product;
            $transProd['ttp_id_transaction'] = $trans['tt_id'];
            $transProd['ttp_id_variant'] = $cp->tcp_id_variant;
            $transProd['ttp_qty'] = $cp->tcp_qty;
            $transProd->save();
            $cp->delete();
        }

        return redirect()->back()->with(['message' => 'Success Order', 'code_order' => $trans['tt_code_order']]);
    }
    function generateRandomString($length = 10)
    {
        return substr(str_shuffle(str_repeat($x = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length / strlen($x)))), 1, $length);
    }

    public function codeOrderPage(Request $request)
    {
        $data['transaction'] = $this->getTransaction($request->code_order);
        $data['ip'] = $request->getClientIp();
        $data['code_page'] = 'code_order';
        return view('front.code-order')->with($data);
    }
    public function getTransaction($code_order)
    {
        $data = Transaction::where('tt_code_order', $code_order)->first();
        return $data;
    }
}
