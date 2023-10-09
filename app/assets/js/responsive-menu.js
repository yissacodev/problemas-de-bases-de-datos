const $menu = document.querySelector(".menu");
const $btnHamburguer = document.getElementById("btn_hmg");
const $btnClose = document.getElementById("btn_close");


console.log($menu);
$btnHamburguer.onclick = () => {
    $btnHamburguer.style.display = 'none';
}
