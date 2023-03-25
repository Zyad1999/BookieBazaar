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
  <title>Book Detail</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
</head>

<body id="default_theme" class="it_shop_detail">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  <%@include file="header.jsp" %>
  <!-- section -->
  <div class="section padding_layout_1 product_detail">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-xl-6 col-lg-12 col-md-12">
              <div class="product_detail_feature_img hizoom hi2">
                <div class='hizoom hi2'> <img src="images/book_images/lordOfTheRings.jpg" alt="#" /> </div>
              </div>
            </div>
            <div class="col-xl-6 col-lg-12 col-md-12 product_detail_side detail_style1">
              <div class="product-heading">
                <h2>Norton Internet Security</h2>
              </div>
              <div class="product-detail-side"><span class="new-price">$20.00</span></div>
              <div class="detail-contant">
                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                  Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.
                  Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
                  leo.<br>
                  <span class="stock">2 in stock</span>
                </p>
                <form class="cart" method="post" action="cart">
                  <div class="quantity">
                    <input step="1" min="1" max="5" name="quantity" value="1" title="Qty" class="input-text qty text"
                      size="4" type="number">
                  </div>
                  <button type="submit" class="btn sqaure_bt">Add to cart</button>
                </form>
              </div>
            </div>
          </div>
          <div class="row" style="margin-top: 50px;">
            <div class="col-md-12">
              <div class="full">
                <div class="main_heading text_align_left" style="margin-bottom: 35px;">
                  <h3>Related products</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all">
              <div class="product_list">
                <div class="product_img"> <img class="img-responsive" width="400" height="350"
                    src="images/book_images/harryBook.jpeg" alt=""> </div>
                <div class="product_detail_btm">
                  <div class="center">
                    <h4><a href="book_detail.jsp">Harry Potter</a></h4>
                  </div>
                  <div class="product_price">
                    <p><span class="new_price">$25.00</span></p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all">
              <div class="product_list">
                <div class="product_img"> <img class="img-responsive" width="400" height="350"
                    src="images/book_images/prideAndPrejudiceBook.jpg" alt=""> </div>
                <div class="product_detail_btm">
                  <div class="center">
                    <h4><a href="book_detail.jsp">Pride And Prejudice</a></h4>
                  </div>
                  <div class="product_price">
                    <p><span class="new_price"> $12.49</span></p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all">
              <div class="product_list">
                <div class="product_img"> <img class="img-responsive" width="400" height="350"
                    src="images/book_images/lordOfTheRings.jpg" alt=""> </div>
                <div class="product_detail_btm">
                  <div class="center">
                    <h4><a href="book_detail.jsp">The Lord of the Rings</a></h4>
                  </div>
                  <div class="product_price">
                    <p><span class="new_price">$25.00</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end section -->
  <!-- js section -->
  <%@include file="footer.jsp" %>
</body>

</html>