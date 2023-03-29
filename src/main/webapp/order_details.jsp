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
                    <th>Product</th>
                    <th>Quantity</th>
                    <th class="text-center">Price</th>
                    <th class="text-center">Total</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${requestScope.listOfBookOrder}" var="bookOrder">
                    <tr>
                      <td class="col-sm-8 col-md-6">
                        <div class="media"> <a class="thumbnail pull-left" href="#">
                            <img class="media-object" src="images/book_images/${bookOrder.book.img}" alt="#"></a>
                          <div class="media-body">
                            <h4 class="media-heading"><a href="#">${bookOrder.book.name}</a></h4>
                          </div>
                        </div>
                      </td>
                      <td class="col-sm-1 col-md-1" style="text-align: center">
                        <p class="price_table">${bookOrder.quantity}</p>
                      </td>
                      <td class="col-sm-1 col-md-1 text-center">
                        <p class="price_table">$ ${bookOrder.book.price}</p>
                      </td>
                      <td class="col-sm-1 col-md-1 text-center">
                        <p class="price_table">$ ${bookOrder.book.price*bookOrder.quantity}</p>
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