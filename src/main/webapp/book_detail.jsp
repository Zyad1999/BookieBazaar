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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                      <li><a href="profile"><i class="fa fa-user" aria-hidden="true"></i></a>
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
                          <a href="login.jsp">Login</a>
                        </li>
                        </li>
                      </c:otherwise>
                    </c:choose>
                    <li><a href="cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
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

              <div class="col-xl-5 col-lg-12 col-md-12">
                <div class="product_detail_feature_img hizoom hi2">
                  <div class='hizoom hi2'> <img src="images/book_images/${currentBook.img}" width="300" height="460" alt="#" /> </div>
                </div>
              </div>

              <div class="col-xl-7 col-lg-12 col-md-12 product_detail_side detail_style1">
                <div class="product-heading">
                  <h2>${currentBook.name}</h2>
                </div>
                <div class="product-detail-side"><span class="new-price">&pound; ${currentBook.price}</span></div>
                <div class="detail-contant">
                  <div>
                    <c:if test="${currentBook.quantity eq 0}">
                      <span style="font-weight:bold; font-size: 15px;">Status: </span><span class="text-danger">Out Of Stock</span>
                    </c:if>
                    <c:if test="${currentBook.quantity ne 0}">
                      <span style="font-weight:bold; font-size: 15px;">Status: </span><span class="text-success">In Stock</span>
                    </c:if>
                  </div>
                  <br>
                  <p><span style="font-weight:bold; color: black;">Description: </span>${currentBook.description}.<br></p>
                  <p><span style="font-weight:bold; color: black;">Author: </span>${currentBook.author}<br></p>
                  <p><span style="font-weight:bold; color: black;">Category: </span>${currentBook.category}<br></p>
                  <p><span style="font-weight:bold; color: black;">No.Pages: </span>${currentBook.numberOfPages}<br></p>
                  <p><span style="font-weight:bold; color: black;">Language: </span>${currentBook.language}<br></p>
                  <br>
                  <c:if test="${currentBook.quantity ne 0}">
                    <form class="cart" method="post" action="cart.jsp">
                      <div class="quantity">
                        <input step="1" min="1" max="${currentBook.quantity}" name="quantity" value="1" title="Qty"
                          class="input-text qty text" id="quantity" size="4" type="number">
                      </div>
                      <button type="submit" class="btn sqaure_bt">Add to cart</button><br><br>
                      <span class="text-success addToCartMsg" ></span>
                    </form>
                  </c:if>
                  <c:if test="${currentBook.quantity eq 0}">
                    <!-- <p>Product not Available<br> -->
                    <p class="text-danger">Product not Available</p>
                  </c:if>
                  <c:if test="${sessionScope.currentUser.isAdmin eq true}">
                    <a href="#edit" class="btn sqaure_bt" data-toggle="modal">
                      Edit Book</a>

                    <a href="#deleteBook" class="btn sqaure_bt" data-toggle="modal">
                      Delete Book</a>
                  </c:if>
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

              <c:forEach items="${listOfBooks}" var="bookData" begin = "1" end = "3">

              <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all" style="max-width: 300px">
                <div class="product_list">
                  <div class="product_img"><a href="book?bookId=${bookData.id}"> <img class="img-responsive" width="260" height="350"
                      src="images/book_images/${bookData.img}" alt=""></a></div>
                  <div class="product_detail_btm">
                    <div class="center">
                      <h4><a href="book?bookId=${bookData.id}">${bookData.name}</a></h4>
                    </div>
                    <div class="product_price">
                      <p><span class="new_price">&pound; ${bookData.price}</span></p>
                    </div>
                  </div>
                </div>
              </div>
            </c:forEach>

            
            
            </div>
          </div>
        </div>
      </div>
    </div>



    <!-- Edit Modal HTML -->
    <div id="edit" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <form method="post" class="form_contant" action="editBook" enctype="multipart/form-data">
            <div class="modal-header">
              <h4 class="modal-title">Edit Book</h4>
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>Name</label> <input type="text" name="bookName" class="field_custom" value="${currentBook.name}">
                <input type="number" name="bookId" class="field_custom" value="${currentBook.id}" hidden>

              </div>
              <div class="form-group">
                <label>Author</label> <input type="text" name="bookAuthor" class="field_custom"
                  value="${currentBook.author}">
              </div>
              <div class="form-group">
                <label>Category</label> <input type="text" name="bookCategoty" class="field_custom"
                  value="${currentBook.category}">
              </div>


              <div class="form-group">
                <label>Quantity</label> <input type="number" name="bookQuantity" class="field_custom"
                  value="${currentBook.quantity}">
              </div>
              <div class="form-group">
                <label>Price</label>
                <input type="number" class="field_custom" name="bookPrice" value="${currentBook.numberOfPages}">
              </div>
              <div class="form-group">
                <label>Number Of Pages</label> <input type="number" name="numberOfPages" class="field_custom"
                  value="${currentBook.numberOfPages}">
              </div>

              <div class="form-group">
                <label>Language</label>


                <c:if test="${currentBook.language eq 'ENG'}">
                  <input type="radio" name="bookLanguage" id="bookLanguageArabic" value="Arabic">
                  <label>Arabic</label>
                  <input type="radio" name="bookLanguage" id="bookLanguageEnglish" value="English" checked>
                  <label>English</label>
                </c:if>

                <c:if test="${currentBook.language eq 'ARAB'}">
                  <input type="radio" name="bookLanguage" id="bookLanguageArabic" value="Arabic" checked>
                  <label>Arabic</label>
                  <input type="radio" name="bookLanguage" id="bookLanguageEnglish" value="English">
                  <label>English</label>
                </c:if>





              </div>

              <div class="form-group">
                <label>Description</label>
                <textarea class="field_custom" id="bookDescription"
                  name="bookDescription">${currentBook.description}</textarea>
              </div>

              <div class="form-group">
                <label>Image</label>
                <input type="file" class="field_custom" name="bookImage" value="${currentBook.img}">
                <input type="text" class="" name="bookImageName" value="${currentBook.img}" hidden>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" data-dismiss="modal" class="btn sqaure_bt">Cancel</button>
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
                    <input type="text" placeholder="Type to search" autocomplete="off" name="bookNamePara" id="search" value=""
                      class="search-global__input">
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
    <script>
      const book = ${currentBook};
      var loggedin = (/true/i).test("${not empty sessionScope.currentUser}");
    </script>
    <script src="js/addToCart.js"></script>
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
    <script src="js/editBook_form.js"></script>

  </body>

  </html>