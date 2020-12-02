
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Register Page - I-Salon</title>
    <link rel="apple-touch-icon" href="/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/themes/semi-dark-layout.min.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/authentication.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <!-- END: Custom CSS-->

    <link rel="stylesheet" type="text/css" href="/app-assets/css/plugins/forms/wizard.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('toastr/toastr.css')}}">
    <meta name="_token" content="{{ csrf_token() }}"/>

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern 1-column  navbar-sticky footer-static bg-full-screen-image  blank-page blank-page" data-open="click" data-menu="vertical-menu-modern" data-col="1-column">
    <!-- BEGIN: Content-->
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><!-- register section starts -->
<section class="row flexbox-container">
    <div class="col-xl-8 col-10">
        <div class="card bg-authentication mb-0">
            <div class="row m-0">
                <!-- register section left -->


<section id="info-tabs-">
  <div class="row">
    <div class="col-12">
      <div class="card icon-tab">
        <div class="card-header">
          <h4 class="card-title">Salon Register</h4>
        </div>
        <div class="card-content mt-2">
          <div class="card-body">
            <form class="wizard-horizontal" id="form" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}
              <!-- Step 1 -->
              <h6>
                <i class="step-icon"></i>
                <span class="fonticon-wrap">
                  <i class="livicon-evo" data-options="name:user.svg; size: 50px; style:lines; strokeColor:#adb5bd;"></i>
                </span>
                <span>Basic Details</span>
              </h6>
              <!-- Step 1 end-->
              <!-- body content of step 1 -->
              <fieldset>
                <div class="row">
                  <div class="col-12">
                    <h6 class="py-50">Basic Details</h6>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>Busisness Type</label>
                        <select onchange="busisnessType()" id="busisness_type" name="busisness_type" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">Salon</option>
                            <option value="2">Spa</option>
                            <option value="3">Makeup Artist</option>
                            <option value="4">Beauty Clinic</option>
                            <option value="5">Home Services</option>
                        </select>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>Owner Name</label>
                        <input autocomplete="off" type="text" id="name" name="name" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>Email ID</label>
                        <input autocomplete="off" type="email" id="email" name="email" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>Phone Number</label>
                        <input autocomplete="off" type="text" id="phone" name="phone" class="form-control">
                    </div>
                  </div>

                  <div class="col-sm-6 salon-view">
                    <div class="form-group">
                        <label>Busisness Name</label>
                        <input type="text" id="salon_name" name="salon_name" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-6 salon-view">
                    <div class="form-group">
                        <label>Busisness ID</label>
                        <input type="text" id="salon_id" name="salon_id" class="form-control">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>trade License No</label>
                        <input type="text" id="trade_license_no" name="trade_license_no" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>vat certificate no</label>
                        <input type="text" id="vat_certificate_no" name="vat_certificate_no" class="form-control">
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                        <label>Emirates ID</label>
                        <input type="text" id="emirates_id" name="emirates_id" class="form-control">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                        <label>Passport Number</label>
                        <input type="text" id="passport_number" name="passport_number" class="form-control">
                    </div>
                  </div>

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


                </div>

                <hr>

                <div class="row">
                  <div class="col-12">
                    <h6 class="py-50">Contact Details</h6>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                        <label>Nationality</label>
                        <select id="nationality" name="nationality" class="form-control">
                            <option value="">SELECT</option>
                            <option value="1">United Arab Emirates</option>
                            <option value="2">India</option>
                            <option value="3">Russia</option>
                            <option value="4">Pakistan</option>
                        </select>
                    </div>
                  </div>
                

                  <div class="col-md-6">
                    <div class="form-group">
                        <label>Address</label>
                        <textarea id="address" name="address" class="form-control"></textarea>
                    </div>
                  </div>

                </div>
                <hr>
                <div class="row">
                  <div class="col-12">
                    <h6 class="py-50">Id Proof</h6>
                  </div>
                  
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Cover Image</label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="cover_image" name="cover_image">
                        <label class="custom-file-label">Choose file</label>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Profile Image</label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="profile_image" name="profile_image">
                        <label class="custom-file-label">Choose file</label>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-4 trade-license">
                    <div class="form-group">
                      <label>Trade License Copy</label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="trade_license" name="trade_license">
                        <label class="custom-file-label">Choose file</label>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Passport Copy</label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="passport_copy" name="passport_copy">
                        <label class="custom-file-label">Choose file</label>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Emirated ID Copy</label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="emirated_id_copy" name="emirated_id_copy">
                        <label class="custom-file-label">Choose file</label>
                      </div>
                    </div>
                  </div>

                </div>
              </fieldset>
              <!-- body content of step 1 end-->
              <!-- Step 2-->
              <h6>
                <i class="step-icon"></i>
                <span class="fonticon-wrap">
                  <i class="livicon-evo" data-options="name:briefcase.svg; size: 50px; style:lines; strokeColor:#adb5bd;"></i>
                </span>
                <span>Terms and Conditions</span>
              </h6>
              <!-- Step 2 end-->
              <!-- body content of step 2 -->
              <fieldset>
                <div class="row">
                  <div class="col-12">
                    <h6 class="py-50">Terms and Conditions</h6>
                  </div>
                  <div style="display: block;height: 300px;overflow-y: scroll;" class="col-12">
                    <?php echo html_entity_decode($terms->terms_and_condition); ?>
                  </div>
                  <div class="col-sm-3">
                  </div>
                  <div class="col-sm-6">
                    <br>
                    <div class="form-group">
                    <fieldset>
                      <div class="checkbox checkbox-success">
                          <center>
                          <input type="checkbox" id="agree" name="agree" checked="">
                          <label for="agree">I read all term and conditions and i Agree</label>
                          </center>
                      </div>
                    </fieldset>
                        
                      <!-- <div class="radio">
                        <input type="radio" name="bsradio" id="disagree">
                        <label for="disagree" class="text-danger">I am not Agree with it.</label>
                      </div> -->
                    </div>
                  </div>
                  <div class="col-sm-3">
                  </div>
                </div>
              </fieldset>
              <!-- body content of step 2 end-->
              <!-- Step 3-->
              <h6>
                <i class="step-icon"></i>
                <span class="fonticon-wrap">
                  <i class="livicon-evo"
                    data-options="name:users.svg; size: 50px; style:lines; strokeColor:#adb5bd;"></i>
                </span>
                <span>Signature</span>
              </h6>
              <!-- Step 3 end-->
              <!-- body content of step 3 -->
              <fieldset>
                <div class="row">
                  <div class="col-12">
                    <h6 class="py-50">Signature</h6>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                        <center>
                            <canvas id="canvas">Canvas is not supported</canvas>
                        </center>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                        <center><input class="btn btn-primary glow" id="btnClearSign" type="button" value="Clear" onclick="init_Sign_Canvas()" /></center>
                    </div>
                  </div>

                </div>
              </fieldset>
              <!-- body content of step 3 end-->
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


            </div>
        </div>
    </div>
