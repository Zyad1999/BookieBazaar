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
    <title>Cart</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/fevicon/fevicon.png" type="image/gif" />
</head>

<body id="default_theme" class="it_serv_shopping_cart shopping-cart">
    <!-- loader -->
    <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
    <!-- end loader -->
    <%@include file="header.jsp" %>
        <div class="section padding_layout_1 Shopping_cart_section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="product-table">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-center">Order Id</th>
                                        <th class="text-center">Order Placed</th>
                                        <th class="text-center">Total</th>
                                        <th> </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.listOfOrderDto}" var="order">
                                        <tr>
                                            <!-- <td class="col-sm-8 col-md-6">
                                                <div class="media"> <a class="thumbnail pull-left" href="#">
                                            
                                                    <div class="media-body">
                                                        <h4 class="media-heading"><a href="#">${order.id}</a></h4>
                                                    </div>
                                                </div>
                                            </td> -->
                                            <td class="col-sm-2 col-md-2 text-center">
                                                <p class="price_table">${order.id}</p>
                                            </td>
                                            <td class="col-sm-2 col-md-2 text-center">
                                                <p class="price_table">${order.createdAt.toLocalDate()} ${order.createdAt.getHour()}:${order.createdAt.getMinute()}:${order.createdAt.getSecond()}</p>
                                            </td>
                                            <td class="col-sm-2 col-md-2 text-center">
                                                <p class="price_table">$ ${order.totalPrice}</p>
                                            </td>
                                            <td class="col-sm-2 col-md-2">
                                                <button type="button" onclick="window.location.href='order_details?order=${order.id}';" class="bt_main">Show Order</button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- js section -->
        <%@include file="footer.jsp" %>
</body>

</html>