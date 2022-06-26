var barIcon = document.getElementById("bars");
var menubar = document.getElementById("navBar");
barIcon.addEventListener("click", function() {
    menubar.classList.toggle("active");
});

var swiper = new Swiper(".swiper", {
    // Optional parameters
    effect: "flip",
    grabCursor: true,
    // If we need pagination
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },

    // Navigation arrows
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

//lnaguage caption changing

function changeCaption(variable) {

}