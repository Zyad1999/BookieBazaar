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
  <!-- revolution slider css -->
  <link rel="stylesheet" type="text/css" href="revolution/css/settings.css" />
  <link rel="stylesheet" type="text/css" href="revolution/css/layers.css" />
  <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css" />
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->

  <link rel="stylesheet" href="css/carousel-list.css">
</head>

<body id="default_theme" class="book_images">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->

  <!-- header bottom -->
  <div class="header_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
          <!-- logo start -->
          <div class="logo"> <a href="it_home.jsp"><img src="images/logos/it_logo.png" alt="logo" /></a> </div>
          <!-- logo end -->
        </div>
        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
          <!-- menu start -->
          <div class="menu_side">
            <div id="navbar_menu">
              <ul class="first-ul">
                <li> <a class="active" href="index.jsp">Home</a></li>
                </li>
                <li> <a href="shop.jsp">Shop List</a>
                  <ul>
                    <li><a href="shop.jsp">All Books</a></li>
                    <li><a href="shop.jsp">Arts & Photography</a></li>
                    <li><a href="shop.jsp">Children's Books</a></li>
                    <li><a href="shop.jsp">Crime & Mystery</a></li>
                    <li><a href="shop.jsp">Education Studies</a></li>
                    <li><a href="shop.jsp">History</a></li>
                    <li><a href="shop.jsp">Humor & Entertainment</a></li>
                    <li><a href="shop.jsp">Law</a></li>
                    <li><a href="shop.jsp">Romance</a></li>
                    <li><a href="shop.jsp">Fantasy</a></li>
                  </ul>
                </li>
                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a>
                  <ul>
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="signout.jsp">Signout</a></li>
                  </ul>
                </li>
                <li><a href="cart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
              </ul>
            </div>
            <div class="search_icon">
              <ul>
                <li><a href="#" data-toggle="modal" data-target="#search_bar"><i class="fa fa-search"
                      aria-hidden="true"></i></a></li>
              </ul>
            </div>
          </div>
          <!-- menu end -->
        </div>
      </div>
    </div>
  </div>
  <!-- header bottom end -->
  </header>
  <!-- end header -->

  <!-- Modal -->
  <div class="modal fade" id="search_bar" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><i class="fa fa-close"></i></button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8 offset-lg-2 offset-md-2 offset-sm-2 col-xs-10 col-xs-offset-1">
              <div class="navbar-search">
                <form action="#" method="get" id="search-global-form" class="search-global">
                  <input type="text" placeholder="Type to search" autocomplete="off" name="s" id="search" value=""
                    class="search-global__input">
                  <button class="search-global__btn"><i class="fa fa-search"></i></button>
                  <div class="search-global__note">Begin typing your search above and press return to search.</div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Model search bar -->

  <!-- js section -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- menu js -->
  <script src="js/menumaker.js"></script>
  <!-- wow animation -->
  <script src="js/wow.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- revolution js files -->
  <script src="revolution/js/jquery.themepunch.tools.min.js"></script>
  <script src="revolution/js/jquery.themepunch.revolution.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script src="revolution/js/extensions/revolution.extension.video.min.js"></script>
  <!-- map js -->
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
        position: { lat: 40.645037, lng: -73.880224 },
        map: map,
        icon: image
      });
    }
  </script>
  <!-- google map js -->
  <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
  <!-- end google map js -->
</body>

</html>