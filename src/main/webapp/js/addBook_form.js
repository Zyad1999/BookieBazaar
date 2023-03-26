const form = document.querySelector('.form_contant');
const submitBtn = form.querySelector('button[type="submit"]');
let error;
function validateForm(e) {
    e.preventDefault();
    const bookName   = form.querySelector('input[name="bookName"]');
    const bookAuthor = form.querySelector('input[name="bookAuthor"]');
    const bookCategoty = form.querySelector('input[name="bookCategoty"]');
    const bookQuantity = form.querySelector('input[name="bookQuantity"]');
    const bookPrice = form.querySelector('input[name="bookPrice"]');
    const bookPages = form.querySelector('input[name="bookPages"]');
    const bookDescription  = document.getElementById("bookDescription");
    const bookLanguage = form.querySelector('input[name="bookLanguage"]');
    const bookImage = form.querySelector('input[name="bookImage"]');



    if (!bookName.value || !/^[A-Za-z\s]*$/.test(bookName.value)) {
        error = 'book name is invalid(letters and spaces only).';
        showError();
        return;
    }

    if (!bookAuthor.value || !/^[A-Za-z\s]*$/.test(bookAuthor.value)) {
        error = 'book author is invalid(letters and spaces only)';
        showError();
        return;
    }
    if (!bookCategoty.value || !/^[A-Za-z\s]*$/.test(bookCategoty.value)) {
        error = 'book category is invalid(letters and spaces only)';
        showError();
        return;
    }

    if (!bookQuantity.value || isNaN(bookQuantity.value)) {
        error = 'book quantity is invalid(numbers only)';
        showError();
        return;
    }

    if (!bookPrice.value || isNaN(bookPrice.value)) {
        error = 'book price is invalid(numbers only)';
        showError();
        return;
    }

    if (!bookPages.value || isNaN(bookPages.value)) {
        error = 'number of pages is invalid(numbers only)';
        showError();
        return;
    }

  
    if (!bookLanguage.checked) {
        error = 'book language is invalid';
        showError();
        return;
    }
       if (bookDescription.value==null || bookDescription.value=="") {
         error = 'book description is required';
         showError();
         return;
     }


    if (!bookImage.value) {
        error = 'book image is required';
        showError();
        return;
    }

    form.submit();
}

form.addEventListener('submit', validateForm);

function showError() {
    const errorDive = document.getElementById('error-message');
    if (errorDive) {
        errorDive.remove();
    }
    const errorDiv = document.createElement('div');
    errorDiv.id = 'error-message';
    errorDiv.style.color = 'red';
    errorDiv.style.marginBottom = '10px';
    errorDiv.textContent = error;
    errorDiv.classList.add('center');
    submitBtn.parentNode.parentNode.insertBefore(errorDiv, submitBtn.parentNode);
}