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
  <title>Not Found</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
</head>

<body id="default_theme" class="it_error">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  <%@include file="header.jsp" %>
  <!-- section -->
  <div class="section padding_layout_1">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div class="center margin_bottom_30_all"> <img class="margin_bottom_30_all" width="400" height="350"
              src="images/book_images/error404.png" alt="#"> </div>
          <div class="heading text_align_center">
            <h2>OOOPS, THIS PAGE COULD NOT BE FOUND!</h2>
          </div>
          <div class="center"> <a class="btn sqaure_bt light_theme_bt" href="it_home.jsp">Back Home</a> </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end section -->

  <!-- js section -->
  <%@include file="footer.jsp" %>

</html>