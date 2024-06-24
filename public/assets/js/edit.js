$(document).ready(async function () {
    const response = await $.ajax({
        url: '/user/' + window.location.pathname.split('/')[3],
        method: 'GET',
        dataType: 'json'
    });
    const user = response.message;
    document.getElementById('name').setAttribute('value', user.name);
    document.getElementById('lastname').setAttribute('value', user.lastname);
    document.getElementById('login').setAttribute('value', user.login);
    document.getElementById(user.gender).setAttribute('selected', 'selected');
    document.getElementById('birthdate').setAttribute('value', user.birthdate);
    document.getElementById('password').setAttribute('value', user.password);
});