 @section('css')
     <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/tables/datatable/datatables.min.css">
 @endsection
 @extends('admin.layouts')
@section('body-section')
 <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-12 mb-2 mt-1">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h5 class="content-header-title float-left pr-1 mb-0">Salon List</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="/dashboard"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Salon
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
           
                <!-- Zero configuration table -->
                <section id="basic-datatable">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
        <!-- new task button -->
        <button id="add_new" style="width: 200px;" type="button" class="btn btn-primary add-task-btn btn-block my-1">
          <i class="bx bx-plus"></i>
          <span>New Salon</span>
        </button>
        </div>
        <div class="card-content">
            <div class="card-body card-dashboard">
                <!-- <p class="card-text">In this Table Show All type of Salon Information, Booking Details and Payment Details.</p> -->
                
                <div class="table-responsive">
                   
                    <table class="table zero-configuration">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Salon Name</th>
                                <th>Owner / Person Name</th>
                                <th>Phone Number</th>
                                <th>Total Booking</th>
                                <th>Current Status</th>
                                <th>Membership Plan</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($salon as $key => $row)
                            <tr>
                                <td>{{$key + 1}}</td>
                                <td>{{$row->salon_name}}</td>
                                <td>{{$row->name}}</td>
                                <td>{{$row->phone}}</td>
                                <td>200</td>

                                <td>
                                    <?php
                                    $today = date('Y-m-d');
                                    if($row->expiry_date > $today){
                                        echo '<span class="text-success">Active</span>';
                                    }
                                    elseif($row->expiry_date < $today){
                                        echo '<span class="text-danger">DeActive</span>';
                                    }
                                    elseif( $today >= $row->remind_date ){
                                        echo '<span class="text-info">Active</span>';
                                    }
                                    ?>
                                </td>
                                <td>
                                    @foreach($salon_package as $package)
                                    @if($package->id == $row->salon_package)
                                    {{$package->package_name}}
                                    @endif
                                    @endforeach
                                </td>
                                <td><div class="dropdown">
                                    <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                                    </span>
                                    <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                                      <a onclick="Edit({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-edit-alt mr-1"></i> edit</a>
                                      <a onclick="Delete({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-trash mr-1"></i> delete</a>
                                      <a onclick="UpgradePlan({{$row->id}})" class="dropdown-item"><i class="bx bxs-chat mr-1"></i> Upgrade Package</a>
                                      <a target="_blank" class="dropdown-item" href="/admin/salon-login/{{$row->id}}"><i class="bx bxs-chat mr-1"></i> Salon Login</a>
                                      <!-- <a class="dropdown-item" href="/admin/chat-to-salon"><i class="bx bxs-chat mr-1"></i> Chat</a> -->
                                      <!-- <a class="dropdown-item" href="#"><i class="bx bx-lock-alt mr-1"></i> Block</a> -->
                                      <a class="dropdown-item" href="/admin/view-salon/{{$row->id}}"><i class="bx bx-show-alt mr-1"></i> See Profile</a>
                                    </div>
                                  </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Salon Name</th>
                                <th>Owner / Person Name</th>
                                <th>Phone Number</th>
                                <th>Total Booking</th>
                                <th>Current Status</th>
                                <th>Membership Plan</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                    </table>


                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
            </div>
            
        </div>


 
