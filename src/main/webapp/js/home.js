function addCartItemToDB(bookId, quantity) {
    $.ajax({
        url: "/bookiebazaar/add-to-cart",
        type: "POST",
        data: {quantity:quantity,bookId:bookId}
    });
}
window.onload = function (){
    if(loggedin&& localStorage.getItem("cartItems") != null
        && localStorage.getItem("cartItems").length > 0){
        const cartItems = JSON.parse(localStorage.getItem("cartItems"));
        for (let i = 0; i < cartItems.length; i++) {
            addCartItemToDB(cartItems[i].book.id, cartItems[i].quantity)
        }
        localStorage.setItem('cartItems',JSON.stringify([]));
    }
}