</section>
<!-- register section endss -->
        </div>
      </div>
    </div>
    <!-- END: Content-->


    <!-- BEGIN: Vendor JS-->
    <script src="/app-assets/vendors/js/vendors.min.js"></script>
    <script src="/app-assets/fonts/LivIconsEvo/js/LivIconsEvo.tools.min.js"></script>
    <script src="/app-assets/fonts/LivIconsEvo/js/LivIconsEvo.defaults.min.js"></script>
    <script src="/app-assets/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->

    <script src="/app-assets/vendors/js/extensions/jquery.steps.min.js"></script>
    <script src="/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/app-assets/js/scripts/configs/vertical-menu-light.min.js"></script>
    <script src="/app-assets/js/core/app-menu.min.js"></script>
    <script src="/app-assets/js/core/app.min.js"></script>
    <script src="/app-assets/js/scripts/components.min.js"></script>
    <script src="/app-assets/js/scripts/footer.min.js"></script>

    <!-- <script src="/app-assets/js/scripts/forms/wizard-steps.min.js"></script> -->

    <script src="{{ asset('toastr/toastr.min.js')}}"></script>

    <script src="/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>

    <script type="text/javascript">
// $('.salon').addClass('active');

$(".trade-license").hide();
$(".salon-view").hide();
function busisnessType(){
    var busisness_type = $('#busisness_type').val();
    if(busisness_type == '5'){
        $(".trade-license").hide();
        $(".salon-view").hide();
    }
    else{
        $(".trade-license").show();
        $(".salon-view").show();
    }
}



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

</script>

<script type="text/javascript">
var isSign = false;
var leftMButtonDown = false;

jQuery(function () {
    //Initialize sign pad
    init_Sign_Canvas();
});

function fun_submit() {
    if (isSign) {
        var canvas = $("#canvas").get(0);
        var imgData = canvas.toDataURL();
        jQuery('#page').find('p').remove();
        jQuery('#page').find('img').remove();
        // jQuery('#page').append(jQuery('<p>Your Sign:</p>'));
        // jQuery('#page').append($('<img/>').attr('src', imgData));
        Save(imgData);
    } else {
        alert('Please sign');
    }
}

