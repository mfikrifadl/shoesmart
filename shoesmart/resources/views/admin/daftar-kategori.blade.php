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
    <div class="row">
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <form id="add-category-ticket" method="POST" action="{{route('kategori.add')}}">
                        @csrf
                        <div class="form-group">
                            <label for="name"> Judul</label>
                            <input type="text" name="pc_title" id="ptt_title" class="form-control" placeholder="Nama Kategori Ticket" aria-describedby="ptt_title">
                        </div>
                        <div class="text-right">
                            <button class="btn btn-success btn-sm waves-effect waves-light" type="submit"><span class="btn-label"><i class="fas fa-save"></i></span> Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-8">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="dataTable" class="table table-hover table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th width="60%">Kategori</th>
                                    <th width=""></th>
                                    <th width="5%"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($categories as $categorie)
                                <tr>
                                    <td>{{$categorie->pc_title}}</td>
                                    <td>{{$categorie->pc_created_at}}</td>
                                    <td>
                                        <form action="{{route('kategori.destroy', $categorie)}}" method="POST">
                                            @csrf
                                            {{method_field('DELETE')}}
                                            <button class="btn btn-danger btn-sm waves-effect waves-light del-product" type="submit"><span class="btn-label"><i class="fa as fas fa-trash"></i></span>
                                                Hapus</button>
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
@endsection