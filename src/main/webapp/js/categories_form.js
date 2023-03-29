var cont = "";
var formData="" ;
$(document).ready(function () {

    $("#search-btn").click(function () {
        formData = $("#book-search-form").serialize();
        ajaxCall(formData);
    });
});
function searchPage(i){
    ajaxCall(formData+"&page="+i);
    
}

function ajaxCall(formData){
    $.ajax({
        type: "POST",
        url: "shop",
        data: formData,
        success: function (result, textStatus, xhr) {

            var ulPaginator = document.getElementById('ulPaginator');
            var content = "";
            cont = result;
            var listOfBooks = result;
            for (var i = 0; i < listOfBooks.length; i++) {
                content += `
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
                    <div class="product_list">
                        <div class="product_img"> <img width="260" height="300" src="images/book_images/${listOfBooks[i].img}" alt="">
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

            const totalPages = xhr.getResponseHeader('X-Total-Pages');
            var contentLI = "";
            for (var i = 1; i <= totalPages; i++) {
                contentLI += `  <li>
                                    <a onClick="searchPage(${i})">
                                    ${i}
                                    </a>
                                </li> `
            }
            $("#ulPaginator").html(contentLI);
        }
    });
}

