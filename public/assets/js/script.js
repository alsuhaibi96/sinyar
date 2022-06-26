

var barIcon=document.getElementById("bars");
var menubar=document.getElementById("navBar");
var header=document.getElementById("navBars");
var number_link=document.querySelectorAll("#number-link span");
var residential_landing=document.getElementById("residential_landing");
 // when the scroll is higher than 20 viewport height, add the sticky classs to the tag with a class navbar
 window.onscroll = () => {

     this.scrollY > 20? header.classList.add("sticky"): header.classList.remove("sticky");
 };
 //borger bar menu on click
barIcon.addEventListener("click",function(){
    menubar.classList.toggle("active");
});

number_link.forEach(n => n.addEventListener("click", ()=>{
    for (let i = 0; i < number_link.length; i++) {

        number_link[i].classList.remove("active");

    }

    if(n.textContent =="01"){
        residential_landing.style.removeProperty("background-image");
        residential_landing.style.setProperty("background-image","url(http://127.0.0.1:8000/assets/images/landing-img.jpg)","important");
        console.log(n.textContent);
    }
    if(n.textContent =="02"){
        residential_landing.style.removeProperty("background-image");
        residential_landing.style.setProperty("background-image","url(http://127.0.0.1:8000/assets/images/IMG-7549.jpg)","important");
        console.log(n.textContent);
    }
    if(n.textContent =="03"){
        residential_landing.style.removeProperty("background-image");
        residential_landing.style.setProperty("background-image","url(http://127.0.0.1:8000/assets/images/2.jpg)","important");

    }


    n.classList.add("active");
}));

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