function Save(imgData){
    var formData = new FormData($('#form')[0]);
    formData.append("imgData", imgData);
    $.ajax({
        url : '/save-salon-register',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {                
            $("#form")[0].reset();
            // toastr.success(data, 'Successfully Save');
            sweetAlert();
        },error: function (data) {
            var errorData = data.responseJSON.errors;
            $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
      });
    }
    });
}


function sweetAlert(){
    Swal.fire({
      title: "Please Check Your Email",
      text: "Successfully Save!",
      type: "success",
      confirmButtonClass: 'btn btn-primary',
      buttonsStyling: false,
    }).then(function() {
    window.location.href="/login";
    });
}

function init_Sign_Canvas() {
    isSign = false;
    leftMButtonDown = false;

    //Set Canvas width
    var sizedWindowWidth = $(window).width();
    if (sizedWindowWidth > 700)
        sizedWindowWidth = $(window).width() / 2;
    else if (sizedWindowWidth > 400)
        sizedWindowWidth = sizedWindowWidth - 100;
    else
        sizedWindowWidth = sizedWindowWidth - 50;

    $("#canvas").width(sizedWindowWidth);
    $("#canvas").height(200);
    $("#canvas").css("border", "1px solid #000");

    var canvas = $("#canvas").get(0);

    canvasContext = canvas.getContext('2d');

    if (canvasContext) {
        canvasContext.canvas.width = sizedWindowWidth;
        canvasContext.canvas.height = 200;

        canvasContext.fillStyle = "#fff";
        canvasContext.fillRect(0, 0, sizedWindowWidth, 200);

        canvasContext.moveTo(50, 150);
        canvasContext.lineTo(sizedWindowWidth - 50, 150);
        canvasContext.stroke();

        canvasContext.fillStyle = "#000";
        canvasContext.font = "20px Arial";
        canvasContext.fillText("x", 40, 155);
    }
    // Bind Mouse events
    $(canvas).on('mousedown', function (e) {
        if (e.which === 1) {
            leftMButtonDown = true;
            canvasContext.fillStyle = "#000";
            var x = e.pageX - $(e.target).offset().left;
            var y = e.pageY - $(e.target).offset().top;
            canvasContext.moveTo(x, y);
        }
        e.preventDefault();
        return false;
    });

    $(canvas).on('mouseup', function (e) {
        if (leftMButtonDown && e.which === 1) {
            leftMButtonDown = false;
            isSign = true;
        }
        e.preventDefault();
        return false;
    });

    // draw a line from the last point to this one
    $(canvas).on('mousemove', function (e) {
        if (leftMButtonDown == true) {
            canvasContext.fillStyle = "#000";
            var x = e.pageX - $(e.target).offset().left;
            var y = e.pageY - $(e.target).offset().top;
            canvasContext.lineTo(x, y);
            canvasContext.stroke();
        }
        e.preventDefault();
        return false;
    });

    //bind touch events
    $(canvas).on('touchstart', function (e) {
        leftMButtonDown = true;
        canvasContext.fillStyle = "#000";
        var t = e.originalEvent.touches[0];
        var x = t.pageX - $(e.target).offset().left;
        var y = t.pageY - $(e.target).offset().top;
        canvasContext.moveTo(x, y);

        e.preventDefault();
        return false;
    });

    $(canvas).on('touchmove', function (e) {
        canvasContext.fillStyle = "#000";
        var t = e.originalEvent.touches[0];
        var x = t.pageX - $(e.target).offset().left;
        var y = t.pageY - $(e.target).offset().top;
        canvasContext.lineTo(x, y);
        canvasContext.stroke();

        e.preventDefault();
        return false;
    });

    $(canvas).on('touchend', function (e) {
        if (leftMButtonDown) {
            leftMButtonDown = false;
            isSign = true;
        }

    });
}

</script>

<script type="text/javascript">
var resultInLogin='';
function SaveValidate(){
    var formData = new FormData($('#form')[0]);
    window.resultInLogin;
    $.ajax({
        url : '/salon-validate',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {    
          console.log(data);   
          resultInLogin = 'true';
          //alert(resultInLogin);
          return resultInLogin;
        },
        error: function (data) 
        {
          var errorData = data.responseJSON.errors;
          $.each(errorData, function(i, obj) {
            toastr.error(obj[0]);
          });
          resultInLogin = 'false';
          //alert(resultInLogin);
          return resultInLogin;
        }
    });

    //return resultInLogin;
}

