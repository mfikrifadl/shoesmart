@extends('template.front.index')
@section('content')
<!-- Page info -->
<div class="page-top-info">
    <div class="container">
        <h4>CAtegory PAge</h4>
        <div class="site-pagination">
            <a href="">Home</a> /
            <a href="">Shop</a> /
        </div>
    </div>
</div>
<!-- Page info end -->


<!-- Category section -->
<section class="category-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 order-2 order-lg-1">
                <div class="filter-widget">
                    <h2 class="fw-title">Categories</h2>
                    <ul class="category-menu">
                        @foreach($categories as $category)
                        <li><a href="#">{{$category->pc_title}}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div class="filter-widget mb-0">
                    <h2 class="fw-title">refine by</h2>
                    <div class="price-range-wrap">
                        <h4>Price</h4>
                        <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="270">
                            <div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div>
                            <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;">
                            </span>
                            <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;">
                            </span>
                        </div>
                        <div class="range-slider">
                            <div class="price-input">
                                <input type="text" id="minamount" value="0">
                                <input type="text" id="maxamount" value="270">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-widget mb-0">
                    <h2 class="fw-title">color by</h2>
                    <div class="fw-color-choose">
                        @foreach($colors as $color)
                        <div class="cs-item color">
                            <input type="radio" name="pc_id" id="{{$color->pc_id}}">
                            <label style="background: {{$color->pc_rgb}};" for="{{$color->pc_id}}">
                            </label>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="filter-widget mb-0">
                    <h2 class="fw-title">Size</h2>
                    <div class="fw-size-choose">
                        @foreach($sizes as $size)
                        <div class="sc-item size">
                            <input type="radio" name="ps_id" id="{{$size->ps_id}}">
                            <label for="{{$size->ps_id}}">{{$size->ps_size}}</label>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="filter-widget">
                    <h2 class="fw-title">Brand</h2>
                    <ul class="category-menu">
                        @foreach($brands as $brand)
                        <li><a href="#">{{$brand->pb_title}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>

            <div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row filter_data">
                    @foreach($products as $product)
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="{{asset('image/product/'.$product->pp_slug.'/'.$product->imgProducts[0]->pip_img_path)}}" alt="">
                                <div class="pi-links">
                                    <a href="/product/{{$product->pp_slug}}" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                </div>
                            </div>
                            <div class="pi-text">
                                @if($product->diskon == true)
                                <h6>Rp {{rupiah($product->pp_promo_price)}}</h6>
                                @else
                                <h6>Rp {{rupiah($product->pp_price)}}</h6>
                                @endif
                                <a href="{{route('detail.produk', $product->pp_slug)}}">
                                    <p>{{$product->pp_name}}</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Category section end -->
@endsection