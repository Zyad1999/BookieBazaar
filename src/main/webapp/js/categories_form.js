var cont="";
$(document).ready(function () {
    $("#search-btn").click(function () {
        var formData = $("#book-search-form").serialize();
        $.ajax({
            type: "POST",
            url: "shop",
            data: formData,
            success: function (result) {
                var content="";
                 cont = result;
                var listOfBooks = result;
                for (var i = 0; i < listOfBooks.length; i++) {
                    content+=`
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
                        <div class="product_list">
                            <div class="product_img"> <img width="300" height="300" src="images/book_images/${listOfBooks[i].img}" alt="">
                            </div>
                            <div class="product_detail_btm">
                                <div class="center">
                                <h4><a href="book_detail.jsp?id=${listOfBooks[i].id}">
                                    ${listOfBooks[i].name}
                                    </a></h4>
                                </div>
                                <div class="product_price">
                                <p><span class="new_price">$ ${listOfBooks[i].price}</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    `;
                } 
                $("#booksContent").html(content);
            }
        });
    });
});