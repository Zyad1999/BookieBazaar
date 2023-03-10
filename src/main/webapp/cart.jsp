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
                <tr>
                  <td class="col-sm-8 col-md-6">
                    <div class="media"> <a class="thumbnail pull-left" href="#">
                        <img class="media-object" src="images/book_images/lordOfTheRings.jpg" alt="#"></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Norton Internet Security</a></h4>
                        <span>Status: </span><span class="text-success">In Stock</span>
                      </div>
                    </div>
                  </td>
                  <td class="col-sm-1 col-md-1" style="text-align: center">
                    <input class="price_table form-control" value="3" type="number">
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main"><i class="fa fa-trash"></i>
                      Remove</button>
                  </td>
                </tr>
                <tr>
                  <td class="col-md-6">
                    <div class="media"> <a class="thumbnail pull-left" href="#"> <img class="media-object"
                          src="images/book_images/lordOfTheRings.jpg" alt="#"></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Kaspersky Internet Security</a></h4>
                        <span>Status: </span><span class="text-danger">Out Stock</span>
                      </div>
                    </div>
                  </td>
                  <td class="col-md-1" style="text-align: center"><input class="price_table form-control" value="2"
                      type="number">
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-md-1"><button type="button" class="bt_main"><i class="fa fa-trash"></i> Remove</button>
                  </td>
                </tr>
                <tr>
                  <td class="col-sm-8 col-md-6">
                    <div class="media"> <a class="thumbnail pull-left" href="#"> <img class="media-object"
                          src="images/book_images/lordOfTheRings.jpg" alt="#"></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Mcafee Livesafe Antivirus</a></h4>
                        <span>Status: </span><span class="text-success">In Stock</span>
                      </div>
                    </div>
                  </td>
                  <td class="col-sm-1 col-md-1" style="text-align: center"><input class="form-control" value="3"
                      type="number">
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-sm-1 col-md-1"><button type="button" class="bt_main"><i class="fa fa-trash"></i>
                      Remove</button></td>
                </tr>
                <tr>
                  <td class="col-md-6">
                    <div class="media"> <a class="thumbnail pull-left" href="#"> <img class="media-object"
                          src="images/book_images/lordOfTheRings.jpg" alt="#"></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Norton Internet Security</a></h4>
                        <span>Status: </span><span class="text-danger">Out Stock</span>
                      </div>
                    </div>
                  </td>
                  <td class="col-md-1" style="text-align: center"><input class="form-control" value="2" type="number">
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-sm-1 col-md-1 text-center">
                    <p class="price_table">$25.00</p>
                  </td>
                  <td class="col-md-1"><button type="button" class="bt_main"><i class="fa fa-trash"></i> Remove</button>
                  </td>
                </tr>
              </tbody>
            </table>
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
                    <h4>Subtotal</h4>
                  </td>
                  <td class="text-right">
                    <h4>$50.00</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h5>Estimated shipping</h5>
                  </td>
                  <td class="text-right">
                    <h4>$5.00</h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <h3>Total</h3>
                  </td>
                  <td class="text-right">
                    <h4>$55.00</h4>
                  </td>
                </tr>
                <tr>
                  <td><button type="button" class="button">Continue Shopping</button></td>
                  <td><button class="button">Checkout</button></td>
                </tr>
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