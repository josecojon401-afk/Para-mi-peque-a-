/* ==========================================
   PARA TI - EDICIÓN DELUXE
   script.js
========================================== */

const PASSWORD = "Ayuda";

// Pantallas
const screens = {
    welcome: document.getElementById("welcome"),
    login: document.getElementById("login"),
    book: document.getElementById("book"),
    final: document.getElementById("final")
};

// Botones
const startBtn = document.getElementById("startBtn");
const openBtn = document.getElementById("openBtn");
const restartBtn = document.getElementById("restart");

// Contraseña
const passwordInput = document.getElementById("password");
const error = document.getElementById("error");

// Música
const music = document.getElementById("music");

// Libro
const pages = document.querySelectorAll(".page");
const nextButtons = document.querySelectorAll(".next");

let currentPage = 0;

/*-----------------------------------
   Mostrar pantalla
-----------------------------------*/

function showScreen(screen){

    Object.values(screens).forEach(item=>{

        item.classList.remove("active");

    });

    screen.classList.add("active");

}

/*-----------------------------------
   Comenzar
-----------------------------------*/

startBtn.addEventListener("click",()=>{

    showScreen(screens.login);

});

/*-----------------------------------
   Abrir carta
-----------------------------------*/

openBtn.addEventListener("click",()=>{

    const value = passwordInput.value.trim();

    if(value===PASSWORD){

        error.textContent="";

        showScreen(screens.book);

        music.play().catch(()=>{

            console.log("La música comenzará cuando el usuario interactúe.");

        });

    }

    else{

        error.textContent="Contraseña incorrecta.";

        passwordInput.value="";

        passwordInput.focus();

    }

});

/*-----------------------------------
   Enter en contraseña
-----------------------------------*/

passwordInput.addEventListener("keypress",(e)=>{

    if(e.key==="Enter"){

        openBtn.click();

    }

});

/*-----------------------------------
   Mostrar página
-----------------------------------*/

function showPage(index){

    pages.forEach(page=>{

        page.classList.remove("active");

    });

    pages[index].classList.add("active");

}

/*-----------------------------------
   Botones siguiente
-----------------------------------*/

nextButtons.forEach(button=>{

    button.addEventListener("click",()=>{

        currentPage++;

        if(currentPage<pages.length){

            showPage(currentPage);

        }

        else{

            showScreen(screens.final);

        }

    });

});

/*-----------------------------------
   Reiniciar lectura
-----------------------------------*/

restartBtn.addEventListener("click",()=>{

    currentPage=0;

    showPage(0);

    showScreen(screens.welcome);

});

/*-----------------------------------
   Partículas doradas
-----------------------------------*/

const particles=document.getElementById("particles");

function createParticle(){

    const particle=document.createElement("span");

    particle.style.position="absolute";

    particle.style.width="4px";

    particle.style.height="4px";

    particle.style.borderRadius="50%";

    particle.style.background="#D4AF37";

    particle.style.left=Math.random()*100+"vw";

    particle.style.bottom="-10px";

    particle.style.opacity=Math.random();

    particle.style.boxShadow="0 0 10px #D4AF37";

    particle.style.animation="floatParticle linear";

    particle.style.animationDuration=(5+Math.random()*5)+"s";

    particles.appendChild(particle);

    setTimeout(()=>{

        particle.remove();

    },10000);

}

setInterval(createParticle,250);

/*-----------------------------------
   Animación de partículas
-----------------------------------*/

const style=document.createElement("style");

style.innerHTML=`

@keyframes floatParticle{

0%{

transform:translateY(0);

opacity:0;

}

20%{

opacity:1;

}

100%{

transform:translateY(-110vh);

opacity:0;

}

}

`;

document.head.appendChild(style);
/*=============================
   Destellos dorados
=============================*/

setInterval(()=>{

    const star=document.createElement("div");

    star.style.position="fixed";

    star.style.width="3px";

    star.style.height="3px";

    star.style.borderRadius="50%";

    star.style.background="#FFD86B";

    star.style.left=Math.random()*window.innerWidth+"px";

    star.style.top=Math.random()*window.innerHeight+"px";

    star.style.boxShadow="0 0 15px #FFD86B";

    star.style.opacity=".9";

    star.style.pointerEvents="none";

    star.style.transition="all 4s linear";

    document.body.appendChild(star);

    setTimeout(()=>{

        star.style.transform="translateY(-80px)";

        star.style.opacity="0";

    },100);

    setTimeout(()=>{

        star.remove();

    },4200);

},350);
