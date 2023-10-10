export function Navbar(){
    const $navbar = document.createElement('nav');
    $navbar.classList.add("navbar");
    $navbar.innerHTML = `

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
                    <a class="menu_link" href="#/index">Índice</a>
                </li>
                <li class="menu_item">
                    <a class="menu_link" href="#/book">Libro</a>
                </li>
                <li class="menu_item">
                    <a class="menu_link" href="#/aboutsite">Sobre el sitio</a>
                </li>
                <li class="menu_item">
                <a class="menu_link" href="#/aboutme">Sobre Mi</a>
            </li>
            </ul>
        </div>`;

    
    const d = document;
    
    d.addEventListener("click", e => {

        const $btnHamburguer = d.getElementById("btn_hmg"),
        $btnClose = d.getElementById("btn_close"),
        $menu = d.querySelector(".menu");
        if(e.target.matches("#btn_hmg")){
            $btnHamburguer.style.display = "none";
            $btnClose.style.display = "block";
            $menu.classList.add("menu-active");
        }
        if(e.target.matches("#btn_close")){
            $btnClose.style.display = "none";
            $btnHamburguer.style.display = "block";
            $menu.classList.remove("menu-active");
        }
    });

    return $navbar;
}