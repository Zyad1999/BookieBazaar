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

<body id="default_theme" class="it_serv_shopping_cart shopping-cart">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  <div class="section padding_layout_1 Shopping_cart_section">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-12">
          <div class="product-table">
            <table class="table">
              <thead>
                <tr>
                  <th class="text-center">User Name</th>
                  <th class="text-center">Email</th>
                  <th>Profile</th>
                  <th>Make Admin</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">Ziad
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">ziadyassr17@gmail.com</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Make Admin</button></td>
                </tr>
                <tr>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">Ziad
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">ziadyassr17@gmail.com</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Make Admin</button></td>
                </tr>
                <tr>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">Ziad
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">ziadyassr17@gmail.com</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Make Admin</button></td>
                </tr>
                <tr>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">Ziad
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">ziadyassr17@gmail.com</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Make Admin</button></td>
                </tr>
                <tr>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">Ziad
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">ziadyassr17@gmail.com</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Make Admin</button></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
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