<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->
@include('admin.headlink');
<head>
  
     <link rel="stylesheet" type="text/css" href="/app-assets/css/plugins/forms/wizard.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/app-chat.css">
    <!-- END: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/tables/datatable/datatables.min.css">
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern dark-layout content-left-sidebar chat-application navbar-sticky footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="content-left-sidebar" data-layout="dark-layout">


    <!-- END: Header-->
 @include('admin.header')
 @include('admin.sidebar')

  <!-- BEGIN: Content-->
  <div class="app-content content">
  
			<div class="content-area-wrapper">
			<div class="sidebar-left">
				<div class="sidebar">
					<!-- app chat user profile left sidebar start -->

  <!-- app chat user profile left sidebar ends -->
  <!-- app chat sidebar start -->
  <div class="chat-sidebar card">
    <span class="chat-sidebar-close">
      <i class="bx bx-x"></i>
    </span>
    <div class="chat-sidebar-search">
      <div class="d-flex align-items-center">
        <div class="chat-sidebar-profile-toggle">
          <div class="avatar">
            <img src="/images/portrait/small/avatar-s-11.jpg" alt="user_avatar" height="36" width="36">
          </div>
        </div>
        <fieldset class="form-group position-relative has-icon-left mx-75 mb-0">
          <input type="text" class="form-control round" id="chat-search" placeholder="Search">
          <div class="form-control-position">
            <i class="bx bx-search-alt text-dark"></i>
          </div>
        </fieldset>
      </div>
    </div>
    <div class="chat-sidebar-list-wrapper pt-2">
      
      <h6 class="px-2 pt-2 pb-25 mb-0">CONTACTS<i class="bx bx-plus float-right cursor-pointer"></i></h6>
      <ul class="chat-sidebar-list">
        @foreach($customer as $row)
          <li>
              <a href="#">
              <div class="d-flex align-items-center">
                  <div class="avatar m-0 mr-50"><img src="/app-assets/images/portrait/small/avatar-s-8.jpg" height="36" width="36" alt="sidebar user image">
                      <!-- <span class="avatar-status-offline"></span> -->
                      <!-- <span class="avatar-status-away"></span>
                      <span class="avatar-status-away"></span> -->
                  </div>
                  <div class="chat-sidebar-name">
                      <h6 class="mb-0">{{$row->name}}</h6><span class="text-muted"> {{$row->phone}}</span>
                  </div>
              </div>
              </a>
          </li>
      @endforeach
      </ul>
    </div>
  </div>
  <!-- app chat sidebar ends -->
				</div>
			</div>
			<div class="content-right">
          <div class="content-overlay"></div>
				<div class="content-wrapper">
          <div class="content-header row">
          </div>
          <div class="content-body">
            <!-- app chat overlay -->
