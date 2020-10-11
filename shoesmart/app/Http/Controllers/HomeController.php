<?php

namespace App\Http\Controllers;

use App\Models\Guest;
use App\Models\Product;
use Illuminate\Http\Request;
use Jenssegers\Agent\Agent;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $data['latestProducts'] = $this->getLatestProduct();
        foreach ($data['latestProducts'] as $lp) {
            $lp->diskon = false;
            if ($lp->pp_start_promo <= now() && $lp->pp_end_promo >= now()) $lp->diskon = true;
        }
        $data['populerProducts'] = $this->getPopulerProduct();
        foreach ($data['populerProducts'] as $pp) {
            $pp->diskon = false;
            if ($pp->pp_start_promo <= now() && $pp->pp_end_promo >= now()) $pp->diskon = true;
        }
        $data['code_page'] = 'index_page';
        $agent = new Agent;
        $guest = new Guest;
        $guest['pg_ip_address'] = $request->getClientIp();
        $guest['pg_browser'] = $agent->browser();
        $guest->save();
        return view('front.index')->with($data);
    }

    public function getLatestProduct()
    {
        $data = Product::where('pp_is_displayed', true)->orderBy('pp_created_at', 'DESC')->limit(10)->get();
        return $data;
    }

    public function getPopulerProduct()
    {
        $data = Product::where('pp_is_displayed', true)->whereRaw('pp_total_stock > 0')->orderBy('pp_total_stock', 'asc')->limit(10)->get();
        return $data;
    }
}
