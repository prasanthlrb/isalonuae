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
                    <h5 class="content-header-title float-left pr-1 mb-0">Report List</h5>
                    <div class="breadcrumb-wrapper col-12">
                        <ol class="breadcrumb p-0 mb-0">
                            <li class="breadcrumb-item"><a href="/dashboard"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active">Revenue Report
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
                
                <div class="table-responsive">
                    <table class="table zero-configuration">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Date</th>
                                <th>Salon Name</th>
                                <th>Customer</th>
                                <th>Total Services /
                                <br>Packages</br></th>
                                <th>Transaction /
                                <br>Mode</br></th>
                                <th>Total Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($booking as $row)
                        <tr>
                            <td>#{{$row->id}}</td>
                            <td>{{$row->date}}</td>
                            <td>
                            @foreach($salon as $sal)
                            @if($sal->id == $row->salon_id)
                                @if($sal->salon_name != '')
                                {{$sal->salon_name}}
                                @else
                                {{$sal->name}}
                                @endif
                            @endif
                            @endforeach
                            </td>
                            <td>
                            @foreach($customer as $cus)
                            @if($cus->id == $row->customer_id)
                                {{$cus->name}}
                            @endif
                            @endforeach
                            </td>
                            <td></td>
                            <td>
                            @if($row->payment_type == 0)
                            C.O.D
                            @else
                            Card Payment
                            @endif
                            </td>
                            <td>{{$row->total}} AED</td>
                        </tr>
                        @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Date</th>
                                <th>Salon Name</th>
                                <th>Customer</th>
                                <th>Total Services /
                                <br>Packages</br></th>
                                <th>Transaction /
                                <br>Mode</br></th>
                                <th>Total Amount</th>
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
$('.revenue-report').addClass('active');

</script>
@endsection