@extends('template.front.index')
@section('content')
<!-- Hero section -->
<section class="hero-section">
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="{{asset('image/site/bg1.jpg')}}">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-7 text-white">
                        <h2>shoesmart</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                        <a href="#" class="site-btn sb-white">ABOUT</a>
                    </div>
                </div>
                <div class="offer-card text-white">
                    <span>from</span>
                    <h2>100K</h2>
                    <p>SHOP NOW</p>
                </div>
            </div>
        </div>
        <div class="hs-item set-bg" data-setbg="{{asset('image/site/bg2.jpg')}}">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-7 text-white">
                        <h2>shoesmart</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                        <a href="#" class="site-btn sb-line">ABOUT</a>
                    </div>
                </div>
                <div class="offer-card text-white">
                    <span>from</span>
                    <h2>100K</h2>
                    <p>SHOP NOW</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="slide-num-holder" id="snh-1"></div>
    </div>
</section>
<!-- Hero section end -->



<!-- Features section -->
<section class="features-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 p-0 feature">
                <div class="feature-inner">
                    <div class="feature-icon">
                        <img src="{{asset('front/img/icons/1.png')}}" alt="#">
                    </div>
                    <h2>Fast Secure Payments</h2>
                </div>
            </div>
            <div class="col-md-4 p-0 feature">
                <div class="feature-inner">
                    <div class="feature-icon">
                        <img src="{{asset('front/img/icons/2.png')}}" alt="#">
                    </div>
                    <h2>Premium Products</h2>
                </div>
            </div>
            <div class="col-md-4 p-0 feature">
                <div class="feature-inner">
                    <div class="feature-icon">
                        <img src="{{asset('front/img/icons/3.png')}}" alt="#">
                    </div>
                    <h2>Free & fast Delivery</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Features section end -->


<!-- letest product section -->
<section class="top-letest-product-section">
    <div class="container">
        <div class="section-title">
            <h2>LATEST PRODUCTS</h2>
        </div>
        <div class="product-slider owl-carousel">
            @foreach($latestProducts as $lp)
            <div class="product-item">
                <div class="pi-pic">
                    <div class="tag-new">New</div>
                    @if($lp->diskon == true)
                    <div class="tag-sale">ON SALE</div>
                    @endif
                    <img src="{{asset('image/product/'.$lp->pp_slug.'/'.$lp->imgProducts[0]->pip_img_path)}}" alt="">
                    <div class="pi-links">
                        <a href="/product/{{$lp->pp_slug}}" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                    </div>
                </div>
                <div class="pi-text">
                    @if($lp->diskon == true)
                    <!-- <h6>Rp {{rupiah($lp->pp_price)}}</h6> -->
                    <h6>Rp {{rupiah($lp->pp_promo_price)}}</h6>
                    @else
                    <h6>Rp {{rupiah($lp->pp_price)}}</h6>
                    @endif
                    <a href="{{route('detail.produk', $lp->pp_slug)}}">
                        <p>{{$lp->pp_name}}</p>
                    </a>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- letest product section end -->



<!-- Product filter section -->
<section class="product-filter-section">
    <div class="container">
        <div class="section-title">
            <h2>BROWSE TOP SELLING PRODUCTS</h2>
        </div>
        <div class="row">
            @foreach($populerProducts as $pp)
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        @if($pp->diskon == true)
                        <div class="tag-sale">ON SALE</div>
                        @endif
                        <img src="{{asset('image/product/'.$pp->pp_slug.'/'.$pp->imgProducts[0]->pip_img_path)}}" alt="">
                        <div class="pi-links">
                            <a href="/product/{{$pp->pp_slug}}" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        @if($pp->diskon == true)
                        <h6>Rp {{rupiah($pp->pp_promo_price)}}</h6>
                        @else
                        <h6>Rp {{rupiah($pp->pp_price)}}</h6>
                        @endif
                        <a href="{{route('detail.produk', $pp->pp_slug)}}">
                            <p>Black and White Stripes Dress</p>
                        </a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- Product filter section end -->
@endsection