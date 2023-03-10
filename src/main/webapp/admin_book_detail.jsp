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
  <title>Book Store</title>
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
  <!-- zoom effect -->
  <link rel='stylesheet' href='css/hizoom.css'>
  <!-- end zoom effect -->
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
</head>

<body id="default_theme" class="it_shop_list">
  <!-- loader -->
  <div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
  <!-- end loader -->
  
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
                <form class="cart" method="post" action="">

                  <a href="#edit" class="btn sqaure_bt" data-toggle="modal">
                    Edit Book</a>

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
                    <h4><a href="book_detail.html">Harry Potter</a></h4>
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
                    <h4><a href="book_detail.html">Pride And Prejudice</a></h4>
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
                    <h4><a href="book_detail.html">The Lord of the Rings</a></h4>
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



  <!-- Edit Modal HTML -->
  <div id="edit" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <form>
          <div class="modal-header">
            <h4 class="modal-title">Edit Book</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label>Name</label> <input type="text" class="field_custom" required>
            </div>
            <div class="form-group">
              <label>Quantity</label> <input type="number" class="field_custom" required>
            </div>
            <div class="form-group">
              <label>Price</label>
              <input type="number" class="field_custom" required>
            </div>
            <div class="form-group">
              <label>Description</label>
              <textarea class="field_custom" required></textarea>
            </div>
            <div class="form-group">
              <label>Image</label>
              <input type="file" class="" required>
            </div>
          </div>
          <div class="modal-footer">
            <!-- <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"> -->
            <button type="submit" value="Add" class="btn sqaure_bt">cancel</button>
            <button type="submit" value="Add" class="btn sqaure_bt">Save</button>

          </div>
        </form>
      </div>
    </div>
  </div>



  <!-- end section -->
  <!-- js section -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- menu js -->
  <script src="js/menumaker.js"></script>
  <!-- wow animation -->
  <script src="js/wow.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <script src='js/hizoom.js'></script>
  <script>
    $('.hi1').hiZoom({
      width: 300,
      position: 'right'
    });
    $('.hi2').hiZoom({
      width: 400,
      position: 'right'
    });
  </script>
</body>

</html>