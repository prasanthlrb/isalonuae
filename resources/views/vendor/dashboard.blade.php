@extends('vendor.layouts')
@section('body-section')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">


    <div class="col-12">
        <div class="row">

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Total Booking</div>
                    <h3 class="mb-0">{{$total_booking}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Today Booking</div>
                    <h3 class="mb-0">{{$today_booking}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Open Booking</div>
                    <h3 class="mb-0">{{$open_booking}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Today Revenue</div>
                    <h3 class="mb-0">AED {{$today_value}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Current Month Revenue</div>
                    <h3 class="mb-0">AED {{$current_month_value}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Last 7 Days Revenue</div>
                    <h3 class="mb-0">AED {{$last7days}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Last 30 Days Revenue</div>
                    <h3 class="mb-0">AED {{$last30days}}</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3 dashboard-users-danger">
              <div class="card text-center">
                <div class="card-content">
                  <div class="card-body py-1">
                    <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                      <i class="bx bx-user font-medium-5"></i>
                    </div>
                    <div class="text-muted line-ellipsis">Total Services</div>
                    <h3 class="mb-0">{{$total_services}}</h3>
                  </div>
                </div>
              </div>
            </div>

        </div>
    </div>
    
    

            </div>
        </div>
    </div>
@endsection