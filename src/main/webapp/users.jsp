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
    <title>Users</title>
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
                      <th class="text-center">User Name</th>
                      <th class="text-center">Email</th>
                      <th class="text-center">Job</th>
                      <th class="text-center">Phone Number</th>
                      <th class="text-center">Birth Date</th>
                      <th class="text-center">Show Profile</th>
                      <th class="text-center">Admin</th>

                    </tr>
                  </thead>

                  <tbody>
                    

                    <c:forEach items="${UserDto}" var="usersData">
                        <c:if test="${usersData.id ne sessionScope.currentUser.id}">
                          <tr>
                            <td class="col-sm-1 col-md-1 text-center">
                              <p class="price_table">${usersData.userName}</p>
                            </td>
                            <td class="col-sm-1 col-md-1 text-center">
                              <p class="price_table">${usersData.email}</p>
                            </td>
                            <td class="col-sm-1 col-md-1 text-center">
                              <p class="price_table">${usersData.job}</p>
                            </td>
                            <td class="col-sm-1 col-md-1 text-center">
                              <p class="price_table">${usersData.phoneNumber}</p>
                            </td>
                            <td class="col-sm-1 col-md-1 text-center">
                              <p class="price_table">${usersData.birthDate}</p>
                            </td>
                            <td class="col-sm-1 col-md-1">
                              <button type="button" onclick="location.href='profile?id=${usersData.id}'"
                                class="bt_main"> Show Profile </button>
                            </td>
                            <c:if test="${usersData.isAdmin eq true}">
    
                              <td class="col-sm-1 col-md-1">
                                <button type="button" onclick="location.href='makeAdminController?userId=${usersData.id}'"
                                  class="bt_main"> Remove Admin </button>
                                <!-- <a href="makeAdminController?userId=${user.id}">Make Admin</a> -->
                              </td>
                            </c:if>
    
                            <c:if test="${usersData.isAdmin eq false}">
                            
                              <td class="col-sm-1 col-md-1">
                                <button type="button" onclick="location.href='makeAdminController?userId=${usersData.id}'"
                                  class="bt_main"> Make Admin </button>
                                <!-- <a href="makeAdminController?userId=${user.id}">Make Admin</a> -->
                              </td>
                            </c:if>
    
                            <!-- <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td> -->
    
                          </tr>
                        </c:if>

                   
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