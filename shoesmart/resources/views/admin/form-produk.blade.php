@extends('template.admin.index')
@section('content')
<div class="main-content-container container-fluid px-4">
    <!-- Page Header -->
    <div class="page-header row no-gutters py-4">
        <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
            <span class="text-uppercase page-subtitle">Overview</span>
            <h3 class="page-title">{{$title_page}}</h3>
        </div>
    </div>
    <!-- End Page Header -->
    <form id="add_product" method="post" action="{{route('produk.add')}}" onsubmit="return getContent()">
        @csrf
        <div class="row">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-12 col-md-8">
                                <div class="form-group">
                                    <label for="pp_name" class="control-label col-form-label">Nama produk<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_name" id="pp_name" required="">
                                </div>
                            </div>
                            <!-- End Product Name -->
                            <!-- Gender -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-form-label" for="pp_gender">Gender<span class="text-danger">*</span></label>
                                    <select class="form-control" id="pp_gender" name="pp_gender" required="">
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
                                    <input type="text" class="form-control" name="pp_sku" id="pp_sku" required="">
                                </div>
                            </div>
                            <!-- Product Promo Start -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label for="pp_start_promo" class="control-label col-form-label">Promo Start</span></label>
                                    <input type="date" class="form-control" name="pp_start_promo" id="pp_start_promo">
                                </div>
                            </div>
                            <!-- End Product Promo Start -->
                            <!-- Product Promo Close -->
                            <div class="col-sm-12 col-md-4">
                                <div class="form-group">
                                    <label for="pp_end_promo" class="control-label col-form-label">Promo End</label>
                                    <input type="date" class="form-control" name="pp_end_promo" id="pp_end_promo">
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
                                        <input type="number" class="form-control" name="pp_price" id="pp_price" required="">
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
                                        <input type="number" class="form-control" name="pp_promo_price" id="pp_promo_price">
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
                                        <textarea class="form-control" name="pp_care_label" id="pp_care_label"></textarea>
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
                                    <div id="editor-container" class="add-new-post__editor mb-1"></div>
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
                                    <div id="editor-container1" class="add-new-post__editor mb-1"></div>
                                </div>
                            </div>
                            <!-- End Product Care Description -->
                        </div>
                    </div>
                </div>
            </div>

            <!-- status -->
            <div class="col-lg-4">
                <div class='card card-small mb-3'>
                    <div class="card-header border-bottom">
                        <h6 class="m-0">Categories</h6>
                    </div>
                    <div class='card-body p-0'>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item px-3 pb-2">
                                @foreach($categories as $key=>$category)
                                <div class="custom-control custom-checkbox mb-1">
                                    <input type="checkbox" class="custom-control-input" name="category[{{$key}}]" value="{{$category->pc_id}}" id="category{{$key+1}}">
                                    <label class="custom-control-label" for="category{{$key+1}}">{{$category->pc_title}}</label>
                                </div>
                                @endforeach
                            </li>
                        </ul>
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
                                        <input type="radio" id="customRadioInline1" name="pp_is_displayed" value="true" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadioInline1">Publish</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadioInline2" name="pp_is_displayed" value="false" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadioInline2">Draft</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end status -->

                        <!-- Material Upper -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="pp_material_upper" class="control-label col-form-label">Material Upper<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_material_upper" id="pp_material_upper" required="">
                                </div>
                            </div>
                        </div>
                        <!-- End Material Upper -->

                        <!-- Material Upper Sole -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="pp_material_outer_sole" class="control-label col-form-label">Material Upper Sole<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="pp_material_outer_sole" id="pp_material_outer_sole" required="">
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
</div>
@endsection
@push('after-script')
<script>
    function getContent() {
        document.getElementById("pp_description").value = document.getElementById("editor-container").children[0].innerHTML;
        document.getElementById("pp_measurements").value = document.getElementById("editor-container1").children[0].innerHTML;
    }
</script>
@endpush