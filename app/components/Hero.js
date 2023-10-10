export function Hero (){
    const $hero = document.createElement("div");
    $hero.classList.add("hero");

    $hero.innerHTML = `
    <div class="hero_text">
        <div class="hero_title">
            Problemas de bases de datos
        </div>
        <div class="hero_subtitle">
            Solucionario no oficial de ejercicios del libro creado con fines educativos.
        </div>
    </div>
    <div class="hero_book">
        <img class="hero_bkimg" src="https://loremflickr.com/640/360" alt="">
    </div> 
    `;

    return $hero;
}