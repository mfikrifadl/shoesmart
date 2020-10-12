@push('add-css')
<link rel="stylesheet" href="{{asset('css/custom.css')}}" />
@endpush
@extends('template.front.index')
@section('content')
<section class="cart-section spad-search">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form class="header-search-form">
                    <input type="text" name="code_order" placeholder="Search Code Order">
                    <button><i class="flaticon-search"></i></button>
                </form>
            </div>
        </div>
</section>
<section class="cart-section spad-search">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cart-table">
                    <h3>Your Order</h3>
                    <div class="cart-table-warp">
                        <table>
                            <thead>
                                <tr>
                                    <th class="size-th">Code Order</th>
                                    <th class="size-th">Status</th>
                                    <th class="size-th">Address</th>
                                    <th class="size-th">Date</th>
                                    <th class="size-th">Resi</th>
                                    <th class="total-th">Total Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    @if(isset($transaction))
                                    <td class="size-col">
                                        <h4>{{$transaction->tt_code_order}}</h4>
                                    </td>
                                    <td class="size-col">
                                        @if($transaction->tt_status == 0)
                                        <h4>In Check</h4>
                                        @elseif($transaction->tt_status == -1)
                                        <h4>Ejected</h4>
                                        @elseif($transaction->tt_status == 1)
                                        <h4>Packaging</h4>
                                        @elseif($transaction->tt_status == 2)
                                        <h4>On Delivery</h4>
                                        @elseif($transaction->tt_status == 3)
                                        <h4>Delivered</h4>
                                        @endif
                                    </td>
                                    <td class="size-col">
                                        <h4>{{$transaction->tt_address}}</h4>
                                    </td>
                                    <td class="size-col">
                                        <h4>{{$transaction->tt_created_at}}</h4>
                                    </td>
                                    <td class="size-col">
                                        <h4>{{$transaction->tt_resi}}</h4>
                                    </td>
                                    <td class="total-col">
                                        <h4>Rp {{Rupiah($transaction->tt_total_price)}}</h4>
                                    </td>
                                    @endif
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection