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
                      <th class="text-center">Admin</th>
                      <th class="text-center">Admin</th>

                    </tr>
                  </thead>

                  <tbody>
                    <c:forEach items="${UserDto}" var="user">

                      <tr>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table">${user.userName}</p>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table">${user.email}</p>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table">${user.job}</p>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table">${user.phoneNumber}</p>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table">${user.birthDate}</p>
                        </td>

                          <td class="col-sm-1 col-md-1 text-center">
                          <p class="price_table">Yes</p>
                        </td>

                        <!-- <td class="col-sm-1 col-md-1"><button type="button" class="bt_main">Profile</button></td> -->
                        <td class="col-sm-1 col-md-1">
                           <button type="button"  onclick="location.href='makeAdminController?userId=${user.id}'" class="bt_main"> Make Admin </button>
                           <!-- <a href="makeAdminController?userId=${user.id}">Make Admin</a> -->
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