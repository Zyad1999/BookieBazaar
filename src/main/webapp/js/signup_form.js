const form = document.querySelector('.form_contant');
const submitBtn = form.querySelector('button[type="submit"]');
let error;
function validateForm(e) {
    e.preventDefault();
    const username = form.querySelector('input[name="username"]');
    const phone = form.querySelector('input[name="phone"]');
    const password = $("#password");
    const confirmPassword = $("#confirmPassword");
    const email = form.querySelector('input[name="email"]');
    const job = form.querySelector('input[name="job"]');
    const country = form.querySelector('select[name="country"]');
    const city = form.querySelector('input[name="city"]');
    const street = form.querySelector('input[name="street"]');
    const building = form.querySelector('input[name="building"]');
    const credit = form.querySelector('input[name="credit"]');
    const birthdate = form.querySelector('input[name="birthdate"]');

    if (!username.value || !isNaN(username.value) || username.value.length < 4) {
        error = 'Username is required.';
        showError();
        return;
    }else{
        let er = false;
        $.ajax({
            url: '/bookiebazaar/validate',
            type: 'POST',
            async:false,
            data: { username: username.value },
            success: function(data) {
                if (!data.available) {
                    error = 'Username is unavailable.';
                    er = true;
                }
            },
            error: function() {
                console.log("Error in ajax");
            }
        });
        if(er){
            showError();
            return;
        }
    }

    if (!phone.value || !/^01[0125][0-9]{8}$/.test(phone.value)) {
        error = 'Phone number is invalid.';
        showError();
        return;
    }

    if (!password.val() || password.val().length < 8) {
        error = 'Password must be at least 8 characters long.';
        showError();
        return;
    }else if(!confirmPassword.val() || password.val() !== confirmPassword.val()){
        error = 'Passwords do not match.';
        showError();
        return;
    }

    if (!email.value || !/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) {
        error = 'Email is required.';
        showError();
        return;
    }else{
        let er = false;
        $.ajax({
            url: '/bookiebazaar/validate',
            type: 'POST',
            async:false,
            data: { email: email.value },
            success: function(data) {
                if (!data.available) {
                    error = 'Email is already registered.';
                    er = true;
                }
            },
            error: function() {
                console.log("Error in ajax");
            }
        });
        if(er){
            showError();
            return;
        }
    }

    if (!job.value || !isNaN(job.value) || job.value.length < 4) {
        error = 'Job is required.';
        showError();
        return;
    }

    if (!country.value || !isNaN(country.value)) {
        error = 'Country is required.';
        showError();
        return;
    }

    if (!city.value || !isNaN(city.value)) {
        error = 'City is required.';
        showError();
        return;
    }

    if (!street.value || !isNaN(street.value)) {
        error = 'Street is required.';
        showError();
        return;
    }

    if (!building.value || isNaN(building.value)) {
        error = 'Building number is required.';
        showError();
        return;
    }

    if (!credit.value || isNaN(credit.value)) {
        error = 'Credit limit is required.';
        showError();
        return;
    }

    if (!birthdate.value || !isNaN(birthdate.value)) {
        error = 'Birthdate is required.';
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