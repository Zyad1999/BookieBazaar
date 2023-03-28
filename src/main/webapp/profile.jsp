<!doctype html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Profile</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="css/profileStyle.css" />
</head>

<body id="default_theme" class="book_images" style="background-color: #fff;">

    <%@include file="header.jsp" %>
    <!-- <div class="page-content page-container" id="page-content"> -->
    <div class="padding" style="margin-top: 100px;">
        <div class="row container d-flex justify-content-center">
            <div class="col-xl-20 col-md-10" style="min-width: 350px">
                <div class="card user-card-full">
                    <div class="row m-l-0 m-r-0">
                        <!-- <div class="col-sm-4 bg-c-lite-green user-profile">
                            <div class="card-block text-center text-white">
                                <div class="m-b-25">
                                    <img src="https://img.icons8.com/bubbles/100/000000/user.png" class="img-radius"
                                        alt="User-Profile-Image">
                                </div>
                            </div>
                        </div> -->
                        <div class="col-sm-12">
                            <div class="card-block" style="min-width: 400px">
                                <h6 class="m-b-20 p-b-5 b-b-default f-w-600" style="font-size: 30px;">Profile</h6>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">Username</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.user.userName}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">Birthdate</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.user.birthDate}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">Job</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.user.job}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">E-mail</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.user.email}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">Phone Number</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.user.phoneNumber}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">Credit Limit</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.user.creditLimit}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="text-muted f-w-600">Address</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <h6 class="text-muted f-w-400">${requestScope.address.country}, ${requestScope.address.city}, ${requestScope.address.street}, Building Number ${requestScope.address.buildingNumber}</h6>
                                    </div>
                                    <div class="col-sm-6"></div>
                                    <div class="col-sm-3">
                                        <c:if test="${not requestScope.admin or requestScope.admin eq false}">
                                            <a class="btn sqaure_bt" id="allProudcts" href="editeProfile">Edit
                                                Profile</a>
                                        </c:if>
                                    </div>
                                    <div class="col-sm-3">
                                        <a class="btn sqaure_bt" id="jjjjj" href="order_history">
                                            Orders</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- </div> -->

    <!-- js section -->
    <%@include file="footer.jsp" %>
</body>

</html>