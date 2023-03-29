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
                    <th> </th>
                  </tr>
                </thead>
                <tbody>
                  <c:if test="${not empty sessionScope.currentUser}">
                    <c:forEach items="${requestScope.setOfCartItem}" var="cart">
                      <tr data-item-id="${cart.book.id}">
                        <td class="col-sm-8 col-md-6">
                          <div class="media"> <a class="thumbnail pull-left" href="#">
                              <img class="media-object" src="images/book_images/${cart.book.img}" alt="#"></a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="#">${cart.book.name}</a></h4>
                              <span>Status: </span><span class="text-success">In Stock</span>
                            </div>
                          </div>
                        </td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                          <input max="${cart.book.quantity}" min="0" class="price_table form-control quantity-input" value="${cart.quantity}" type="number">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table book-price">&pound; ${cart.book.price}</p>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table total_price">&pound; ${cart.book.price*cart.quantity}</p>
                        </td>
                        <td class="col-sm-1 col-md-1 btnmain"><button type="button" class="bt_main"><i class="fa fa-trash"></i>
                            Remove</button>
                        </td>
                      </tr>
                    </c:forEach>
                  </c:if>
                </tbody>
              </table>
              <span id="checkoutMsg" class="center" style="color: red"></span>
              <span class="cartError" class="center" style="color: red">${error}</span>
            </div>
            <div class="shopping-cart-cart">
              <table>
                <tbody>
                  <tr class="head-table">
                    <td>
                      <h5>Cart Totals</h5>
                    </td>
                    <td class="text-right"></td>
                  </tr>
                  <tr>
                    <td>
                      <h3>Items</h3>
                    </td>
                    <td class="text-right">
                      <h4 class="itemsTotal">&pound; ${itemsTotal}</h4>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h3>Shipping</h3>
                    </td>
                    <td class="text-right">
                      <c:if test="${not empty requestScope.setOfCartItem}">
                        <h4 class="shipping">&pound; 5</h4>
                      </c:if>
                      <c:if test="${empty requestScope.setOfCartItem}">
                        <h4  class="shipping">&pound; 0</h4>
                      </c:if>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h3>Total</h3>
                    </td>
                    <td class="text-right">
                      <h4 class="total">&pound; ${total}</h4>
                    </td>
                  </tr>
                  <tr>
                    <td><button onclick="window.location.href='shop'" type="button" class="button">Continue Shopping</button></td>
                    <td><button class="button" id="checkoutBtn">Checkout</button></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- js section -->
    <script>
      var loggedin = (/true/i).test("${not empty sessionScope.currentUser}");
      //var usercartItems = JSON.stringify(${requestScope.setOfCartItem});
      //localStorage.setItem('cartItems',usercartItems);
    </script>
    <script src="js/cart.js"></script>
    <script src="js/order_checkout.js"></script>
    <%@include file="footer.jsp" %>
</body>

</html>