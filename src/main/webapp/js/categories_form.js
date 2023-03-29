var cont = "";
$(document).ready(function () {

    //check if there is parameter in url
    // if (window.location.search.includes("name")) {
    //     const div = document.getElementById('paginator');
    //     div.style.display = 'none';
    // }



    $("#search-btn").click(function () {
        var formData = $("#book-search-form").serialize();
        $.ajax({
            type: "POST",
            url: "shop",
            data: formData,
            success: function (result, textStatus, xhr) {
                //hide paginator 
                // const div = document.getElementById('paginator');
                // div.style.display = 'none';
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
                                        <a href="shop?page=${i}">
                                        ${i}
                                        </a>
                                    </li> `
                }
                $("#ulPaginator").html(contentLI);
            }
        });
    });
});
// var contentLI = "";
// fetch('shop')
//     .then(response => response.json())
//     .then(data => {
//         // Access the totalPages property of the response JSON
//         const totalPages = data.totalPages;
//     });
// for (var i = 1; i < totalPages; i++) {
//     contentLI += `  <li>
//                             <a href="shop?page=${i}">
//                             ${i}
//                             </a>
//                         </li> `
// }
// $("#ulPaginator").html(contentLI);
// const pageLinks = document.querySelectorAll('.paginator li a');

// pageLinks.forEach(link => {
//   link.addEventListener('click', e => {
//     e.preventDefault();
//     pageLinks.forEach(link => link.classList.remove('active'));
//     e.target.classList.add('active');
//   });
// });
