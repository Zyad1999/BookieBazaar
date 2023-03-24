const form = document.querySelector('.form_contant');
const submitBtn = form.querySelector('button[type="submit"]');
const pform = document.querySelector('.password-form');
const psubmitBtn = pform.querySelector('button[type="submit"]');
console.log(pform);
let error;

function validateForm(e) {
    e.preventDefault();
    const phone = form.querySelector('input[name="phone"]');
    const job = form.querySelector('input[name="job"]');
    const country = form.querySelector('select[name="country"]');
    const city = form.querySelector('input[name="city"]');
    const street = form.querySelector('input[name="street"]');
    const building = form.querySelector('input[name="building"]');
    const credit = form.querySelector('input[name="credit"]');
    const birthdate = form.querySelector('input[name="birthdate"]');

    if (!phone.value || !/^01[0125][0-9]{8}$/.test(phone.value)) {
        error = 'Phone number is invalid.';
        showError();
        return;
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
pform.addEventListener('submit', validatePasswordForm);

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

function validatePasswordForm(e) {
    e.preventDefault();
    let er = null;
    var userPassword = pform.querySelector('input[name="userPassword"]').value;
    var newPassword = pform.querySelector('input[name="newPassword"]').value;
    var cNewPassword = pform.querySelector('input[name="cNewPassword"]').value;

    if(! userPassword){
        er = "Please enter old password";
    }

    if(!newPassword && er == null){
        er = "Please enter new password";
    }

    if(newPassword.length < 8 && er == null){
        er = "New password must be at least 8 characters long";
    }else if (cNewPassword != newPassword && er == null) {
        er = "Passwords must match";
    }

    if(er != null){
        const errorDivr = document.getElementById('password-error-message');
        if (errorDivr) {
            errorDivr.remove();
        }
        const errorDivm = document.createElement('div');
        errorDivm.id = 'password-error-message';
        errorDivm.style.color = 'red';
        errorDivm.style.marginBottom = '10px';
        errorDivm.textContent = er;
        errorDivm.classList.add('center');
        psubmitBtn.parentNode.parentNode.insertBefore(errorDivm, psubmitBtn.parentNode);
        return;
    }
    pform.submit();
}