function validateForm() {
  var busisness_type = $('#busisness_type').val();
  var name = $('#name').val();
  var email = $('#email').val();
  var phone = $('#phone').val();
  var trade_license_no = $('#trade_license_no').val();
  var vat_certificate_no = $('#vat_certificate_no').val();
  var city = $('#city').val();
  var nationality = $('#nationality').val();
  var address = $('#address').val();

  if (busisness_type != "") {
    if (name != "") {
      if (email != "") {
        if (phone != "") {
          if (trade_license_no != "") {
            if (vat_certificate_no != "") {
              if (city != "") {
                if (address != "") {
                  if (nationality != "") {
                    return true;
                  }
                  else{
                    toastr.error("Nationality must be filled out");
                    return false;
                  }
                }
                else{
                  toastr.error("Address must be filled out");
                  return false;
                }
              }
              else{
                toastr.error("City must be filled out");
                return false;
              }
            }
            else{
              toastr.error("Vat Certificate No must be filled out");
              return false;
            }
          }
          else{
            toastr.error("Trade License No must be filled out");
            return false;
          }
        }
        else{
          toastr.error("Phone Number must be filled out");
          return false;
        }
      }
      else{
        toastr.error("Email ID must be filled out");
        return false;
      }
    }
    else{
      toastr.error("Owner Name must be filled out");
      return false;
    }
  }
  else{
    toastr.error("Busisness Type must be filled out");
    return false;
  }

}

$(".wizard-horizontal").steps({
    headerTag: "h6",
    bodyTag: "fieldset",
    transitionEffect: "fade",
    titleTemplate: '<span class="step">#index#</span> #title#',
    labels: {
    finish: 'Submit'
    },
    onStepChanging: function (event, currentIndex, newIndex) {
      // alert(currentIndex);
      // alert(newIndex);
      //return true;
      if(newIndex == '1') {
        //var res = SaveValidate();
        //resultInLogin='';
        //alert(res);
        //return true;
        if(validateForm() == true){
          return true;
        }
      }
      else if(newIndex == '0') {
        // var res1 = SaveValidate();
        // resultInLogin='';
        // alert(res1);
        if(validateForm() == true){
          return true;
        }
      }
      else if (newIndex == '2')
      {
        if($('#agree').is(":checked") ){
          return true;
        }
        else{
          toastr.error('Please Agree the Terms and Conditions');
        }
      }
    },
    onFinished: function (event, currentIndex) {
        fun_submit();
        // alert("Form submitted.");
    }
});


// live Icon color change on state change
$(document).ready(function () {
    $(".current").find(".step-icon").addClass("bx bx-time-five");
    $(".current").find(".fonticon-wrap .livicon-evo").updateLiviconEvo({
        strokeColor: '#5A8DEE'
    });
});

// Icon change on state
// if click on next button icon change
$(".actions [href='#next']").click(function () {
    $(".done").find(".step-icon").removeClass("bx bx-time-five").addClass("bx bx-check-circle");
    $(".current").find(".step-icon").removeClass("bx bx-check-circle").addClass("bx bx-time-five");
    // live icon color change on next button's on click
    $(".current").find(".fonticon-wrap .livicon-evo").updateLiviconEvo({
        strokeColor: '#5A8DEE'
    });
    $(".current").prev("li").find(".fonticon-wrap .livicon-evo").updateLiviconEvo({
        strokeColor: '#39DA8A'
    });
});

$(".actions [href='#previous']").click(function () {
    // live icon color change on next button's on click
    $(".current").find(".fonticon-wrap .livicon-evo").updateLiviconEvo({
        strokeColor: '#5A8DEE'
    });
    $(".current").next("li").find(".fonticon-wrap .livicon-evo").updateLiviconEvo({
        strokeColor: '#adb5bd'
    });
});

// if click on  submit   button icon change
$(".actions [href='#finish']").click(function () {
    $(".done").find(".step-icon").removeClass("bx-time-five").addClass("bx bx-check-circle");
    $(".last.current.done").find(".fonticon-wrap .livicon-evo").updateLiviconEvo({
        strokeColor: '#39DA8A'
    });
});

// add primary btn class
$('.actions a[role="menuitem"]').addClass("btn btn-primary");
$('.icon-tab [role="menuitem"]').addClass("glow ");
$('.wizard-vertical [role="menuitem"]').removeClass("btn-primary").addClass("btn-light-primary");

</script>

  </body>
  <!-- END: Body-->
</html>