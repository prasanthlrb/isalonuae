 @section('css')
     <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/tables/datatable/datatables.min.css">

     <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
 @endsection
 @extends('admin.layouts')
@section('body-section')
 <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-12 mb-2 mt-1">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h5 class="content-header-title float-left pr-1 mb-0">Package List</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="/dashboard"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Salon Package
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
          <span>New Package</span>
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
                            <th>Package Name</th>
                            <th>Price</th>
                            <th>Validity</th>
                            <th>Next Renewal Discount</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($salon_package as $key => $row)
                        <tr>
                            <td>{{$key + 1}}</td>
                            <td>{{$row->package_name}}</td>
                            <td>{{$row->price}}</td>
                            <td>
                                @if($row->validity == 1)
                                Days
                                @else
                                Months
                                @endif
                            </td>
                            <td>{{$row->next_renewal_discount}}</td>
                            
                <td><div class="dropdown">
                <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                </span>
                <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                  <a onclick="Edit({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-edit-alt mr-1"></i> edit</a>
                  <a onclick="Delete({{$row->id}})" class="dropdown-item" href="#"><i class="bx bx-trash mr-1"></i> delete</a>
                </div>
              </div></td>
                            </tr>

                         @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                            <th>#</th>
                            <th>Package Name</th>
                            <th>Price</th>
                            <th>Validity</th>
                            <th>Next Renewal Discount</th>
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
    <div class="modal-dialog " role="document">
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

                    <div class="form-group">
                        <label>Package Name</label>
                        <input autocomplete="off" type="text" id="package_name" name="package_name" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Price</label>
                        <input autocomplete="off" type="text" id="price" name="price" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Validity</label>
                        <select class="form-control" name="validity" id="validity">
                        	<option value="">SELECT</option>
                        	<option value="1">Days</option>
                        	<option value="2">Months</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <div style="width: 100%;" class="d-inline-block mb-1 mr-1">
                            <input id="validity_count" name="validity_count" type="number" class="touchspin" value="1">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Next Renewal Discount</label>
                        <input autocomplete="off" type="text" id="next_renewal_discount" name="next_renewal_discount" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Package Renewal Remember Days</label>
                        <input autocomplete="off" type="text" id="package_renewal_remember_days" name="package_renewal_remember_days" class="form-control">
                    </div>

                    <div class="col form-group p-0">
                        <button onclick="addRow()" class="btn btn-primary" data-repeater-create type="button">
                          <i class="bx bx-plus"></i>Add Item
                        </button>
                    </div>


                    <div class="row form-group col-md-12">
                        <table id="productTable">
                                    
                            <tbody id="productTabletbody">
<tr style="padding:20px;width: 100%;" value="0" class="all" id="row0">
    <td style="width:80%">
        <input class="form-control" type="text" name="package_item[]" id="package_item0" autocomplete="off"  />
    </td>
    <td style="width:20%" align="center">
        <button onclick="removeProductRow(0)" id="removeProductRowBtn0" class="btn btn-icon btn-danger rounded-circle" type="button" data-repeater-delete><i class="bx bx-x"></i></button>
    </td>
</tr>
                            </tbody>
                            
                        </table>
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

    <script src="/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
    <script src="/app-assets/js/scripts/forms/number-input.min.js"></script>
<script type="text/javascript">
$('.package').addClass('active');

var action_type;
$('#add_new').click(function(){
    $('#popup_modal').modal('show');
    $("#form")[0].reset();
    action_type = 1;

    $(".all_row").remove();

    $('#saveButton').text('Save');
    $('#modal-title').text('Add Package');
});

function Save(){
  var formData = new FormData($('#form')[0]);
  if(action_type == 1){
    $.ajax({
        url : '/admin/save-salon-package',
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
      url : '/admin/update-salon-package',
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
    url : '/admin/salon-package/'+id,
    type: "GET",
    dataType: "JSON",
    success: function(data)
    {
      $('#modal-title').text('Update Package');
      $('#save').text('Save Change');
      $('input[name=package_name]').val(data.package_name);
      $('input[name=price]').val(data.price);
      $('input[name=next_renewal_discount]').val(data.next_renewal_discount);
      $('input[name=package_renewal_remember_days]').val(data.package_renewal_remember_days);
      $('input[name=validity_count]').val(data.validity_count);
      $('select[name=validity]').val(data.validity);
      $('input[name=id]').val(id);
      $(".all_row").remove();
      getsalonpackageitem(data.id);
      $('#popup_modal').modal('show');
      action_type = 2;
    }
  });
}

function getsalonpackageitem(id){
  $.ajax({
    url : '/admin/get-salon-package-item/'+id,
    type: "GET",
    success: function(data)
    {
        $('#productTabletbody').html(data);
    }
  });
}

function Delete(id){
    var r = confirm("Are you sure");
    if (r == true) {
      $.ajax({
        url : '/admin/salon-package-delete/'+id,
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



function addRow() {
    var tableLength = $("#productTable tbody tr").length;

    var tableRow;
    var arrayNumber;
    var count;

    if(tableLength > 0) {       
        tableRow = $("#productTable tbody tr:last").attr('id');
        arrayNumber = $("#productTable tbody tr:last").attr('class');
        count = tableRow.substring(3);  
        count = Number(count) + 1;
        arrayNumber = Number(arrayNumber) + 1;                  
    } else {
        count = 1;
        arrayNumber = 0;
    }


var tr = '<tr style="padding:20px;" value="'+count+'" class="all_row" id="row'+count+'">'+
    '<td style="width:80%">'+
        '<input class="form-control" type="text" name="package_item[]" id="package_item'+count+'" autocomplete="off"  />'+
    '</td>'+
    '<td style="width:20%" align="center">'+
        '<button onclick="removeProductRow('+count+')" id="removeProductRowBtn'+count+'" class="btn btn-icon btn-danger rounded-circle" type="button" data-repeater-delete><i class="bx bx-x"></i></button>'+
    '</td>'+
'</tr>';


if(tableLength > 0) {                           
    $("#productTable tbody tr:last").after(tr);
} else {                
    $("#productTable tbody").append(tr);
}       


} // /add row


function removeProductRow(row = null)
{
    if(confirm('Are you sure delete this row?'))
    {
        $("#row"+row).remove();
    }
}
</script>
@endsection