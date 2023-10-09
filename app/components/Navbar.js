export function Navbar(){
    const $navbar = document.createElement('nav');
    $navbar.innerHTML = `
    <nav class="navbar">
        <a href="#" class="logo">
            <img src="app/assets/img/logo.png" alt="" class="logo_img">
        </a>
        <div class="menu_icons">
            <i class="bi bi-list menu_hmg_icon" id="btn_hmg"></i>
            <i class="bi bi-x menu_close_icon" id="btn_close"></i>                
        </div>
        <div class="menu">
            <ul class="menu_list">
                <li class="menu_item">
                    <a class="menu_link" href="#">Inicio</a>
                </li>
                <li class="menu_item">
                    <a class="menu_link" href="#">Índice</a>
                </li>
                <li class="menu_item">
                    <a class="menu_link" href="#">Sobre el libro</a>
                </li>
                <li class="menu_item">
                    <a class="menu_link" href="#">Sobre el sitio</a>
                </li>
            </ul>
        </div>
    </nav>`;


    const d = document;

    d.addEventListener("click", e => {

        const $btnHamburguer = d.getElementById("btn_hmg"),
        $btnClose = d.getElementById("btn_close");

        if(e.target.matches("#btn_hmg")){
            $btnHamburguer.style.display = "none";
            $btnClose.style.display = "block";
        }
        if(e.target.matches("#btn_close")){
            $btnClose.style.display = "none";
            $btnHamburguer.style.display = "block";
        }
    });
    return $navbar;
}