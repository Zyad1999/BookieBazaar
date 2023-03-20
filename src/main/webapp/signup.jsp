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
  <title>Signup</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
</head>

<body id="default_theme" class="signup">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  <!-- header -->
  <%@include file="header.jsp" %>
  <!-- end inner page banner -->
  <div class="section padding_layout_1">
    <div class="container">
      <div class="row">
        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
        <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
          <div class="row">
            <div class="full">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="main_heading text_align_center">
                  <h2>Sign up</h2>
                </div>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 appointment_form">
                <div class="form_section">
                  <form class="form_contant" action="home">
                    <fieldset class="row">

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="User Name" type="text" required>
                      </div>

                  

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Phone Number" type="number" required>
                      </div>



                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Password" type="password" required>
                      </div>

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Confirm Password" type="password" required>
                      </div>

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Email" type="email" required>
                      </div>

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Job" type="text" required>
                      </div>

                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="Country" type="text" required>
                      </div>


                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="City" type="text" required>
                      </div>


                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="Street" type="text" required>
                      </div>


                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="Building Number" type="text" required>
                      </div>


                    

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Credit Limit" type="number" required>
                      </div>

                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input placeholder="Birth Date" class="field_custom" type="text" onfocus="(this.type='date')"
                          onblur="(this.type='text')" required />
                      </div>
                      <div class="center">
                        <a class="btn sqaure_bt" id="allProudcts" href="home">Signup</a>
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
  <%@include file="footer.jsp" %>
</body>

</html>