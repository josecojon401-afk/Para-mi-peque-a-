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

/*====================================================
        PARTÍCULAS DELUXE
====================================================*/

const particleContainer = document.getElementById("particles");

function createGoldenParticle(){

    if(!particleContainer) return;

    const p = document.createElement("div");

    const size = Math.random()*5 + 2;

    p.style.position = "absolute";
    p.style.width = size + "px";
    p.style.height = size + "px";
    p.style.borderRadius = "50%";

    p.style.background =
        "radial-gradient(circle,#FFF7CC,#D4AF37)";

    p.style.left = Math.random()*100 + "vw";
    p.style.top = "105vh";

    p.style.opacity = Math.random();

    p.style.boxShadow =
        "0 0 12px rgba(212,175,55,.8)";

    particleContainer.appendChild(p);

    const duration = 6000 + Math.random()*5000;

    p.animate([

        {
            transform:"translateY(0) scale(1)",
            opacity:.9
        },

        {
            transform:
            `translate(${(Math.random()-.5)*150}px,-120vh)
             scale(.2)`,

            opacity:0
        }

    ],{

        duration:duration,

        easing:"linear"

    });

    setTimeout(()=>{

        p.remove();

    },duration);

}

setInterval(createGoldenParticle,220);


/*====================================================
        PÉTALOS
====================================================*/

function createPetal(){

    const petal = document.createElement("div");

    petal.innerHTML="❀";

    petal.style.position="fixed";

    petal.style.left=
    Math.random()*window.innerWidth+"px";

    petal.style.top="-40px";

    petal.style.fontSize=
    (18+Math.random()*12)+"px";

    petal.style.color="#C72D5A";

    petal.style.opacity=".8";

    petal.style.pointerEvents="none";

    document.body.appendChild(petal);

    const duration=
    9000+Math.random()*4000;

    petal.animate([

        {

            transform:
            "translateY(-40px) rotate(0deg)"

        },

        {

            transform:
            `translate(${(Math.random()-.5)*220}px,
            ${window.innerHeight+120}px)

            rotate(${360+Math.random()*360}deg)`

        }

    ],{

        duration:duration,

        easing:"linear"

    });

    setTimeout(()=>{

        petal.remove();

    },duration);

}

setInterval(createPetal,2600);


/*====================================================
      DESTELLOS DE LA FOTOGRAFÍA
====================================================*/

function sparklePhoto(){

    const photo=document.querySelector(".photo");

    if(!photo) return;

    photo.animate([

        {

            boxShadow:
            "0 0 20px rgba(212,175,55,.3)"

        },

        {

            boxShadow:
            "0 0 45px rgba(255,230,140,.9)"

        },

        {

            boxShadow:
            "0 0 20px rgba(212,175,55,.3)"

        }

    ],{

        duration:3500,

        iterations:1

    });

}

setInterval(sparklePhoto,5000);


/*====================================================
      CORAZÓN FINAL
====================================================*/

function pulseHeart(){

    const heart=document.querySelector(".heart");

    if(!heart) return;

    heart.animate([

        {

            transform:"scale(1)"

        },

        {

            transform:"scale(1.18)"

        },

        {

            transform:"scale(1)"

        }

    ],{

        duration:1400,

        iterations:1

    });

}

setInterval(pulseHeart,2000);


/*====================================================
      TRANSICIÓN AL FINAL
====================================================*/

const originalShowScreen = showScreen;

showScreen = function(screen){

    document.body.animate([

        {

            opacity:.97,

            filter:"blur(0px)"

        },

        {

            opacity:1,

            filter:"blur(1px)"

        },

        {

            opacity:1,

            filter:"blur(0px)"

        }

    ],{

        duration:650

    });

    originalShowScreen(screen);

};
