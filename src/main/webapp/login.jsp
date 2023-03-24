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
  <title>Login</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
</head>

<body id="default_theme" class="login">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  <%@include file="header.jsp" %>
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
                <form class="form_contant" action="login" method="post">
                  <fieldset class="row">
                    <div class="center">
                      <div class="field col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <input class="field_custom" placeholder="Email" type="email" name="email" required>
                      </div>
                    </div>
                    <div class="center">
                      <div class="field col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <input class="field_custom" placeholder="Password" type="password" name="password" required>
                      </div>
                    </div>
                    <c:if test="${not empty requestScope.loginFailed and requestScope.loginFailed eq true}">
                      <div class="center" style="color: red">Invalid Credentials. Please try again.</div>
                    </c:if>
                    <div class="center" style="margin-top:20px;">
                      <button class="btn sqaure_bt" type="submit">login</button>
                    </div>
                    <div class="center">
                      <p id="account">Don't have an account? <a href="signup" style="color:#b87906fa">Signup</a>
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
  <%@include file="footer.jsp" %>
</body>

</html>