<!-- Bootstrap Modal -->
<div class="modal fade" id="popup_modal" tabindex="-1" role="dialog" aria-labelledby="popup_modal" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-grey-dark-5">
                <h6 class="modal-title text-white" id="modal-title">Add New</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="form" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                <input type="hidden" name="id" id="id">

                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Busisness Type</label>
                        <select id="busisness_type" name="busisness_type" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Salon</option>
                            <option value="2">Spa</option>
                            <option value="3">Makeup Artist</option>
                            <option value="4">Beauty Clinic</option>
                            <option value="5">Home Services</option>
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label>Owner Name</label>
                        <input autocomplete="off" type="text" id="name" name="name" class="form-control">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Email ID</label>
                        <input autocomplete="off" type="email" id="email" name="email" class="form-control">
                    </div>

                    <div class="form-group col-md-6">
                        <label>Phone Number</label>
                        <input autocomplete="off" type="text" id="phone" name="phone" class="form-control">
                    </div>
                </div>
                <!-- <div class="row">
                    <div class="form-group col-md-6">
                        <label>Password</label>
                        <input type="password" id="password" name="password" class="form-control">
                    </div>

                    <div class="form-group col-md-6">
                        <label>Confirm Password</label>
                        <input type="password" id="password_confirmation" name="password_confirmation" class="form-control">
                    </div>
                </div> -->
                <div class="row salon-view">
                    <div class="form-group col-md-6">
                        <label>Busisness Name</label>
                        <input type="text" id="salon_name" name="salon_name" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label>Busisness ID</label>
                        <input type="text" id="salon_id" name="salon_id" class="form-control">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                    <div class="form-group">
                        <label>City</label>
                        <select onchange="getArea()" id="city" name="city" class="form-control">
                            <option value="">SELECT</option>
                            @foreach($city as $row)
                            <option value="{{$row->id}}">{{$row->area}}</option>
                            @endforeach
                        </select>
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                        <label>Address</label>
                        <textarea id="address" name="address" class="form-control"></textarea>
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                        <label>Emirates ID</label>
                        <input type="text" id="emirates_id" name="emirates_id" class="form-control">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Trade License No</label>
                        <input type="text" id="trade_license_no" name="trade_license_no" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Vat Certificate No</label>
                        <input type="text" id="vat_certificate_no" name="vat_certificate_no" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Passport Number</label>
                        <input type="text" id="passport_number" name="passport_number" class="form-control">
                    </div>
                    
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Nationality</label>
                        <select id="nationality" name="nationality" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">United Arab Emirates</option>
                            <option value="2">India</option>
                            <option value="3">Russia</option>
                            <option value="4">Pakistan</option>
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label>Salon Package</label>
                        <select id="salon_package" name="salon_package" class="form-control">
                            <option value="">SELECT</option>
                            @foreach($salon_package as $row)
                            <option value="{{$row->id}}">{{$row->package_name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Salon Comission (%)</label>
                        <input type="text" id="salon_commission" name="salon_commission" class="form-control">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-4 trade-license">
                        <label>Trade License Copy</label>
                        <input type="file" id="trade_license" name="trade_license" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Passport Copy</label>
                        <input type="file" id="passport_copy" name="passport_copy" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Emirated ID Copy</label>
                        <input type="file" id="emirated_id_copy" name="emirated_id_copy" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Cover Image</label>
                        <input type="file" id="cover_image" name="cover_image" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Profile Image</label>
                        <input type="file" id="profile_image" name="profile_image" class="form-control">
                    </div>
                </div>
                    <div class="form-group">
                        <button onclick="Save()" id="saveButton" class="btn btn-primary btn-block mr-10" type="button">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /Bootstrap Modal -->

<style type="text/css">
.container {max-width: 850px; width: 100%; margin: 0 auto;}
.four { width: 32.26%; max-width: 32.26%;}


/* COLUMNS */

.col {
  display: block;
  float:left;
  margin: 1% 0 1% 1.6%;
}

.col:first-of-type { margin-left: 0; }

/* CLEARFIX */

.cf:before,
.cf:after {
    content: " ";
    display: table;
}

.cf:after {
    clear: both;
}

.cf {
    *zoom: 1;
}

.form .plan input, .form .payment-plan input, .form .payment-type input{
    display: none;
}

.form label{
    position: relative;
    color: #fff;
    background-color: #aaa;
    font-size: 26px;
    text-align: center;
    height: 150px;
    line-height: 150px;
    display: block;
    cursor: pointer;
    border: 3px solid transparent;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.form .plan input:checked + label, .form .payment-plan input:checked + label, .form .payment-type input:checked + label{
    border: 3px solid #333;
    background-color: #2fcc71;
}

.form .plan input:checked + label:after, form .payment-plan input:checked + label:after, .form .payment-type input:checked + label:after{
    content: "\2713";
    width: 40px;
    height: 40px;
    line-height: 40px;
    border-radius: 100%;
    border: 2px solid #333;
    background-color: #2fcc71;
    z-index: 999;
    position: absolute;
    top: -10px;
    right: -10px;
}
</style>

<!-- Bootstrap Modal -->
<div class="modal fade" id="membership_modal" tabindex="-1" role="dialog" aria-labelledby="membership_modal" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-grey-dark-5">
                <h6 class="modal-title text-white" id="modal-title">Add New</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
    <div class="container">
        <form class="form cf" id="planform" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
        <input type="hidden" name="id">
            <section id="plan_view" class="plan cf">
                
            </section>
            <div class="form-group">
                <button onclick="UpdatePlan()" id="saveButton" class="btn btn-primary btn-block mr-10" type="button">Add</button>
            </div>
        </form>
    </div>
            </div>
        </div>
    </div>
</div>
<!-- /Bootstrap Modal -->
@endsection
@section('js')
    <script src="/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
                    <!-- BEGIN: Page Vendor JS-->
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <!-- END: Page Vendor JS-->
    <script src="/app-assets/js/scripts/datatables/datatable.js"></script>
<script type="text/javascript">
$('.salon').addClass('active');
var action_type;
$('#add_new').click(function(){
    $('#popup_modal').modal('show');
    $("#form")[0].reset();
    $('#salon_package').removeAttr('disabled');
    action_type = 1;
    $('#saveButton').text('Save');
    $('#modal-title').text('Add Salon');
});

$(".trade-license").hide();
$(".salon-view").hide();
$('#busisness_type').change(function(){
    var busisness_type = $('#busisness_type').val();
    if(busisness_type == '5'){
        $(".salon-view").hide();
        $(".trade-license").hide();
    }
    else{
        $(".salon-view").show();
        $(".trade-license").show();
    }
});

function getArea(){
  var id = $('#city').val();
  $.ajax({
    url : '/get-area/'+id,
    type: "GET",
    success: function(data)
    {
        $('#area').html(data);
    }
  });
}

function Save(){
  var formData = new FormData($('#form')[0]);
  if(action_type == 1){
    $.ajax({
        url : '/admin/save-salon',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {                
            $("#form")[0].reset();
            $('#popup_modal').modal('hide');
            $('.zero-configuration').load(location.href+' .zero-configuration');
            toastr.success(data, 'Successfully Save');
        },error: function (data) {
            var errorData = data.responseJSON.errors;
            $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
      });
    }
    });
  }else{
    $.ajax({
      url : '/admin/update-salon',
      type: "POST",
      data: formData,
      contentType: false,
      processData: false,
      dataType: "JSON",
      success: function(data)
      {
        console.log(data);
          $("#form")[0].reset();
           $('#popup_modal').modal('hide');
           $('.zero-configuration').load(location.href+' .zero-configuration');
           toastr.success(data, 'Successfully Update');
      },error: function (data) {
        var errorData = data.responseJSON.errors;
        $.each(errorData, function(i, obj) {
          toastr.error(obj[0]);
        });
      }
    });
  }
}


function Edit(id){
  $.ajax({
    url : '/admin/salon/'+id,
    type: "GET",
    dataType: "JSON",
    success: function(data)
    {
      $('#modal-title').text('Update Salon');
      $('#save').text('Save Change');
      $('select[name=busisness_type]').val(data.busisness_type);
    if(data.busisness_type == '5'){
        $(".salon-view").hide();
        $(".trade-license").hide();
    }
    else{
        $(".trade-license").show();
        $(".salon-view").show();
    }
      $('input[name=name]').val(data.name);
      $('input[name=phone]').val(data.phone);
      $('input[name=email]').val(data.email);
      $('input[name=salon_id]').val(data.salon_id);
      $('input[name=salon_name]').val(data.salon_name);
      $('input[name=emirates_id]').val(data.emirates_id);
      $('input[name=trade_license_no]').val(data.trade_license_no);
      $('input[name=vat_certificate_no]').val(data.vat_certificate_no);
      $('input[name=passport_number]').val(data.passport_number);
      $('select[name=nationality]').val(data.nationality);
      $('select[name=salon_package]').val(data.salon_package);
      $('select[name=city]').val(data.city);
      $('textarea[name=address]').val(data.address);
      $('#salon_package').attr('disabled', 'disabled');
      $('input[name=salon_commission]').val(data.salon_commission);
      $('input[name=id]').val(id);
      $('#popup_modal').modal('show');
      action_type = 2;
    }
  });
}

function UpgradePlan(id){
var r = confirm("Are you sure");
    if (r == true) {
      $.ajax({
        url : '/admin/get-package-plan/'+id,
        type: "GET",
        success: function(data)
        {
            $('#plan_view').html(data);
            $('input[name=id]').val(id);
            $('#membership_modal').modal('show');
        }
      });
    } 
}

function UpdatePlan(){
  var formData = new FormData($('#planform')[0]);
    $.ajax({
        url : '/admin/update-plan',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {                
            $("#planform")[0].reset();
            $('#membership_modal').modal('hide');
            $('.zero-configuration').load(location.href+' .zero-configuration');
            toastr.success(data, 'Successfully Save');
        },error: function (data) {
            var errorData = data.responseJSON.errors;
            $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
      });
    }
    });
}
function Delete(id){
    var r = confirm("Are you sure");
    if (r == true) {
      $.ajax({
        url : '/admin/salon-delete/'+id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          toastr.success(data, 'Successfully Delete');
          $('.zero-configuration').load(location.href+' .zero-configuration');
        }
      });
    } 
}

</script>
@endsection