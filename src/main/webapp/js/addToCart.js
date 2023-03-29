const addToCartForm = document.querySelector('.cart');

addToCartForm.addEventListener('submit', (event) => {
    console.log("Trying to adddddd");
    event.preventDefault();

    const quantityInput = addToCartForm.querySelector('input[name="quantity"]');

    const newQuantity = parseInt(quantityInput.value);

    const cartItem = {
        userId: null,
        quantity: newQuantity,
        book: book
    };
    if (loggedin) {
        $.ajax({
            url: "/bookiebazaar/add-to-cart",
            type: "POST",
            data: {quantity: newQuantity, bookId: cartItem.book.id},
            success: function (response) {
                console.log(response);
                $('.addToCartMsg').text(response.item.quantity+" item of "+cartItem.book.name+" available in cart");
            },
            error: function (xhr, status, error) {
                console.error(error);
                $('.addToCartMsg').text("Failed, Please try again");
            }
        });
    } else {
        console.log("Adding to local");
        let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
        let existingItemIndex = cartItems.findIndex(item => item.book.id === cartItem.book.id);
        if (existingItemIndex != -1) {
            if (newQuantity+cartItems[existingItemIndex].quantity <= cartItems[existingItemIndex].book.quantity) {
                cartItems[existingItemIndex].quantity += newQuantity;
            }else {
                cartItems[existingItemIndex].quantity = cartItems[existingItemIndex].book.quantity;
            }
            localStorage.setItem('cartItems', JSON.stringify(cartItems));
            $('.addToCartMsg').text(cartItems[existingItemIndex].quantity+" item of "+cartItems[existingItemIndex].book.name+" available in cart");
        } else {
            console.log("item not found");
            if(cartItem.quantity > cartItem.book.quantity){
                cartItem.quantity = cartItem.book.quantity;
            }
            cartItems.push(cartItem);
            console.log(cartItems);
            localStorage.setItem('cartItems', JSON.stringify(cartItems));
            $('.addToCartMsg').text(cartItem.quantity+" item of "+cartItem.book.name+" available in cart");
        }
    }
});