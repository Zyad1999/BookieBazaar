if (!loggedin) {
    const cartItems = JSON.parse(localStorage.getItem("cartItems"));
    const tableBody = document.querySelector("table tbody");
    for (let i = 0; i < cartItems.length; i++) {
        const item = cartItems[i];
        const row = document.createElement("tr");
        row.dataset.itemId = item.book.id;
        row.innerHTML = `
    <td class="col-sm-8 col-md-6">
      <div class="media"> <a class="thumbnail pull-left" href="#">
          <img class="media-object" src="images/book_images/${item.book.img}" alt="#"></a>
        <div class="media-body">
          <h4 class="media-heading"><a href="#">${item.book.name}</a></h4>
          <span>Status: </span><span class="text-success">In Stock</span>
        </div>
      </div>
    </td>
    <td class="col-sm-1 col-md-1" style="text-align: center">
      <input max="${item.book.quantity}" min="0" class="price_table form-control quantity-input" value="${item.quantity}" type="number">
    </td>
    <td class="col-sm-1 col-md-1 text-center">
      <p class="price_table book-price">$ ${item.book.price}</p>
    </td>
    <td class="col-sm-1 col-md-1 text-center">
      <p class="price_table total_price">$ ${item.book.price * item.quantity}</p>
    </td>
    <td class="col-sm-1 col-md-1 btnmain"><button type="button" class="bt_main"><i class="fa fa-trash"></i>
        Remove</button>
    </td>
  `;
        tableBody.appendChild(row);
    }
}

$(".quantity-input").on("change", function () {
    var tr = $(this).closest("tr");
    var newQuantity = $(this).val();
    var itemId = tr.data("item-id");
    var bookPrice = parseInt(tr.find(".book-price").text().substring(2));
    var totalPriceNew = tr.find(".total_price");
    if (loggedin) {
        changeQuantityLoggedIn(tr, newQuantity, itemId, bookPrice, totalPriceNew);
    }else {
        changeQuantityLocal(tr, newQuantity, itemId, bookPrice, totalPriceNew);
    }
});

$(".btnmain").on("click", function () {
    var itemId = $(this).closest("tr").data("item-id");
    var tr = $(this).closest("tr");
    if (loggedin) {
        deleteItemLoggedIn(tr, itemId);
    }else{
        deleteItemLocal(tr, itemId);
    }
});

function changeQuantityLoggedIn(tr, newQuantity, itemId, bookPrice, totalPriceNew) {
    $.ajax({
        url: "/bookiebazaar/update-cart",
        type: "POST",
        data: {bookId: itemId, newQuantity: newQuantity},
        success: function (data) {
            if (data.updated) {
                if (newQuantity <= 0) {
                    tr.remove();
                } else {
                    var totalPrice = bookPrice * newQuantity;
                    totalPriceNew.text("$ " + totalPrice);
                }
            }
        },
        error: function () {
            console.log("Error in ajax");
        }
    });
}

function changeQuantityLocal(tr, newQuantity, itemId, bookPrice, totalPriceNew) {
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    let existingItemIndex = cartItems.findIndex(item => item.book.id === itemId);
    cartItems[existingItemIndex].quantity = newQuantity;
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    var totalPrice = bookPrice * newQuantity;
    totalPriceNew.text("$ " + totalPrice);
}

function deleteItemLoggedIn(tr, itemId) {
    $.ajax({
        url: "/bookiebazaar/update-cart",
        type: "POST",
        data: {bookId: itemId},
        success: function (response) {
            if (response.deleted) {
                tr.remove();
            }
        }
    });
}

function deleteItemLocal(tr, itemId) {
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    let existingItemIndex = cartItems.findIndex(item => item.book.id === itemId);
    cartItems.splice(existingItemIndex, 1);
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    tr.remove();
}