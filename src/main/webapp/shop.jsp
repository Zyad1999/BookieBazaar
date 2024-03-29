<%@taglib prefix="c" uri="jakarta.tags.core" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book Store</title>

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

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/pagination.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
              <div class="logo"> <a href="home"><img src="images/logos/it_logo.png" alt="logo" /></a> </div>
              <!-- logo end -->
            </div>
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
              <!-- menu start -->
              <div class="menu_side">
                <div id="navbar_menu">
                  <ul class="first-ul">
                    <li> <a class="active" href="home">Home</a></li>
                    </li>
                    <li> <a href="shop">Shop List</a>
                      <ul>
                        <li><a href="shop">All Books</a></li>
                        <c:forEach var="category" items="${applicationScope.shopBooks.getCategories(1)}">
                          <li><a href="shop?name=${category.category}">${category.category}</a></li>
                        </c:forEach>
                      </ul>
                    </li>
                    <c:choose>
                      <c:when test="${sessionScope.currentUser != null}">
                        <li><a href="profile"><i class="fa fa-user" aria-hidden="true"></i> Profile</a>
                          <ul>
                            <li><a href="profile">Profile</a></li>
                            <c:if test="${sessionScope.currentUser.isAdmin eq true}">
                              <li><a href="usersController">Users profile</a></li>
                            </c:if>
                            <li><a href="logout">Signout</a></li>
                          </ul>
                        </li>
                      </c:when>
                      <c:otherwise>
                        <li>
                          <a href="login">Login</a>
                        </li>
                        </li>
                      </c:otherwise>
                    </c:choose>
                    <li><a href="cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a></li>
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



    <div class="section padding_layout_1 product_list_main" >
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row" id="booksContent">
              <c:forEach items="${requestScope.listOfBooks}" var="book">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all" style="max-width: 300px">
                  <div class="product_list">
                    <div class="product_img"><a href="book?bookId=${book.id}"> <img width="260" height="350" src="images/book_images/${book.img}" alt=""></a>
                    </div>
                    <div class="product_detail_btm">
                      <div class="center">
                        <h4>
                          <a href="book?bookId=${book.id}">
                            <c:out value="${book.name}" />
                          </a>
                        </h4>
                      </div>
                      <div class="product_price">
                        <p><span class="new_price">&pound;
                            <c:out value="${book.price}" />
                          </span></p>
                      </div>
                    </div>
                  </div>
                </div>

              </c:forEach>
            </div>
          </div>

          <div class="col-md-3">
            <form method="post" action="shop" id="book-search-form">

              <div class="side_bar">
                <div class="side_bar_blog">
                  <div class="side_bar" style="margin-bottom:20px">
                    <c:if test="${sessionScope.currentUser.isAdmin eq true}">
                      <a href="#addBook" class="btn sqaure_bt" data-toggle="modal">Add Book</a>
                    </c:if>
                  </div>



                  <h4>SEARCH</h4>
                  <div class="side_bar_search">
                    <div class="col-md-12">
                      <input class="form-control" name="nameSearch" placeholder="Book Name" type="text">
                    </div>
                    <br><br><br>
                    <div class="col-md-12">
                      <input class="form-control" name="authorSearch" placeholder="Author" type="text">
                    </div><br><br><br><br>

                    <div class="col-md-6">
                      <input class="form-control" name="minPages" style="padding: 0px 5px;" placeholder="Min page"
                        type="number">
                    </div>
                    <div class="col-md-6">
                      <input class="form-control" name="maxPages" style="padding: 0px 5px;" placeholder="Max page"
                        type="number">
                    </div><br><br>

                    <div class="col-md-6">
                      <input class="form-control" name="minPrice" style="padding: 0px 5px;" placeholder="Min Price"
                        type="number">
                    </div>
                    <div class="col-md-6">
                      <input class="form-control" name="maxPrice" style="padding: 0px 5px;" placeholder="Max Price"
                        type="number">
                    </div>
                  </div>

                  <div class="side_bar_search">
                    <br><br><br>

                    <div class="col-md-10">
                      <select title="Countries" class="field_custom" name="language"
                        style="border: solid #e1e1e1 1px; width: 100%;background: #ffffff;min-height: 50px;padding: 5px 2px;line-height: normal;border-radius: 5px;margin-bottom: 10px;font-size: 14px;color: #737373;">
                        <option value="">Select Language</option>
                        <option value="ARAB">Arabic</option>
                        <option value="ENG">English</option>
                      </select>
                    </div>

                  </div>

                </div>

                <div class="side_bar_blog">
                  <h4>Category</h4>
                  <div class="tags">
                    <ul>
                      <c:forEach items="${applicationScope.shopBooks.getCategories(1)}" var="category">
                        <li>
                          <label>${category.category}</label>
                          <input type="checkbox" id="" name="category1" value="${category.category}">
                          <br>
                        </li>
                      </c:forEach>
                    </ul>
                  </div>
                </div>

                <div class="center">
                  <button type="button" id="search-btn" class="btn sqaure_bt">Search</button>
                </div>


                <br><br>
                <!-- 
                <div class="center">
                  <a href="#addBook" class="btn sqaure_bt" data-toggle="modal">
                    Search</a>
                </div> -->

              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="paginator" id="paginator">
        <ul id="ulPaginator">
          <c:forEach var="i" begin="1" end="${noOfPages}" varStatus="loop">
            <li>
              <a href="shop?page=${i}&name=${param.name}">
                ${i}
              </a>
            </li>
          </c:forEach>
        </ul>
      </div>


      <!-- Edit Modal HTML -->
      <div id="addBook" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <form class="form_contant" method="post" action="addBook" enctype="multipart/form-data">
              <div class="modal-header">
                <h4 class="modal-title">Add Book</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label>Name</label> <input type="text" name="bookName" class="field_custom">
                </div>
                <div class="form-group">
                  <label>Author</label> <input type="text" name="bookAuthor" class="field_custom">
                </div>
                <div class="form-group">
                  <label>Category</label> <input type="text" name="bookCategoty" class="field_custom">
                </div>


                <div class="form-group">
                  <label>Quantity</label> <input type="number" name="bookQuantity" class="field_custom">
                </div>

                <div class="form-group">
                  <label>Price</label><input type="number" class="field_custom" name="bookPrice">
                </div>

                <div class="form-group">
                  <label>Number Of Pages</label> <input type="number" class="field_custom" name="bookPages">
                </div>
                <!-- <div class="form-group">
                  <label>Language</label> <input type="text" name="bookLanguage" class="field_custom" required>
                </div> -->
                
                <div class="form-group">
                  <label>Language</label>
                  <input type="radio"  name="bookLanguage" id="bookLanguageArabic" value="Arabic" >
                  <label>Arabic</label>
                  <input type="radio"  name="bookLanguage" id="bookLanguageEnglish" value="English" >
                  <label>English</label>
                </div>

                <div class="form-group">
                  <label>Description</label>
                  <textarea class="field_custom" id="bookDescription" name="bookDescription"></textarea>
                </div>

                <div class="form-group">
                  <label>Image</label>
                  <input type="file" class="field_custom" name="bookImage">
                </div>
              </div>

              <div class="modal-footer">

                <button type="button" value="Add" data-dismiss="modal" class="btn sqaure_bt">Cancel</button>

                <button type="submit" value="Add" class="btn sqaure_bt">Add</button>

              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="search_bar" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><i class="fa fa-close"></i></button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-lg-8 col-md-8 col-sm-8 offset-lg-2 offset-md-2 offset-sm-2 col-xs-10 col-xs-offset-1">
                <div class="navbar-search">
                  <form action="shop" method="Get" id="search-global-form" class="search-global">
                    <input type="text" placeholder="Type to search" autocomplete="off" name="bookNamePara" id="search"
                      value="" class="search-global__input">
                    <button class="search-global__btn"><i class="fa fa-search"></i></button>
                    <div class="search-global__note">Begin typing your search above and press return to search.</div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Model search bar -->

    <!-- footer -->
    <footer class="footer_style_2">
      <div class="container-fuild">
        <div class="row">

          <div class="footer_blog">
            <div class="row">
              <!-- <div class="col-md-4"></div> -->
              <div class="col-md-6">
                <div class="main-heading left_text">
                  <h2>ABOUT BOOKIEBAZAAR</h2>
                </div>
                <p>bookibazaar is an online Bookstore with 100+ different titles for very renowned authors from all over
                  the world.
                  We sell only original book copies, either new or used with very attractive prices.
                  <br>
                  contact us via facebook, instagram or through our website to trade in your old books, and get your new
                  favourite copy.
                </p>
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
                <p>23 Faggala Street

                  <br>
                  <span style="font-size:18px;"><a href="tel:+9876543210">+02 25416141</a></span>

                  <span style="font-size:18px;"><a href="tel:+9876543210">support@bookibazaar.com</a></span>

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

    <script src="js/categories_form.js"></script>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- menu js -->
    <script src="js/menumaker.js"></script>
    <!-- wow animation -->
    <script src="js/wow.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    <script src="js/addBook_form.js"></script>

  </body>

  </html>