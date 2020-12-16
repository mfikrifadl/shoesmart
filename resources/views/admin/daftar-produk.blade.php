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
    <!-- Default Light Table -->
    <div class="row">
        <div class="col">
            <div class="card card-small mb-4">
                <div class="card-header border-bottom">
                    <h6 class="m-0">Produk</h6>
                </div>
                <div class="card-body p-0 pb-3 text-center">
                    <table class="table mb-0">
                        <thead class="bg-light">
                            <tr>
                                <th scope="col" class="border-0">#</th>
                                <th scope="col" class="border-0">Nama Produk</th>
                                <th scope="col" class="border-0">Harga</th>
                                <th scope="col" class="border-0">Gambar</th>
                                <th scope="col" class="border-0">Stok</th>
                                <th scope="col" class="border-0">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($produk as $key=>$prod)
                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$prod->pp_name}}</td>
                                <td>Rp {{rupiah($prod->pp_price)}}</td>
                                <td><img class="img-dashboard" src="{{asset('image/product/'.$prod->pp_slug.'/'.$prod->imgProducts[0]->pip_img_path)}}" /></td>
                                <td>{{$prod->total_stock}}</td>
                                <td><a href="/product/{{$prod->pp_slug}}" type="button" class="btn btn-white">
                                        <span class="text-info">
                                            <i class="material-icons">zoom_in</i>
                                        </span>
                                        Detail
                                    </a>
                                    @if($title_page == 'Daftar Produk')
                                    <form action="{{route('produk.draft', $prod->pp_id)}}" class="d-inline-block" method="POST">
                                        @csrf
                                        {{method_field('PUT')}}
                                        <button type="submit" class="btn btn-white">
                                            <span class="text-danger">
                                                <i class="material-icons">clear</i>
                                            </span>
                                            Draft
                                        </button>
                                    </form>
                                    @else
                                    <form action="{{route('produk.post', $prod->pp_id)}}" class="d-inline-block" method="POST">
                                        @csrf
                                        {{method_field('PUT')}}
                                        <button type="submit" class="btn btn-white">
                                            <span class="text-primary">
                                                <i class="material-icons">star</i>
                                            </span>
                                            Post
                                        </button>
                                    </form>
                                    @endif
                                    <form action="{{route('produk.delete', $prod->pp_id)}}" class="d-inline-block" method="POST">
                                        @csrf
                                        {{method_field('DELETE')}}
                                        <button type="SUBMIT" class="btn btn-white">
                                            <span class="text-danger">
                                                <i class="material-icons">delete</i>
                                            </span>
                                            Hapus
                                        </button>
                                    </form>
                                    <a href="/dashboard/produk/edit/{{$prod->pp_id}}" type="button" class="btn btn-white">
                                        <span class="text-light">
                                            <i class="material-icons">more_vert</i>
                                        </span>
                                        Edit
                                    </a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- End Default Light Table -->
</div>
@endsection