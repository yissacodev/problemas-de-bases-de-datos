/*api es el nombre que yo le puse*/



export async function Router() {
    const d = document,
        w = window;
    //     $main = d.getElementById("main");

    const root = d.getElementById("root");
    const $hero = d.querySelector(".hero");
    let { hash } = location;

    // console.log(hash);

    // $main.innerHTML = null;

    if (!hash || hash === "#/") {
        /*Aqui se espera hasta hacer la peticion ajax mientras muestra el loader
        Cuando termina el loader se quita
        */
        const $div = d.createElement("div");
        $div.innerHTML = "Hola";
        console.log($div)
        root.appendChild($div);
        
    } else if (hash.includes("#/search")) {
        


    } else if (hash === "#/index") {
        console.log("Yes", $hero);
        $hero.parentNode.removeChild($hero);
        
        
        // $main.innerHTML = `<h2>Seccion de Contacto</h2>`;
    } else {
        

    }

    /*El loader espera a que el contenido cargue y luego se quita*/
    // d.querySelector(".loader").style.display = "none";

    
}
