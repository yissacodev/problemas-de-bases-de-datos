export function Exercises(){
    const $exercises = document.createElement("section");
    $exercises.classList.add("exercises");

    $exercises.innerHTML = `
    <div class="exercises-header">
        <h2>ïndice de ejercicios del libro</h2>
    </div>
    <div>
        <div>Capitulo 1</div>
        <p>Dentro de cada capitulo están los ejericios, cada uno tiene su enunciado, modelos y código</p>
    </div>
    `;

    return $exercises;
}