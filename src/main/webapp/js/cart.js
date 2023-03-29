if (!loggedin) {
    const cartItems = JSON.parse(localStorage.getItem("cartItems"));
    const tableBody = document.querySelector("table tbody");
    var tot = 0;
    var er;
    console.log($('.cartError'));
    console.log()
    for (let i = 0; i < cartItems.length; i++) {
        const item = cartItems[i];
        if(item.book.quantity == 0){
            cartItems.splice(1,i);
            er = item.book.name + "  is out of stock.";
            $('.cartError').text(er);
            continue;
        }else if(item.quantity > item.book.quantity){
            item.quantity = item.book.quantity;
            er = "The available quantity of "+item.book.name
                +" is only "+item.book.quantity+" items";
            tot += item.book.price*item.book.quantity;
            $('.cartError').text(er);
        }else{
            tot += item.book.price*item.quantity;
        }
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
    console.log(tot);
    console.log($('.itemsTotal'));
    console.log($('.total'));
    $('.itemsTotal').text("$ "+tot);
    $('.total').text("$ "+(tot+5));
}

$(".quantity-input").on("change", function () {
    var tr = $(this).closest("tr");
    var newQuantity = $(this).val();
    var itemId = tr.data("item-id");
    var bookPrice = parseInt(tr.find(".book-price").text().substring(2));
    var totalPriceOld = parseInt(tr.find(".total_price").text().substring(2));
    var totalPriceNew = tr.find(".total_price");
    if (loggedin) {
        changeQuantityLoggedIn(tr, newQuantity, itemId, bookPrice, totalPriceNew, totalPriceOld);
    }else {
        changeQuantityLocal(tr, newQuantity, itemId, bookPrice, totalPriceNew, totalPriceOld);
    }
});

$(".btnmain").on("click", function () {
    var itemId = $(this).closest("tr").data("item-id");
    var tr = $(this).closest("tr");
    var totalPriceOld = parseInt(tr.find(".total_price").text().substring(2));
    if (loggedin) {
        deleteItemLoggedIn(tr, itemId, totalPriceOld);
    }else{
        deleteItemLocal(tr, itemId, totalPriceOld);
    }
});

function changeQuantityLoggedIn(tr, newQuantity, itemId, bookPrice, totalPriceNew, totalPriceOld) {
    var orderTotal = parseInt($('.itemsTotal').text().substring(2));
    $.ajax({
        url: "/bookiebazaar/update-cart",
        type: "POST",
        data: {bookId: itemId, newQuantity: newQuantity},
        success: function (data) {
            if (data.updated) {
                if (newQuantity <= 0) {
                    tr.remove();
                    var newTotal = orderTotal-totalPriceOld;
                    $('.itemsTotal').text("$ "+newTotal);
                    $('.total').text("$ "+(newTotal+5));
                } else {
                    var totalPrice = bookPrice * newQuantity;
                    totalPriceNew.text("$ " + totalPrice);
                    var newTotal = orderTotal-totalPriceOld+totalPrice;
                    $('.itemsTotal').text("$ "+newTotal);
                    $('.total').text("$ "+(newTotal+5));
                }
            }
        },
        error: function () {
            console.log("Error in ajax");
        }
    });
}

function changeQuantityLocal(tr, newQuantity, itemId, bookPrice, totalPriceNew, totalPriceOld) {
    var orderTotal = parseInt($('.itemsTotal').text().substring(2));
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    let existingItemIndex = cartItems.findIndex(item => item.book.id === itemId);
    if(newQuantity <= 0){
        tr.remove();
        cartItems.splice(1,existingItemIndex);
        var newTotal = orderTotal-totalPriceOld;
        $('.itemsTotal').text("$ "+newTotal);
        $('.total').text("$ "+(newTotal+5));
    }else {
        cartItems[existingItemIndex].quantity = newQuantity;
        localStorage.setItem('cartItems', JSON.stringify(cartItems));
        var totalPrice = bookPrice * newQuantity;
        totalPriceNew.text("$ " + totalPrice);
        var newTotal = orderTotal-totalPriceOld+totalPrice;
        $('.itemsTotal').text("$ "+newTotal);
        $('.total').text("$ "+(newTotal+5));
    }
}

function deleteItemLoggedIn(tr, itemId, totalPriceOld) {
    var orderTotal = parseInt($('.itemsTotal').text().substring(2));
    $.ajax({
        url: "/bookiebazaar/update-cart",
        type: "POST",
        data: {bookId: itemId},
        success: function (response) {
            if (response.deleted) {
                tr.remove();
                var newTotal = orderTotal-totalPriceOld;
                $('.itemsTotal').text("$ "+newTotal);
                $('.total').text("$ "+(newTotal+5));
            }
        }
    });
}

function deleteItemLocal(tr, itemId, totalPriceOld) {
    var orderTotal = parseInt($('.itemsTotal').text().substring(2));
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    let existingItemIndex = cartItems.findIndex(item => item.book.id === itemId);
    cartItems.splice(existingItemIndex, 1);
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    tr.remove();
    var newTotal = orderTotal-totalPriceOld;
    $('.itemsTotal').text("$ "+newTotal);
    $('.total').text("$ "+(newTotal+5));
}