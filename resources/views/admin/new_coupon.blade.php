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
                            <h5 class="content-header-title float-left pr-1 mb-0">New Coupon</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="/admin/dashboard"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">New Coupon
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
        <div class="card-content">
            <div class="card-body card-dashboard">
                <!-- <p class="card-text">In this Table Show All type of Salon Information, Booking Details and Payment Details.</p> -->
                                        
            <div class="table-responsive">
               
                <table class="table zero-configuration">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Salon</th>
		                    <th>Coupon Code</th>
		                    <th>Start Date</th>
		                    <th>End Date</th>
		                    <th>Discount Type</th>
		                    <th>Amount</th>
                            <th>Status</th>
		                    <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @php ($x = 0) @endphp
	                @foreach($coupon as $row)
	                @php $x++ @endphp
	                  <tr>
	                    <td>{{$x}}</td>
	                    <td>
	                    	@foreach($user as $user1)
	                    	@if($user1->id == $row->salon_id)
	                    	{{$user1->salon_name}}
	                    	@endif
	                    	@endforeach
	                    <td>
	                      @if(date('Y-m-d') > $row->end_date )
	                        <span style="color:red">{{$row->coupon_code}}</span>
	                      @else
	                        <span style="color:green">{{$row->coupon_code}}</span>
	                      @endif
	                    </td>
	                    <td>{{$row->start_date}}</td>
	                    <td>{{$row->end_date}}</td>
	                    <td>
	                      @if($row->discount_type == '1')
	                      Discount from product
	                      @elseif($row->discount_type == '2')
	                      Discount % from product
	                      @elseif($row->discount_type == '3')
	                      Discount from total cart
	                      @else
	                      Discount % from total cart
	                      @endif
	                    </td>
	                    <td>{{$row->amount}}</td>
                        <td>
                            @if($row->status == 1)
                            Approved
                            @elseif($row->status == 2)
                            Denied
                            @else
                            Pending
                            @endif
                        </td>
                            
                <td><div class="dropdown">
                <span class="bx bx-dots-horizontal-rounded font-medium-3 dropdown-toggle nav-hide-arrow cursor-pointer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
                </span>
                <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; transform: translate3d(-125px, 19px, 0px); top: 0px; left: 0px; will-change: transform;">
                  <a onclick="Update({{$row->id}},1)" class="dropdown-item" href="#">Approved</a>
                  <a onclick="Update({{$row->id}},2)" class="dropdown-item" href="#">Denied</a>
                </div>
              </div></td>
                            </tr>

                         @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>S.No</th>
                                <th>Salon</th>
			                    <th>Coupon Code</th>
			                    <th>Start Date</th>
			                    <th>End Date</th>
			                    <th>Discount Type</th>
			                    <th>Amount</th>
	                            <th>Status</th>
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
$('.new-coupon').addClass('active');

function Update(id,id1){
    var r = confirm("Are you sure");
    if (r == true) {
      $.ajax({
        url : '/admin/update-new-coupon/'+id+'/'+id1,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          toastr.success(data, 'Successfully Update');
          $('.zero-configuration').load(location.href+' .zero-configuration');
        }
      });
    } 
}

</script>
@endsection