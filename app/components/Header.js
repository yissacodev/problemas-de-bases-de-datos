import { Navbar } from "./Navbar.js";
import { Hero } from "./Hero.js";

export function Header(){
    const $header = document.createElement("header");
    $header.classList.add("header");

    $header.appendChild(Navbar());
    $header.appendChild(Hero());

    return $header;
}