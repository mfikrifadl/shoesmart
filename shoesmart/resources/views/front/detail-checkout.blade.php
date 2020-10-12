@push('add-css')
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="{{asset('css/custom.css')}}" />
@endpush
@extends('template.front.index')
@section('content')
@if(session()->has('message'))
<div id="myModal" class="modal fade">
    @else
    <div class="modal fade">
        @endif
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header justify-content-center">
                    <div class="icon-box">
                        <i class="material-icons">&#xE876;</i>
                    </div>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <h4>Great!</h4>
                    <p>Code Order :</p>
                    <h5>{{ session()->get('code_order') }}</h5>
                    <p>Your Transaction Has Been Record, Save Your Code Order for check your order</p>
                    <a href="/code-order" class="btn btn-success"><span>Check Code Order</span> <i class="material-icons">&#xE5C8;</i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- checkout section  -->

    <section class="checkout-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 order-2 order-lg-1">
                    <form class="checkout-form" method="post" action="{{route('add.transaction', $cart->tc_ip_guest)}}" enctype="multipart/form-data">
                        @csrf
                        <div class="cf-title">Billing Address</div>
                        <div class="row">
                            <div class="col-md-7">
                                <p>*Billing Information</p>
                            </div>
                        </div>
                        <div class="row address-inputs">
                            <div class="col-md-12">
                                <input type="text" name="tt_address" placeholder="Address" required>
                                <input type="text" name="tt_address1" placeholder="Address line 2">
                                <input type="text" name="tt_country" placeholder="Country" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" name="tt_zip_code" placeholder="Zip code" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" name="tt_phone" placeholder="Phone no." required>
                            </div>
                        </div>
                        <div class="cf-title">Payment</div>
                        <ul class="payment-list">
                            <li>Transfer nominal Rp {{rupiah($total_cart)}}</li>
                            <li>Ke akun xxxxxx a/n Muhammad Fikri F<a href="#"><img class="img-card" src="{{asset('front/img/bca.png')}}" alt=""></a></li>
                            <li>Kirim Bukti Transfer Dibawah ini</li>
                            <input type="file" name="tt_img_path" class="dropify" data-max-file-size="3M" required />
                        </ul>
                        <button type="submit" class="site-btn submit-order-btn">Place Order</button>
                    </form>
                </div>
                <div class="col-lg-4 order-1 order-lg-2">
                    <div class="checkout-cart">
                        <h3>Your Cart</h3>
                        <ul class="product-list">
                            @foreach($cart->cart_products as $cp)
                            <li>
                                <div class="pl-thumb"><img src="{{asset('image/product/'.$cp->variant->product->pp_slug.'/'.$cp->variant->product->imgProducts[0]->pip_img_path)}}" alt=""></div>
                                <h6>{{$cp->variant->product->pp_name}}</h6>
                                @if($cp->diskon == true)
                                <p>Rp {{rupiah($cp->variant->product->pp_promo_price)}}</p>
                                @else
                                <p>Rp {{rupiah($cp->variant->product->pp_price)}}</p>
                                @endif
                            </li>
                            @endforeach
                        </ul>
                        <ul class="price-list">
                            <li>Total<span>Rp {{rupiah($total_cart)}}</span></li>
                            <li>Shipping<span>free</span></li>
                            <li class="total">Total<span>Rp {{rupiah($total_cart)}}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- checkout section end -->
    @endsection
    @push('after-script')
    <script src="{{ asset('dropify/js/dropify.js' )}}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.dropify').dropify();
        });
    </script>
    <script type="text/javascript">
        $(window).on('load', function() {
            $('#myModal').modal('show');
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    @endpush