<div class="chat-overlay"></div>
<!-- app chat window start -->
<section class="chat-window-wrapper">
  <div class="chat-start">
    <span class="bx bx-message chat-sidebar-toggle chat-start-icon font-large-3 p-3 mb-1"></span>
    <h4 class="d-none d-lg-block py-50 text-bold-500">Select a contact to start a chat!</h4>
    <button class="btn btn-light-primary chat-start-text chat-sidebar-toggle d-block d-lg-none py-50 px-1">Start
      Conversation!</button>
  </div>
  <div class="chat-area d-none">
    <div class="chat-header">
      <header class="d-flex justify-content-between align-items-center border-bottom px-1 py-75">
        <div class="d-flex align-items-center">
          <div class="chat-sidebar-toggle d-block d-lg-none mr-1"><i class="bx bx-menu font-large-1 cursor-pointer"></i>
          </div>
          <div class="avatar chat-profile-toggle m-0 mr-1">
            <img src="/images/portrait/small/avatar-s-26.jpg" alt="avatar" height="36" width="36" />
            <span class="avatar-status-busy"></span>
          </div>
          <h6 class="mb-0">Elizabeth Elliott</h6>
        </div>
        <div class="chat-header-icons">
          <span class="chat-icon-favorite">
            <i class="bx bx-star font-medium-5 cursor-pointer"></i>
          </span>
          <span class="dropdown">
            <i class="bx bx-dots-vertical-rounded font-medium-4 ml-25 cursor-pointer dropdown-toggle nav-hide-arrow cursor-pointer"
              id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="menu">
            </i>
            <span class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="JavaScript:void(0);"><i class="bx bx-pin mr-25"></i> Pin to top</a>
              <a class="dropdown-item" href="JavaScript:void(0);"><i class="bx bx-trash mr-25"></i> Delete chat</a>
              <a class="dropdown-item" href="JavaScript:void(0);"><i class="bx bx-block mr-25"></i> Block</a>
            </span>
          </span>
        </div>
      </header>
    </div>
    <!-- chat card start -->
    <div class="card chat-wrapper shadow-none">
      <div class="card-content">
        <div class="card-body chat-container">
          <div class="chat-content">
            <div class="chat">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-11.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>How can we help? We're here for you! 😄</p>
                  <span class="chat-time">7:45 AM</span>
                </div>
              </div>
            </div>
            <div class="chat chat-left">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-26.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>Hey John, I am looking for the best admin template.</p>
                  <p>Could you please help me to find it out? 🤔</p>
                  <span class="chat-time">7:50 AM</span>
                </div>
                <div class="chat-message">
                  <p>It should be Bootstrap 4 🤩 compatible.</p>
                  <span class="chat-time">7:58 AM</span>
                </div>
              </div>
            </div>
            <div class="badge badge-pill badge-light-secondary my-1">Yesterday</div>
            <div class="chat">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-11.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>Absolutely!</p>
                  <span class="chat-time">8:00 AM</span>
                </div>
                <div class="chat-message">
                  <p>Stack admin is the responsive bootstrap 4 admin template.</p>
                  <span class="chat-time">8:01 AM</span>
                </div>
              </div>
            </div>
            <div class="chat chat-left">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-26.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>Looks clean and fresh UI. 😃</p>
                  <span class="chat-time">10:12 AM</span>
                </div>
                <div class="chat-message">
                  <p>It's perfect for my next project.</p>
                  <span class="chat-time">10:15 AM</span>
                </div>
                <div class="chat-message">
                  <p>How can I purchase 🤑 it?</p>
                  <span class="chat-time">10:18 AM</span>
                </div>
              </div>
            </div>
            <div class="chat">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-11.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>Thanks 🤝 , from ThemeForest.</p>
                  <span class="chat-time">10:20 AM</span>
                </div>
              </div>
            </div>
            <div class="chat chat-left">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-26.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>I will purchase it for sure. 👍</p>
                  <span class="chat-time">3:32 PM</span>
                </div>
                <div class="chat-message">
                  <p>Thanks.</p>
                  <span class="chat-time">3:33 PM</span>
                </div>
              </div>
            </div>
            <div class="chat">
              <div class="chat-avatar">
                <a class="avatar m-0">
                  <img src="/images/portrait/small/avatar-s-11.jpg" alt="avatar" height="36"
                    width="36" />
                </a>
              </div>
              <div class="chat-body">
                <div class="chat-message">
                  <p>Great, Feel free to get in touch on</p>
                  <span class="chat-time">3:34 AM</span>
                </div>
                <div class="chat-message">
                  <p>https://pixinvent.ticksy.com/</p>
                  <span class="chat-time">3:35 AM</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="card-footer chat-footer border-top px-2 pt-1 pb-0 mb-1">
        <form class="d-flex align-items-center" onsubmit="chatMessagesSend();" action="javascript:void(0);">
          <i class="bx bx-face cursor-pointer"></i>
          <i class="bx bx-paperclip ml-1 cursor-pointer"></i>
          <input type="text" class="form-control chat-message-send mx-1" placeholder="Type your message here...">
          <button type="submit" class="btn btn-primary glow send d-lg-flex"><i class="bx bx-paper-plane"></i>
            <span class="d-none d-lg-block ml-1">Send</span></button>
        </form>
      </div>
    </div>
    <!-- chat card ends -->
  </div>
</section>
<!-- app chat window ends -->
<!-- app chat profile right sidebar start -->
<section class="chat-profile">
  <header class="chat-profile-header text-center border-bottom">
    <span class="chat-profile-close">
      <i class="bx bx-x"></i>
    </span>
    <div class="my-2">
      <div class="avatar">
        <img src="/images/portrait/small/avatar-s-26.jpg" alt="chat avatar" height="100" width="100">
      </div>
      <h5 class="app-chat-user-name mb-0">Elizabeth Elliott</h5>
      <span>Devloper</span>
    </div>
  </header>
  <div class="chat-profile-content p-2">
    <h6 class="mt-1">ABOUT</h6>
    <p>It is a long established fact that a reader will be distracted by the readable content.</p>
    <h6 class="mt-2">PERSONAL INFORMATION</h6>
    <ul class="list-unstyled">
      <li class="mb-25">email@gmail.com</li>
      <li>+1(789) 950-7654</li>
    </ul>
  </div>
</section>
<!-- app chat profile right sidebar ends -->
          </div>
        </div>
			</div>
		</div>
	  </div>
  <!-- END: Content-->
   @include('admin.footer')
    <script src="/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="../../../app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <!-- END: Page Vendor JS-->
    <script src="/app-assets/js/scripts/datatables/datatable.js"></script>
    
    <script src="/app-assets/js/scripts/pages/app-chat.js"></script>
    

<script type="text/javascript">
$('.chat-to-customer').addClass('active');

</script>

