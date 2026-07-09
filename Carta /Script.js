/*====================================================
        PARA TI - EDICIÓN DELUXE
        SCRIPT VERSION 2.1
====================================================*/


/*====================================================
                CONFIGURACIÓN
====================================================*/

const PASSWORD = "Ayuda";


/*====================================================
                ELEMENTOS
====================================================*/

const screens = {

    welcome: document.getElementById("welcome"),

    login: document.getElementById("login"),

    book: document.getElementById("book"),

    final: document.getElementById("final")

};

const startBtn = document.getElementById("startBtn");

const openBtn = document.getElementById("openBtn");

const restartBtn = document.getElementById("restart");

const passwordInput = document.getElementById("password");

const error = document.getElementById("error");

const music = document.getElementById("music");

const curtain = document.getElementById("curtain");

const pages = document.querySelectorAll(".page");

let currentPage = 0;


/*====================================================
            MOSTRAR PANTALLA
====================================================*/

function showScreen(screen){

    Object.values(screens).forEach(item=>{

        item.classList.remove("active");

    });

    screen.classList.add("active");

}


/*====================================================
        EFECTO CORTINAS
====================================================*/

window.addEventListener("load",()=>{

    setTimeout(()=>{

        curtain.style.transition="opacity 1.4s ease";

        curtain.style.opacity="0";

        setTimeout(()=>{

            curtain.remove();

        },1500);

    },3800);

});


/*====================================================
        BOTÓN COMENZAR
====================================================*/

startBtn.addEventListener("click",()=>{

    showScreen(screens.login);

});


/*====================================================
        VALIDAR CONTRASEÑA
====================================================*/

function validatePassword(){

    const value=passwordInput.value.trim();

    if(value===PASSWORD){

        error.textContent="";

        showScreen(screens.book);

        if(music){

            music.volume=0;

            music.play().catch(()=>{});

            fadeInMusic();

        }

    }

    else{

        error.textContent="Contraseña incorrecta";

        passwordInput.value="";

        passwordInput.focus();

    }

}


openBtn.addEventListener("click",validatePassword);


passwordInput.addEventListener("keydown",(e)=>{

    if(e.key==="Enter"){

        validatePassword();

    }

});


/*====================================================
        FADE IN MÚSICA
====================================================*/

function fadeInMusic(){

    let volume=0;

    const interval=setInterval(()=>{

        volume+=0.05;

        if(volume>=0.6){

            volume=0.6;

            clearInterval(interval);

        }

        music.volume=volume;

    },150);

}


/*====================================================
        MOSTRAR PRIMERA PÁGINA
====================================================*/

function showPage(index){

    pages.forEach(page=>{

        page.classList.remove("active");

    });

    if(pages[index]){

        pages[index].classList.add("active");

    }

}

showPage(0);
/*====================================================
            LIBRO INTERACTIVO
====================================================*/

// Botones "Siguiente"
const nextButtons = document.querySelectorAll(".next");

// Crear indicador de páginas
const pageIndicator = document.createElement("div");

pageIndicator.id = "pageIndicator";

pageIndicator.style.position = "absolute";
pageIndicator.style.bottom = "25px";
pageIndicator.style.left = "50%";
pageIndicator.style.transform = "translateX(-50%)";
pageIndicator.style.fontFamily = "Montserrat";
pageIndicator.style.fontSize = "15px";
pageIndicator.style.color = "#7B1234";
pageIndicator.style.opacity = ".75";

const book = document.querySelector(".book");

if(book){

    book.appendChild(pageIndicator);

}

// Actualizar indicador
function updateIndicator(){

    pageIndicator.textContent =
    `Página ${currentPage + 1} de ${pages.length}`;

}

// Mostrar página
function goToPage(index){

    if(index < 0 || index >= pages.length){

        return;

    }

    pages.forEach(page=>{

        page.classList.remove("active");

        page.style.animation = "none";

    });

    currentPage = index;

    requestAnimationFrame(()=>{

        pages[currentPage].classList.add("active");

        pages[currentPage].style.animation =
        "pageFade .7s ease";

    });

    updateIndicator();

}

// Primera actualización
updateIndicator();


//====================================================
// SIGUIENTE
//====================================================

nextButtons.forEach(button=>{

    button.addEventListener("click",()=>{

        if(currentPage < pages.length - 1){

            goToPage(currentPage + 1);

        }

        else{

            showScreen(screens.final);

        }

    });

});


//====================================================
// NAVEGACIÓN CON TECLADO
//====================================================

document.addEventListener("keydown",(e)=>{

    if(!screens.book.classList.contains("active")){

        return;

    }

    if(e.key==="ArrowRight"){

        if(currentPage < pages.length-1){

            goToPage(currentPage+1);

        }

    }

    if(e.key==="ArrowLeft"){

        if(currentPage>0){

            goToPage(currentPage-1);

        }

    }

});


//====================================================
// REINICIAR EXPERIENCIA
//====================================================

restartBtn.addEventListener("click",()=>{

    currentPage=0;

    goToPage(0);

    passwordInput.value="";

    error.textContent="";

    showScreen(screens.welcome);

});
