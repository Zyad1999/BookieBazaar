<!DOCTYPE html>
<html lang="en">

<head>
  <!-- basic -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- mobile metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- site metas -->
  <title>Book Store</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- site icons -->
  <link rel="icon" href="images/fevicon/fevicon.png" type="image/gif" />
  <!-- bootstrap css -->
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <!-- Site css -->
  <link rel="stylesheet" href="css/style.css" />
  <!-- responsive css -->
  <link rel="stylesheet" href="css/responsive.css" />
  <!-- colors css -->
  <link rel="stylesheet" href="css/colors1.css" />
  <!-- custom css -->
  <link rel="stylesheet" href="css/custom.css" />
  <!-- wow Animation css -->
  <link rel="stylesheet" href="css/animate.css" />
  <!-- zoom effect -->
  <link rel='stylesheet' href='css/hizoom.css'>
  <!-- end zoom effect -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body id="default_theme" class="login">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->

  <div class="section padding_layout_1">
    <div class="container">
      <div class="row">
        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
        <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
          <div class="row">
            <div class="full">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="main_heading text_align_center">
                  <h2>Login</h2>
                </div>
                <form class="form_contant" action="index.jsp">
                  <fieldset class="row">
                    <div class="center">
                      <div class="field col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <input class="field_custom" placeholder="Email" type="email" required>
                      </div>
                    </div>
                    <div class="center">
                      <div class="field col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <input class="field_custom" placeholder="Password" type="password" required>
                      </div>
                    </div>
                    <div class="center" style="margin-top:20px;">
                      <a class="btn sqaure_bt" id="allProudcts" href="index.jsp">login</a>
                    </div>
                    <div class="center">
                      <p id="account">Don't have an account? <a href="signup.jsp" style="color:#b87906fa">Signup</a>.
                      </p>
                    </div>
                  </fieldset>
                </form>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>


  <!-- end footer -->
  <!-- js section -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- menu js -->
  <script src="js/menumaker.js"></script>
  <!-- wow animation -->
  <script src="js/wow.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <script>

    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11,
        center: { lat: 40.645037, lng: -73.880224 },
        styles: [
          {
            elementType: 'geometry',
            stylers: [{ color: '#fefefe' }]
          },
          {
            elementType: 'labels.icon',
            stylers: [{ visibility: 'off' }]
          },
          {
            elementType: 'labels.text.fill',
            stylers: [{ color: '#616161' }]
          },
          {
            elementType: 'labels.text.stroke',
            stylers: [{ color: '#f5f5f5' }]
          },
          {
            featureType: 'administrative.land_parcel',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#bdbdbd' }]
          },
          {
            featureType: 'poi',
            elementType: 'geometry',
            stylers: [{ color: '#eeeeee' }]
          },
          {
            featureType: 'poi',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#757575' }]
          },
          {
            featureType: 'poi.park',
            elementType: 'geometry',
            stylers: [{ color: '#e5e5e5' }]
          },
          {
            featureType: 'poi.park',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#9e9e9e' }]
          },
          {
            featureType: 'road',
            elementType: 'geometry',
            stylers: [{ color: '#eee' }]
          },
          {
            featureType: 'road.arterial',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#3d3523' }]
          },
          {
            featureType: 'road.highway',
            elementType: 'geometry',
            stylers: [{ color: '#eee' }]
          },
          {
            featureType: 'road.highway',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#616161' }]
          },
          {
            featureType: 'road.local',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#9e9e9e' }]
          },
          {
            featureType: 'transit.line',
            elementType: 'geometry',
            stylers: [{ color: '#e5e5e5' }]
          },
          {
            featureType: 'transit.station',
            elementType: 'geometry',
            stylers: [{ color: '#000' }]
          },
          {
            featureType: 'water',
            elementType: 'geometry',
            stylers: [{ color: '#c8d7d4' }]
          },
          {
            featureType: 'water',
            elementType: 'labels.text.fill',
            stylers: [{ color: '#b1a481' }]
          }
        ]
      });

      var image = 'images/book_images/location_icon_map_cont.png';
      var beachMarker = new google.maps.Marker({
        position: { lat: 45.645037, lng: -77.880224 },
        map: map,
        icon: image
      });
    }
  </script>
  <!-- google map js -->
  <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
  <!-- end google map js -->
  <!-- zoom effect -->
  <script src='js/hizoom.js'></script>
  <script>
    $('.hi1').hiZoom({
      width: 300,
      position: 'right'
    });
    $('.hi2').hiZoom({
      width: 400,
      position: 'right'
    });
  </script>
</body>

</html>