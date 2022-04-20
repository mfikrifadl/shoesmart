@extends('template.admin.index')
@section('content')
@if(session()->has('message'))
<div class="alert alert-success alert-dismissible fade show mb-0" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
    <i class="fa fa-check mx-2"></i>
    <strong>Success!</strong> {{ session()->get('message') }}
</div>
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
    <form id="edit_product" method="post" action="{{route('produk.edit', $product)}}" onsubmit="return getContent()" enctype="multipart/form-data">
        @csrf
        {{method_field('PUT')}}
        <div class="row">
            <div class="col-lg-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-12 col-md-8">
                                <div class="form-group">
                                    <label for="pp_name" class="control-label col-form-label">Nama produk<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_name" id="pp_name" value="{{$product->pp_name}}" required="">
                                </div>
                            </div>
                            <!-- End Product Name -->
                            <!-- Gender -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-form-label" for="pp_gender">Gender<span class="text-danger">*</span></label>
                                    <select class="form-control" id="pp_gender" name="pp_gender" value="{{$product->pp_gender}}" required="">
                                        <option value="male">male</option>
                                        <option value="female">female</option>
                                        <option value="male/female">male/female</option>
                                    </select>
                                </div>
                            </div>
                            <!-- End Gender -->
                        </div>

                        <div class="row">
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label for="pp_sku" class="control-label col-form-label">SKU<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_sku" id="pp_sku" value="{{$product->pp_sku}}" required="">
                                </div>
                            </div>
                            <!-- Product Promo Start -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label for="pp_start_promo" class="control-label col-form-label">Promo Start</span></label>
                                    <input type="date" class="form-control" name="pp_start_promo" id="pp_start_promo" value="{{$product->pp_start_promo}}">
                                </div>
                            </div>
                            <!-- End Product Promo Start -->
                            <!-- Product Promo Close -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label for="pp_end_promo" class="control-label col-form-label">Promo End</label>
                                    <input type="date" class="form-control" name="pp_end_promo" id="pp_end_promo" value="{{$product->pp_end_promo}}">
                                </div>
                            </div>
                            <!-- End Product Promo Close -->
                        </div>

                        <div class="row">
                            <!-- Product Base Price -->
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="pp_price" class="control-label col-form-label">Harga Produk<span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Rp</span>
                                        </div>
                                        <input type="number" class="form-control" name="pp_price" id="pp_price" value="{{$product->pp_price}}" required="">
                                    </div>
                                </div>
                            </div>
                            <!-- End Product Base Price -->
                            <!-- Product Promo Price -->
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="pp_promo_price" class="control-label col-form-label">Harga Promo</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Rp</span>
                                        </div>
                                        <input type="number" class="form-control" name="pp_promo_price" id="pp_promo_price" value="{{$product->pp_promo_price}}">
                                    </div>
                                </div>
                            </div>
                            <!-- End Product Sell Price -->
                        </div>

                        <div class="row">
                            <!-- Product Care Label -->
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="pp_care_label" class="control-label col-form-label">Care Label</label>
                                    <div class="form-group">
                                        <textarea class="form-control" name="pp_care_label" id="pp_care_label">{{$product->pp_care_label}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <!-- End Product Care Label -->
                        </div>
                        <div class="row">
                            <!-- Product Care Description -->
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="pp_description" class="control-label col-form-label">Deskripsi</label>
                                    <input type="hidden" id="pp_description" name="pp_description">
                                    <div id="editor-container" class="add-new-post__editor mb-1">{!! $product->pp_description !!}</div>
                                </div>
                            </div>
                            <!-- End Product Care Description -->
                        </div>
                        <div class="row">
                            <!-- Product Care Description -->
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="pp_measurements" class="control-label col-form-label">Measurements</label>
                                    <input type="hidden" id="pp_measurements" name="pp_measurements">
                                    <div id="editor-container1" class="add-new-post__editor mb-1" value="{{$product->pp_measurements}}">{!! $product->pp_measurements !!}</div>
                                </div>
                            </div>
                            <!-- End Product Care Description -->
                        </div>
                    </div>
                </div>
            </div>

            <!-- status -->
            <div class="col-lg-6">
                <div class='card card-small mb-3'>
                    <div class="card-header border-bottom">
                        <h6 class="m-0">Categories</h6>
                    </div>
                    <div class='card-body p-0'>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item px-3 pb-2">
                                @foreach($categories as $key=>$category)
                                <div class="custom-control custom-checkbox mb-1">
                                    @foreach($product->categories as $pc)
                                    @if($category->pc_id == $pc->pc_id)
                                    <input type="checkbox" class="custom-control-input" name="category[{{$key}}]" value="{{$category->pc_id}}" id="category{{$key+1}}" checked>
                                    @endif
                                    @endforeach
                                    <input type="checkbox" class="custom-control-input" name="category[{{$key}}]" value="{{$category->pc_id}}" id="category{{$key+1}}">
                                    <label class="custom-control-label" for="category{{$key+1}}">{{$category->pc_title}}</label>
                                </div>
                                @endforeach
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body-size" id="variant-card">
                        <?php $getLastIndex = 0 ?>
                        @foreach($product->variants as $index => $variant)
                        <?php $getLastIndex = $index ?>
                        <div class="row variant{{$index}}">
                            <!-- Product Size -->
                            <div class="col-sm-12 col-md-4">
                                <label for="pv_id_size[{{$index}}]" class="control-label col-form-label">Size<span class="text-danger">*</span></label>
                                <div class="custom-checkbox mb-1">
                                    <select class="form-control select2" id="pv_id_size{{$index}}" name="pv_id_size[{{$index}}]" required="">
                                        @foreach($sizes as $key=>$size)
                                        @if($variant->pv_id_size == $size->ps_id)
                                        <option value="{{$size->ps_id}}" selected>{{$size->ps_size}}</option>
                                        @else
                                        <option value="{{$size->ps_id}}">{{$size->ps_size}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <!-- End Product Size -->
                            <!-- Color -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-form-label" for="pv_id_color[{{$index}}]">Color<span class="text-danger">*</span></label>
                                    <select class="form-control" id="pv_id_color{{$index}}" name="pv_id_color[{{$index}}]" required>
                                        @foreach($colors as $color)
                                        @if($variant->pv_id_color == $color->pc_id)
                                        <option value="{{$color->pc_id}}" style="background: {{$color->pc_rgb}};" selected>{{$color->pc_name}}</option>
                                        @else
                                        <option value="{{$color->pc_id}}" style="background: {{$color->pc_rgb}};">{{$color->pc_name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <!-- End Color -->
                            <!-- Stock -->
                            <div class="col-sm-12 col-md-3">
                                <div class="form-group">
                                    <label for="pv_stock[{{$index}}]" class="control-label col-form-label">Stock<span class="text-danger">*</span></label>
                                    <input type="number" class="form-control" name="pv_stock[{{$index}}]" id="pv_stock{{$index}}" value="{{$variant->pv_stock}}" required>
                                </div>
                            </div>
                            <!-- End Stock -->
                            <!-- Act -->
                            <div class="col-sm-12 col-md-1">
                                <div class="form-group">
                                    <label class="control-label col-form-label">Act</label>
                                    <a class="btn btn-white" onclick="deleteVariant({{$index}})">
                                        <span class="text-danger">
                                            <i class="material-icons">delete</i>
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <!-- End Act -->
                        </div>
                        @endforeach
                    </div>
                    <div class="row ml-2 mt-2 mr-2 mb-1">
                        <div class="col-md-12">
                            <button type="button" class="btn btn-primary w-100" onclick="addForm()">Tambah Variant</button>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="pp_description" class="control-label col-form-label">Status Produk<span class="text-danger">*</span></label>
                                    <br>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadioInline1" name="pp_is_displayed" value="true" class="custom-control-input" <?php if ($product->pp_is_displayed == true) echo 'checked' ?>>
                                        <label class="custom-control-label" for="customRadioInline1">Publish</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadioInline2" name="pp_is_displayed" value="false" class="custom-control-input" <?php if ($product->pp_is_displayed == false) echo 'checked' ?>>
                                        <label class="custom-control-label" for="customRadioInline2">Draft</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end status -->

                        <!-- Brand -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-form-label" for="pp_id_brand">Brand<span class="text-danger">*</span></label>
                                    <select class="form-control" id="pp_id_brand" name="pp_id_brand" required="">
                                        <option value="{{$product->pp_id_brand}}">{{$product->brand->pb_title}}</option>
                                        @foreach($brands as $brand)
                                        <option value="{{$brand->pb_id}}">{{$brand->pb_title}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- End Brand -->

                        <!-- Material Upper -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="pp_material_upper" class="control-label col-form-label">Material Upper<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_material_upper" id="pp_material_upper" value="{{$product->pp_material_upper}}" required="">
                                </div>
                            </div>
                        </div>
                        <!-- End Material Upper -->

                        <!-- Material Upper Sole -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="pp_material_outer_sole" class="control-label col-form-label">Material Upper Sole<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_material_outer_sole" id="pp_material_outer_sole" value="{{$product->pp_material_outer_sole}}" required="">
                                </div>
                            </div>
                        </div>
                        <!-- End Material Upper Sole -->
                        <!-- Material Upper Sole -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="pip_img_path" class="control-label col-form-label">Foto Product<span class="text-danger">*</span></label>
                                    <input type="file" name="pip_img_path" class="dropify" data-max-file-size="3M" multiple />
                                </div>
                            </div>
                        </div>
                        <!-- End Material Upper Sole -->

                        <div class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary w-100">Simpan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end row -->
    </form>
    <!-- Material Upper Sole -->
    <div class="row">
        <div class="col-lg-8">
            <div class="card mb-4">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label for="pip_img_path" class="control-label col-form-label">Galeri<span class="text-danger">*</span></label>
                            <div class="form-group">
                                @foreach($product->imgProducts as $img)
                                <div class="thumb-wrapper">
                                    <form action="{{route('produk.delete.img', $img->pip_id)}}" method="POST">
                                        @csrf
                                        {{method_field('DELETE')}}
                                        <img class="img img-gallery" src="{{asset('image/product/'.$product->pp_slug.'/'.$img->pip_img_path)}}" alt="">
                                        <button type="submit" class="btn btn-danger btn-circle del-img-gallery">
                                            <i class="material-icons">delete</i> </button>
                                    </form>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Material Upper Sole -->
</div>
@endsection
@push('after-script')
<script src="{{ asset('dropify/js/dropify.js' )}}"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.dropify').dropify();
        $('.select2').select2();
        $('.select2multiple').select2();
        $('#pv_id_size0').select2();
    });
</script>
<script>
    function getContent() {
        document.getElementById("pp_description").value = document.getElementById("editor-container").children[0].innerHTML;
        document.getElementById("pp_measurements").value = document.getElementById("editor-container1").children[0].innerHTML;
    }
</script>

<script>
    var i = <?= $getLastIndex ?>

    function addForm() {
        i++;
        $('#variant-card').append('<div class="row variant' + i + '"><div class="col-sm-12 col-md-4"><label for="pv_id_size[' + i + ']" class="control-label col-form-label">Size<span class="text-danger">*</span></label><div class="custom-checkbox mb-1"><select class="form-control select2" id="pv_id_size' + i + '" name="pv_id_size[' + i + ']" required="">@foreach($sizes as $key=>$size)<option value="{{$size->ps_id}}">{{$size->ps_size}}</option>@endforeach</select></div></div><div class="col-sm-12 col-md-4"><div class="form-group"><label class="control-label col-form-label" for="pv_id_color[' + i + ']">Color<span class="text-danger">*</span></label><select class="form-control" id="pv_id_color' + i + '" name="pv_id_color[' + i + ']" required>@foreach($colors as $color)<option value="{{$color->pc_id}}" style="background: {{$color->pc_rgb}};">{{$color->pc_name}}</option>@endforeach</select></div></div><div class="col-sm-12 col-md-3"><div class="form-group"><label for="pv_stock[' + i + ']" class="control-label col-form-label">Stock<span class="text-danger">*</span></label><input type="number" class="form-control" name="pv_stock[' + i + ']" id="pv_stock' + i + '" required></div></div><div class="col-sm-12 col-md-1"><div class="form-group"><label class="control-label col-form-label">Act</label><a class="btn btn-white" onclick="deleteVariant(' + i + ')"><span class="text-danger"><i class="material-icons">delete</i></span></a></div></div></div>');
        $('#pv_id_size' + i + '').select2();
    }

    function openForm() {
        alert(i)
        document.getElementById("variant2").style.display = "block";
    }

    function closeForm() {
        document.getElementById("variant2").style.display = "none";
    }

    function deleteVariant(x) {
        $('.variant' + x).remove();
    }
</script>

@endpush