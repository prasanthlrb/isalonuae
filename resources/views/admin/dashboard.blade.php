@extends('admin.layouts')
@section('css')
<link rel="stylesheet" type="text/css" href="/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
<!-- <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/dashboard-ecommerce.min.css"> -->
<link rel="stylesheet" type="text/css" href="/app-assets/css/pages/dashboard-analytics.min.css">
<link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/extensions/swiper.min.css">
@endsection
@section('body-section')


   <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">


<section id="dashboard-analytics">
  <div class="row">
  <div class="col-xl-4 col-md-6 col-12 activity-card">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Total Users</h4>
        </div>
        <div class="card-content"> 
          <div class="card-body pt-1">
            <div class="d-flex activity-content">
              <div class="avatar bg-rgba-primary m-0 mr-75">
                <div class="avatar-content">
                  <i class="bx bx-bar-chart-alt-2 text-primary"></i>
                </div>
              </div>
              <div class="activity-progress flex-grow-1">
                <small class="text-muted d-inline-block mb-50">Total Salon</small>
                <small class="float-right">{{$salon_count}}</small>
                <div class="progress progress-bar-primary progress-sm">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" style="width:50%"></div>
                </div>
              </div>
            </div>
            <div class="d-flex activity-content">
              <div class="avatar bg-rgba-success m-0 mr-75">
                <div class="avatar-content">
                  <i class="bx bx-dollar text-success"></i>
                </div>
              </div>
              <div class="activity-progress flex-grow-1">
                <small class="text-muted d-inline-block mb-50">Total Spa</small>
                <small class="float-right">{{$spa_count}}</small>
                <div class="progress progress-bar-success progress-sm">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" style="width:50%"></div>
                </div>
              </div>
            </div>

            <div class="d-flex activity-content">
              <div class="avatar bg-rgba-warning m-0 mr-75">
                <div class="avatar-content">
                  <i class="bx bx-stats text-warning"></i>
                </div>
              </div>
              <div class="activity-progress flex-grow-1">
                <small class="text-muted d-inline-block mb-50">Total Makeup Artist</small>
                <small class="float-right">{{$makeup_count}}</small>
                <div class="progress progress-bar-warning progress-sm">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" style="width:50%"></div>
                </div>
              </div>
            </div>

            <div class="d-flex mb-75">
              <div class="avatar bg-rgba-danger m-0 mr-75">
                <div class="avatar-content">
                  <i class="bx bx-check text-danger"></i>
                </div>
              </div>
              <div class="activity-progress flex-grow-1">
                <small class="text-muted d-inline-block mb-50">Total Beauty Clinic</small>
                <small class="float-right">{{$beauty_count}}</small>
                <div class="progress progress-bar-danger progress-sm">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" style="width:50%"></div>
                </div>
              </div>
            </div>

            <div class="d-flex mb-75">
              <div class="avatar bg-rgba-warning m-0 mr-75">
                <div class="avatar-content">
                  <i class="bx bx-stats text-warning"></i>
                </div>
              </div>
              <div class="activity-progress flex-grow-1">
                <small class="text-muted d-inline-block mb-50">Total Home Services</small>
                <small class="float-right">{{$home_count}}</small>
                <div class="progress progress-bar-warning progress-sm">
                  <div class="progress-bar" role="progressbar" aria-valuenow="50" style="width:50%"></div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    <!-- Profit Report Card Starts-->
    <div class="col-xl-4 col-md-6 col-12 sales-card">
      <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
          <div class="card-title-content">
            <h4 class="card-title">Sales</h4>
            <small class="text-muted">Calculated in last 7 days</small>
          </div>
          <i class="bx bx-dots-vertical-rounded font-medium-3 cursor-pointer"></i>
        </div>
        <div class="card-content">
          <div class="card-body">
            <div id="sales-chart" class="mb-2"></div>
            <div class="d-flex justify-content-between my-1">
              <div class="sales-info d-flex align-items-center">
                <i class='bx bx-up-arrow-circle text-primary font-medium-5 mr-50'></i>
                <div class="sales-info-content">
                  <h6 class="mb-0">Best Selling</h6>
                  <small class="text-muted">Sunday</small>
                </div>
              </div>
              <h6 class="mb-0">AED 50000</h6>
            </div>
            <div class="d-flex justify-content-between mt-2">
              <div class="sales-info d-flex align-items-center">
                <i class='bx bx-down-arrow-circle icon-light font-medium-5 mr-50'></i>
                <div class="sales-info-content">
                  <h6 class="mb-0">Lowest Selling</h6>
                  <small class="text-muted">Thursday</small>
                </div>
              </div>
              <h6 class="mb-0">AED 895452</h6>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-12 col-sm-12">
      <div class="row">
        <!-- Conversion Chart Starts-->
        
        <div class="col-xl-12 col-md-6 col-12">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body d-flex align-items-center justify-content-between">
                  <div class="d-flex align-items-center">
                    <div class="avatar bg-rgba-primary m-0 p-25 mr-75 mr-xl-2">
                      <div class="avatar-content">
                        <i class="bx bx-user text-primary font-medium-2"></i>
                      </div>
                    </div>
                    <div class="total-amount">
                      <h5 class="mb-0">{{$total_booking}}</h5>
                      <small class="text-muted">Total Booking</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-12">
              <div class="card">
                <div class="card-body d-flex align-items-center justify-content-between">
                  <div class="d-flex align-items-center">
                    <div class="avatar bg-rgba-warning m-0 p-25 mr-75 mr-xl-2">
                      <div class="avatar-content">
                        <i class="bx bx-dollar text-warning font-medium-2"></i>
                      </div>
                    </div>
                    <div class="total-amount">
                      <h5 class="mb-0">{{$today_booking}}</h5>
                      <small class="text-muted">Today Booking</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-12">
              <div class="card">
                <div class="card-body d-flex align-items-center justify-content-between">
                  <div class="d-flex align-items-center">
                    <div class="avatar bg-rgba-warning m-0 p-25 mr-75 mr-xl-2">
                      <div class="avatar-content">
                        <i class="bx bx-dollar text-warning font-medium-2"></i>
                      </div>
                    </div>
                    <div class="total-amount">
                      <h5 class="mb-0">{{$open_booking}}</h5>
                      <small class="text-muted">Open Booking</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <!-- Activity Card Starts-->
    <!-- Sales Chart Starts-->
    

  </div>
</section>



            </div>
        </div>
<script type="text/javascript">

$('.dashboard').addClass('active');

</script>
@endsection

@section('js')

 <!-- BEGIN: Page Vendor JS-->
    <script src="/app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/app-assets/vendors/js/extensions/swiper.min.js"></script>
    <!-- END: Page Vendor JS-->


    <!-- BEGIN: Page JS-->
    <!-- <script src="/app-assets/js/scripts/pages/dashboard-ecommerce.min.js"></script> -->
    <script src="/app-assets/js/scripts/pages/dashboard-analytics.min.js"></script>
@endsection