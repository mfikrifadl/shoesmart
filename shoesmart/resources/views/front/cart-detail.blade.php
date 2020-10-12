@extends('template.front.index')
@section('content')
<!-- cart section end -->
<section class="cart-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="cart-table">
                    <h3>Your Cart</h3>
                    <div class="cart-table-warp">
                        <table>
                            <thead>
                                <tr>
                                    <th class="product-th">Product</th>
                                    <th class="quy-th">Quantity</th>
                                    <th class="size-th">Size</th>
                                    <th class="total-th">Price</th>
                                    <th class="total-th">Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($cart->cart_products as $cp)
                                <tr>
                                    <td class="product-col">
                                        <img src="{{asset('image/product/'.$cp->variant->product->pp_slug.'/'.$cp->variant->product->imgProducts[0]->pip_img_path)}}" alt="">
                                        <div class="pc-title">
                                            <h4>{{$cp->variant->product->pp_name}}</h4>
                                            @if($cp->diskon == true)
                                            <p>Rp {{rupiah($cp->variant->product->pp_promo_price)}}</p>
                                            @else
                                            <p>Rp {{rupiah($cp->variant->product->pp_price)}}</p>
                                            @endif
                                        </div>
                                    </td>
                                    <td class="size-col">
                                        <h4>{{$cp->tcp_qty}}</h4>
                                    </td>
                                    <td class="size-col">
                                        <h4>{{$cp->variant->size->ps_size}}</h4>
                                    </td>
                                    <td class="total-col">
                                        @if($cp->diskon == true)
                                        <h4>Rp {{rupiah($cp->variant->product->pp_promo_price * $cp->tcp_qty)}}</h4>
                                        @else
                                        <h4>Rp {{rupiah($cp->variant->product->pp_price * $cp->tcp_qty)}}</h4>
                                        @endif
                                    </td>
                                    <td class="ml-2">
                                        <form action="{{route('del.prod.cart', $cp->tcp_id)}}" class="d-inline-block" method="POST">
                                            @csrf
                                            {{method_field('DELETE')}}
                                            <button type="submit" style="cursor: pointer;" class="site-btn">DELETE</button>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="total-cost">
                        <h6>Total <span>Rp {{rupiah($total_cart)}}</span></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 card-right">
                <form class="promo-code-form">
                    <input type="text" placeholder="Enter promo code">
                    <button>Submit</button>
                </form>
                <a href="/invoice/{{$ip}}" class="site-btn">Proceed to checkout</a>
                <a href="/product" class="site-btn sb-dark">Continue shopping</a>
            </div>
        </div>
    </div>
</section>
<!-- cart section end -->

<!-- Related product section -->
<section class="related-product-section">
    <div class="container">
        <div class="section-title text-uppercase">
            <h2>Continue Shopping</h2>
        </div>
        <div class="row">
            @foreach($populerProducts as $pp)
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
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
                        <h6>Rp {{rupiah($pp->pp_price)}}</h6>'
                        @endif
                        <p>{{$pp->pp_name}}</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- Related product section end -->
@endsection