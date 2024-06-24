// Скрипт для получения пользователя, чтобы отобразить в строках редактирования его данные

$(document).ready(async function () {
    const response = await $.ajax({
        url: '/user/' + window.location.pathname.split('/')[3],
        method: 'GET',
        dataType: 'json'
    });
    const user = response.message;
    document.getElementById('login').innerText = user.login
    document.getElementById('name').innerText = user.name
    document.getElementById('lastname').innerText = user.lastname
    document.getElementById('gender').innerText = user.gender
    document.getElementById('birthdate').innerText = user.birthdate
});
