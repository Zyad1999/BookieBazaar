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
    <link rel="icon" href="images/fevicon/fevicon.png" type="image/gif" />
</head>

<body id="default_theme" class="signup">
<!-- loader -->
<div class="bg_load"><img class="loader_animation" src="images/loaders/loader_1.png" alt="#"/></div>
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
                                <form class="form_contant" action="signup" method="post">
                                    <fieldset class="row">
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="User Name" type="text"
                                                   name="username" id="username">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="Phone Number" type="number"
                                                   name="phone">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="Password" type="password"
                                                   name="password" id="password">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="Confirm Password" type="password"
                                                   id="confirmPassword">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="Email" type="email" name="email"
                                            id="email">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="Job" type="text" name="job"
                                            >
                                        </div>
                                        <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                            <select title="Countries" class="field_custom" name="country" style="border: solid #e1e1e1 1px;width: 100%;background: #f8f8f8;min-height: 50px;padding: 5px 2px;line-height: normal;border-radius: 0px;margin-bottom: 10px;font-size: 14px;color: #737373;">
                                                <option value="">Select Country</option>
                                                <option value="Egypt">Egypt</option>
                                                <option value="Saudi Arabia">Saudi Arabia</option>
                                                <option value="Libya">Libya</option>
                                                <option value="Sudan">Sudan</option>
                                            </select>
                                        </div>
                                        <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                            <input class="field_custom" placeholder="City" type="text" name="city"
                                            >
                                        </div>
                                        <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                            <input class="field_custom" placeholder="Street" type="text" name="street"
                                            >
                                        </div>
                                        <div class="field col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                            <input class="field_custom" placeholder="Building Number" type="number"
                                                   name="building">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input class="field_custom" placeholder="Credit Limit" type="number"
                                                   name="credit">
                                        </div>
                                        <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input placeholder="Birth Date" class="field_custom" type="text" min="1920-01-01" max="2010-01-01"
                                                   name="birthdate" onfocus="(this.type='date')"
                                                   onblur="(this.type='text')"/>
                                        </div>
                                        <c:if test="${not empty requestScope.signupFailed and requestScope.signupFailed eq true}">
                                            <div class="center" style="color: red">Signup Failed. Please try again.
                                            </div>
                                        </c:if>
                                        <div class="center" style="margin-top:20px;">
                                            <button class="btn sqaure_bt" type="submit">Signup</button>
                                        </div>
                                        <div class="center">
                                            <p id="account">Already have an account? <a href="login"
                                                                                        style="color:#b87906fa">Login</a>
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
<script src="js/signup_form.js"></script>
</body>

</html>