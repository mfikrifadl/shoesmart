@extends('template.admin.index')
@section('content')
@if(session()->has('message'))
<div class="alert alert-success alert-dismissible fade show mb-0" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
    <i class="fa fa-check mx-2"></i>
    <strong>Success!</strong> {{ session()->get('message') }} </div>
@endif
<div class="main-content-container container-fluid px-4">
    <!-- Page Header -->
    <div class="page-header row no-gutters py-4">
        <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
            <span class="text-uppercase page-subtitle">Overview</span>
            <h3 class="page-title">{{$title_page}}</h3>
        </div>
    </div>
    <!-- End Page Header -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <div id="listTransaction_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-12">
                            <table id="listTransaksi" class="table table-hover table-striped data no-footer dtr-inline" style="width: 100%;" role="grid" aria-describedby="listTransaction_info">
                                <thead>
                                    <tr role="row">
                                        <th></th>
                                        <th>Invoice</th>
                                        <th>Bukti Transfer</th>
                                        <th>Jumlah Pembayaran</th>
                                        <th>Alamat</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($transactions as $key=>$transaction)
                                    <tr role="row" class="odd">
                                        <td>{{$key+1}}</td>
                                        <td>
                                            <small class="date">
                                                <span class="far fa-clock"></span> {{$transaction->tt_created_at}} WIB
                                            </small><br>
                                            {{$transaction->tt_code_order}}<br>
                                            @if($transaction->tt_status == -1)
                                            <span class="label label-danger">Failed</span>
                                            @elseif($transaction->tt_status == 0)
                                            <span class="label label-warning">Unpaid</span>
                                            @elseif($transaction->tt_status == 1)
                                            <span class="label label-info">Paid</span>
                                            @elseif($transaction->tt_status == 2)
                                            <span class="label label-primary">Deliver</span>
                                            @elseif($transaction->tt_status == 3)
                                            <span class="label label-success">Success</span>
                                            @endif
                                        </td>
                                        <td>
                                            <button class="btn btn-white" data-toggle="modal" data-target="#buktitf{{$key}}" type="button"><span class="text-info"><i class="material-icons">zoom_in</i></span>
                                                Buka Bukti</button>
                                        </td>
                                        <div id="buktitf{{$key}}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Bukti Transfer</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <img src="{{asset('image/invoice/'.$transaction->tt_img_path)}}" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <td>Rp {{rupiah($transaction->tt_total_price)}}</td>
                                        <td>{{$transaction->tt_address}}</td>
                                        <td>
                                            <button class="btn btn-primary btn-sm waves-effect waves-light" data-toggle="modal" data-target="#detail{{$key}}" type="button"><i class="fa as fas fa-search-plus"></i> Detail</button>
                                            <div id="detail{{$key}}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Detail Transaksi</h4>
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <table class="table mb-0">
                                                                <thead class="bg-light">
                                                                    <tr>
                                                                        <th scope="col" class="border-0">#</th>
                                                                        <th scope="col" class="border-0">Nama Produk</th>
                                                                        <th scope="col" class="border-0">Gambar</th>
                                                                        <th scope="col" class="border-0">Jumlah</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    @foreach($transaction->variants as $no=>$var)
                                                                    <tr>
                                                                        <td>{{$no+1}}</td>
                                                                        <td>{{$var->product->pp_name}}</td>
                                                                        <td><img class="img-dashboard" src="{{asset('image/product/'.$var->product->pp_slug.'/'.$var->product->imgProducts[0]->pip_img_path)}}" /></td>
                                                                        <td>{{$transaction->transaction_products[$no]->ttp_qty}}</td>
                                                                    </tr>
                                                                    @endforeach
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="btn btn-info btn-sm waves-effect waves-light upd-receipt" data-toggle="modal" data-target="#resi{{$key}}" type="button"><span class="btn-label"><i class="icon icon-doc"></i></span>
                                                Resi</button>
                                            <div id="resi{{$key}}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Input Resi Pengiriman</h4>
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form id="update-receipt" method="POST" action="{{route('transaksi.resi', $transaction->tt_id)}}">
                                                                @csrf
                                                                {{method_field('PUT')}}
                                                                <div class="form-group">
                                                                    <label for="recipient-name" class="control-label">Recipient:</label>
                                                                    <input type="text" class="form-control" id="tt_resi" name="tt_resi" value="{{$transaction->tt_resi}}">
                                                                </div>
                                                                <button type="submit" class="btn btn-danger waves-effect waves-light">Save changes</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            @if($transaction->tt_status < 1) <form action="{{route('transaksi.approve', $transaction->tt_id)}}" class="d-inline-block" method="POST">
                                                @csrf
                                                {{method_field('PUT')}}
                                                <button class="btn btn-success btn-sm waves-effect waves-light approve-trans" type="submit"><span class="btn-label"><i class="icon icon-check"></i></span>
                                                    Approve</button>
                                                </form>
                                                @else
                                                <form action="{{route('transaksi.unapprove', $transaction->tt_id)}}" class="d-inline-block" method="POST">
                                                    @csrf
                                                    {{method_field('PUT')}}
                                                    <button class="btn btn-danger btn-sm waves-effect waves-light approve-trans" type="submit"><span class="btn-label"><i class="icon icon-check"></i></span>
                                                        UnApprove</button>
                                                </form>
                                                @endif
                                                <form action="{{route('transaksi.eject', $transaction->tt_id)}}" method="POST" class="d-inline-block">
                                                    @csrf
                                                    {{method_field('PUT')}}
                                                    <button class="btn btn-danger btn-sm waves-effect waves-light del-product" type="submit"><span class="btn-label"></span>
                                                        Tolak</button>
                                                </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection