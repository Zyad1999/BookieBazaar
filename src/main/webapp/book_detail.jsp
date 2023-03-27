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

              <div class="col-xl-6 col-lg-12 col-md-12">
                <div class="product_detail_feature_img hizoom hi2">
                  <div class='hizoom hi2'> <img src="images/book_images/${currentBook.img}" alt="#" /> </div>
                </div>
              </div>

              <div class="col-xl-6 col-lg-12 col-md-12 product_detail_side detail_style1">
                <div class="product-heading">
                  <!-- <h4 style="display:inline;">Book Name  </h4><span style="color:#b87906fa;">${currentBook.name}</span><br><br> -->
                  <p  style="font-weight:bold;color:black;font-size: 30px;"><span style="color:black">${currentBook.name}</span></p>

                </div>

                <div class="detail-contant">
                  <!-- <h4 style="display:inline;">Price  </h4><span style="color:#b87906fa;">${currentBook.price}</span><br><br>
                  <h4 style="display:inline;">Description  </h4> <span style="color:#b87906fa;">${currentBook.description}</span> <br><br>
                  <h4 style="display:inline;">Stock  </h4><span style="color:#b87906fa;">${currentBook.quantity}</span><br><br>
                  <h4 style="display:inline;">Author  </h4><span style="color:#b87906fa;">${currentBook.author}</span><br><br>
                  <h4 style="display:inline;">Category  </h4><span style="color:#b87906fa;">${currentBook.category}</span><br><br>
                  <h4 style="display:inline;">Number Of Pages  </h4><span style="color:#b87906fa;">${currentBook.numberOfPages}</span><br><br>
                  <h4 style="display:inline;">Language  </h4> <span style="color:#b87906fa;">${currentBook.language}</span><br><br> -->

                  <p style="font-weight:bold;color:black">Price&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:#0f1111;font-size:13px;">${currentBook.price} &pound;</span></p>
                  <p  style="font-weight:bold;color:black">Description &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:#0f1111;font-size:13px;">${currentBook.description}</span></p>
                  <c:if test="${currentBook.quantity eq 0}">
                    <p  style="font-weight:bold;color:black">Stock&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:red;font-size:13px;">out of stock</span></p>
                  </c:if>
                  <c:if test="${currentBook.quantity ne 0}">
                    <p  style="font-weight:bold;color:black">Stock&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:green;font-size:13px;">in stock</span></p>
                  </c:if>
                  <p  style="font-weight:bold;color:black">Author&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:#0f1111;font-size:13px;">${currentBook.author}</span></p>
                  <p  style="font-weight:bold;color:black">Category&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:#0f1111;font-size:13px;">${currentBook.category}</span></p>
                  <p  style="font-weight:bold;color:black">Number Of Pages&ensp;<span style="color:#0f1111;font-size:13px;">${currentBook.numberOfPages}</span></p>
                  <p  style="font-weight:bold;color:black">Language&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<span style="color:#0f1111;font-size:13px;">${currentBook.language}</span></p>

                  <c:if test="${currentBook.quantity ne 0}">
                    <form class="cart" method="post" action="cart.jsp">
                      <div class="quantity">
                        <input step="1" min="1" max="${currentBook.quantity}" name="quantity" value="1" title="Qty"
                          class="input-text qty text" size="4" type="number">
                      </div>
                      <button type="submit" class="btn sqaure_bt">Add to cart</button>
                    </form>
                  </c:if>
                  <c:if test="${currentBook.quantity eq 0}">
                    <!-- <p>Product not Available<br> -->
                    <p style="font-weight:bold;color:red">Product not Available</p>
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

              <c:forEach items="${listOfBooks}" var="bookData" begin = "1" end = "4">

              <div class="col-md-4 col-sm-6 col-xs-12 margin_bottom_30_all">
                <div class="product_list">
                  <div class="product_img"> <img class="img-responsive" width="400" height="350"
                      src="images/book_images/${bookData.img}" alt=""> </div>
                  <div class="product_detail_btm">
                    <div class="center">
                      <h4><a href="book?bookId=${bookData.id}">${bookData.name}</a></h4>
                    </div>
                    <div class="product_price">
                      <p><span class="new_price">${bookData.price}</span></p>
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
                  <input type="radio" name="bookLanguage" value="Arabic">
                  <label>Arabic</label>
                  <input type="radio" name="bookLanguage" value="English" checked>
                  <label>English</label>
                </c:if>

                <c:if test="${currentBook.language eq 'ARAB'}">
                  <input type="radio" name="bookLanguage" value="Arabic" checked>
                  <label>Arabic</label>
                  <input type="radio" name="bookLanguage" value="English">
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
    <script src="js/editBook_form.js"></script>

  </body>

  </html>