<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
  <!-- end header -->


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
                  Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat
                  eleifend
                  leo.<br>
                  <span class="stock">2 in stock</span>
                </p>
                <form class="cart" method="post" action="">
                  <a href="#edit" class="btn sqaure_bt" data-toggle="modal">
                    Edit Book</a>
                  <a href="#deleteBook" class="btn sqaure_bt" data-toggle="modal">
                    Delete Book</a>
                </form>

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



  <!-- Edit Modal HTML -->
  <div id="edit" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <form method="post" action="editBook" enctype="multipart/form-data">
          <div class="modal-header">
            <h4 class="modal-title">Edit Book</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label>Name</label> <input type="text" name="bookName" class="field_custom" value="${currentBook.name}"
                required>
              <input type="number" name="bookId" class="field_custom" value="${currentBook.id}" hidden>

            </div>
            <div class="form-group">
              <label>Author</label> <input type="text" name="bookAuthor" class="field_custom"
                value="${currentBook.author}" required>
            </div>
            <div class="form-group">
              <label>Category</label> <input type="text" name="bookCategoty" class="field_custom"
                value="${currentBook.category}" required>
            </div>


            <div class="form-group">
              <label>Quantity</label> <input type="number" name="bookQuantity" class="field_custom"
                value="${currentBook.quantity}" required>
            </div>
            <div class="form-group">
              <label>Price</label>
              <input type="number" class="field_custom" name="bookPrice" value="${currentBook.numberOfPages}" required>
            </div>
            <div class="form-group">
              <label>Number Of Pages</label> <input type="number" name="numberOfPages" class="field_custom"
                value="${currentBook.price}" required>
            </div>

            <div class="form-group">
              <label>Language</label>


              <c:if test="${currentBook.language eq 'ENG'}">
                <input type="radio" name="bookLanguage" value="Arabic" required>
                <label>Arabic</label>
                <input type="radio" name="bookLanguage" value="English" checked required>
                <label>English</label>
              </c:if>

              <c:if test="${currentBook.language eq 'ARAB'}">
                <input type="radio" name="bookLanguage"  value="Arabic" checked required>
                <label>Arabic</label>
                <input type="radio" name="bookLanguage" value="English" required>
                <label>English</label>
              </c:if>





            </div>

            <div class="form-group">
              <label>Description</label>
              <textarea class="field_custom" name="bookDescription" required>${currentBook.description}</textarea>
            </div>

            <div class="form-group">
              <label>Image</label>
              <input type="file" class="" name="bookImage" value="${currentBook.img}">
              <input type="text" class="" name="bookImageName" value="${currentBook.img}" hidden>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" data-dismiss="modal" class="btn sqaure_bt">Cancel</button>
            <button type="submit" class="btn sqaure_bt">Save</button>
          </div>
        </form>
      </div>
    </div>
  </div>


  <div id="deleteBook" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <form method="Post" action="deleteBook">
          <div class="modal-header">
            <h4 class="modal-title">Delete Book</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <p>Are you sure you want to delete these Book?</p>
          </div>

          <div class="modal-footer">
            <button data-dismiss="modal" class="btn sqaure_bt">cancel</button>
            <input value="${param.bookId}" name="bookId" hidden>
            <button type="submit" class="btn sqaure_bt">Delete</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- footer -->
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