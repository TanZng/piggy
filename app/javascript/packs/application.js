// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "chartkick/chart.js"
import "@fortawesome/fontawesome-free/css/all"

require("stylesheets/application.scss")

Rails.start()
Turbolinks.start()
ActiveStorage.start()


if (localStorage.theme === 'dark' || (!'theme' in localStorage && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
    document.querySelector('html').classList.add('dark')
} else if (localStorage.theme === 'dark') {
    document.querySelector('html').classList.add('dark')
}

window.openMobileMenu = () => {
    document.getElementById('mobile-menu').classList.toggle("hidden");
    document.getElementById('mobile-menu').classList.toggle("block");
    document.getElementById('open-movil-menu-icon').classList.toggle("hidden");
    document.getElementById('open-movil-menu-icon').classList.toggle("block");
    document.getElementById('close-movil-menu-icon').classList.toggle("hidden");
    document.getElementById('close-movil-menu-icon').classList.toggle("block");
}

window.addEventListener("turbolinks:load", () => {
    document.getElementById('switchTheme').addEventListener('click', () => {
        let htmlClasses = document.querySelector('html').classList;
        if(localStorage.theme === 'dark') {
            htmlClasses.remove('dark');
            localStorage.removeItem('theme')
        } else {
            htmlClasses.add('dark');
            localStorage.theme = 'dark';
        }
    });
});


