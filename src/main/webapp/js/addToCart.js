
const addToCartForm = document.querySelector('.cart');

addToCartForm.addEventListener('submit', (event) => {
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
            data: {quantity:newQuantity,bookId:cartItem.book.id},
            success: function (response) {
                console.log(response);
            },
            error: function (xhr, status, error) {
                console.error(error);
            }
        });
    } else {
        let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
        let existingItemIndex = cartItems.findIndex(item => item.book.id === cartItem.book.id);
        if (existingItemIndex != -1){
            cartItems[existingItemIndex].quantity += newQuantity;
            localStorage.setItem('cartItems', JSON.stringify(cartItems));
        }else {
            cartItems.push(cartItem);
            localStorage.setItem('cartItems', JSON.stringify(cartItems));
        }
    }
});