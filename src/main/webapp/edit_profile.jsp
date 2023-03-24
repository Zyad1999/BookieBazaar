<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="user" scope="page" value="${sessionScope.currentUser}" />
<c:set var="address" scope="page" value="${sessionScope.currentUser.addressDto}" />
<head>
  <!-- basic -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- mobile metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- site metas -->
  <title>Edite Profile</title>
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

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/employee.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/employee.js"></script>
  <!-- site icons -->
</head>

<body id="default_theme" class="signup">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  <!-- header -->
  <header>
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
                  <h2>Edit Profile</h2>
                </div>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 appointment_form">
                <div class="form_section">
                  <form class="form_contant" action="editeProfile" METHOD="post">
                    <fieldset class="row">
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">PHONE NUMBER</h5>
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">JOB</h5>
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Phone Number" type="number" name="phone" value="${user.phoneNumber}">
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Job" type="text" name="job" value="${user.job}">
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">COUNTRY</h5>
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">CITY</h5>
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">STREET</h5>
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">BUILDING NUMBER</h5>
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <select title="Countries" class="field_custom" name="country" style="border: solid #e1e1e1 1px;width: 100%;background: #f8f8f8;min-height: 50px;padding: 5px 2px;line-height: normal;border-radius: 0px;margin-bottom: 10px;font-size: 14px;color: #737373;">
                          <option value="Egypt" ${address.country == 'Egypt' ? 'selected' : ''}>Egypt</option>
                          <option value="Saudi Arabia" ${address.country == 'Saudi Arabia' ? 'selected' : ''}>Saudi Arabia</option>
                          <option value="Libya" ${address.country == 'Libya' ? 'selected' : ''}>Libya</option>
                          <option value="Sudan" ${address.country == 'Sudan' ? 'selected' : ''}>Sudan</option>
                        </select>
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="City" type="text" name="city" value="${address.city}">
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="Street" type="text" name="street" value="${address.street}">
                      </div>
                      <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <input class="field_custom" placeholder="Building Number" type="number" name="building" value="${address.buildingNumber}">
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">CREDIT LIMIT</h5>
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <h5 style="margin-bottom: 5px; margin-top: 3px">BIRTH DATE</h5>
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input class="field_custom" placeholder="Credit Limit" type="number" name="credit" value="${user.creditLimit}">
                      </div>
                      <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <input placeholder="Birth Date" class="field_custom" type="text" name="birthdate" onfocus="(this.type='date')"
                               onblur="(this.type='text')" value="${user.birthDate}"/>
                      </div>
                      <c:if test="${not empty requestScope.updateFailed}">
                        <div class="center" style="color: red">${requestScope.updateFailed}</div>
                      </c:if>
                      <div class="center">
                        <a class="btn sqaure_bt" style="margin-right: 10px ;" href="profile">cancel</a>
                        <button class="btn sqaure_bt" style="margin-right: 10px ;" type="submit">save</button>
                        <a href="#updatePassword" class="btn sqaure_bt" data-toggle="modal">
                          update password</a>
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
  <div id="updatePassword" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <form class="password-form" action="editeProfile" METHOD="post">
          <div class="modal-header">
            <h4 class="modal-title">Update Password</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label>Password</label> <input type="password" name="userPassword" class="field_custom">
            </div>
            <div class="form-group">
              <label>New Password</label> <input type="password" name="newPassword" class="field_custom">
            </div>
            <div class="form-group">
              <label>Confirm New Password</label> <input type="password" name="cNewPassword" class="field_custom">
            </div>
          </div>
          <div class="modal-footer">
            <button value="Add" data-dismiss="modal" class="btn sqaure_bt">Cancel</button>
            <button type="submit" value="Add" class="btn sqaure_bt" id="updatep">Update</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- end footer -->
  <!-- js section -->
  <footer class="footer_style_2">
    <div class="container-fuild">
      <div class="row">

        <div class="footer_blog">
          <div class="row">
            <!-- <div class="col-md-4"></div> -->
            <div class="col-md-6">
              <div class="main-heading left_text">
                <h2>It Next Theme</h2>
              </div>
              <p>Tincidunt elit magnis nulla facilisis. Dolor sagittis maecenas. Sapien nunc amet ultrices, dolores
                sit
                ipsum velit purus aliquet, massa fringilla leo orci.</p>
              <ul class="social_icons">
                <li class="social-icon fb"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li class="social-icon tw"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li class="social-icon gp"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
              </ul>
            </div>

            <div class="col-md-2"></div>
            <div class="col-md-4">
              <div class="main-heading left_text">
                <h2>Contact us</h2>
              </div>
              <p>123 Second Street Fifth Avenue,<br>
                Manhattan, New York<br>
                <span style="font-size:18px;"><a href="tel:+9876543210">+987 654 3210</a></span>
              </p>
              <div class="footer_mail-section">
                <form>
                  <fieldset>
                    <div class="field">
                      <input placeholder="Email" type="text">
                      <button class="button_custom"><i class="fa fa-envelope" aria-hidden="true"></i></button>
                    </div>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="cprt">
          <p>BOOKIEBAZAAR © Copyrights 2023 Design by EYZ</p>
        </div>
      </div>
    </div>
  </footer>
  <!-- end footer -->

  <script src="js/jquery.min.js"></script>
  <script src="js/edite_profile.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- menu js -->
  <script src="js/menumaker.js"></script>
  <!-- wow animation -->
  <script src="js/wow.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
</body>

</html>