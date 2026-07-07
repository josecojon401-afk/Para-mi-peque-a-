/* ==========================================
   PARA TI - EDICIÓN DELUXE
   style.css
========================================== */

:root{

    --gold:#D4AF37;
    --gold-light:#F8E39A;

    --wine:#7B1234;
    --wine-dark:#521024;

    --paper:#FDF9F3;

    --black:#090909;

    --white:#FFFFFF;

    --shadow:0 20px 60px rgba(0,0,0,.45);

}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{

    background:
    radial-gradient(circle at top,#38121F,#090909);

    font-family:"Cormorant Garamond",serif;

    color:var(--paper);

    overflow:hidden;

}

/* ---------- Pantallas ---------- */

.screen{

    display:none;

    width:100vw;
    height:100vh;

    justify-content:center;
    align-items:center;

    padding:30px;

    animation:fade .8s;

}

.screen.active{

    display:flex;

}

/* ---------- Tarjetas ---------- */

.card{

    width:min(700px,95%);

    padding:45px;

    border-radius:25px;

    background:rgba(255,255,255,.08);

    backdrop-filter:blur(18px);

    border:1px solid rgba(255,255,255,.15);

    text-align:center;

    box-shadow:var(--shadow);

}

/* ---------- Títulos ---------- */

h1{

    font-family:"Great Vibes",cursive;

    font-size:70px;

    color:var(--gold);

    margin-bottom:15px;

}

h2{

    font-family:"Cinzel",serif;

    font-size:26px;

    margin-bottom:20px;

    color:var(--paper);

}

.line{

    width:180px;

    height:2px;

    background:var(--gold);

    margin:25px auto;

}

p{

    font-size:24px;

    line-height:1.8;

    margin-bottom:25px;

}

/* ---------- Botones ---------- */

button{

padding:18px 40px;

font-size:19px;

border:none;

border-radius:50px;

background:

linear-gradient(

90deg,

#6E0F2C,

#8F1D42,

#B52D5A);

color:white;

cursor:pointer;

transition:.4s;

font-family:"Montserrat";

letter-spacing:1px;

box-shadow:

0 10px 30px rgba(0,0,0,.35);

}

button:hover{

transform:

translateY(-4px)

scale(1.02);

box-shadow:

0 0 30px rgba(212,175,55,.55);

}

button:hover{

    transform:translateY(-3px);

    background:var(--gold);

    color:#000;

    box-shadow:0 0 25px rgba(212,175,55,.5);

}

/* ---------- Campo contraseña ---------- */

input{

    width:100%;

    padding:16px;

    border:none;

    border-radius:12px;

    margin:20px 0;

    font-size:18px;

    text-align:center;

}

/* ---------- Libro ---------- */

.book{

    width:min(900px,95vw);

    min-height:600px;

    background:var(--paper);

    color:#2d2d2d;

    border-radius:18px;

    padding:60px;

    box-shadow:var(--shadow);

    position:relative;

    overflow:hidden;

}

.page{

    display:none;

    animation:page .6s;

}

.page.active{

    display:block;

}

.page h2{

    color:var(--wine);

}

.page p{

    color:#333;

    font-size:28px;

}

/* ---------- Foto ---------- */

.photo{

    width:250px;

    height:250px;

    object-fit:cover;

    border-radius:50%;

    border:6px solid var(--gold);

    margin:auto;

    margin-bottom:30px;

    box-shadow:0 0 35px rgba(212,175,55,.5);

}

/* ---------- Corazón ---------- */

.heart{

    font-size:80px;

    color:#ff4d6d;

    margin:25px 0;

    animation:heartbeat 1.6s infinite;

}

/* ---------- Partículas ---------- */

#particles{

    position:fixed;

    inset:0;

    pointer-events:none;

}

/* ---------- Animaciones ---------- */

@keyframes heartbeat{

0%{

transform:scale(1);

}

50%{

transform:scale(1.15);

}

100%{

transform:scale(1);

}

}

@keyframes fade{

from{

opacity:0;

}

to{

opacity:1;

}

}

@keyframes page{

from{

opacity:0;

transform:translateX(40px);

}

to{

opacity:1;

transform:translateX(0);

}

}

/* ---------- Responsive ---------- */

@media(max-width:768px){

h1{

font-size:52px;

}

h2{

font-size:22px;

}

p{

font-size:20px;

}

.book{

padding:35px;

}

.photo{

width:190px;

height:190px;

}

button{

width:100%;

}

}

/*==============================
PORTADA DELUXE
==============================*/

.deluxe{

    position:relative;

    overflow:hidden;

    animation:zoomFade 2s ease;

}

.light{

    position:fixed;

    width:700px;

    height:700px;

    border-radius:50%;

    background:radial-gradient(circle,
    rgba(255,214,120,.25),
    transparent 70%);

    left:50%;

    top:50%;

    transform:translate(-50%,-50%);

    animation:lightMove 8s ease-in-out infinite;

    pointer-events:none;

}

.gold-line{

    width:220px;

    height:3px;

    margin:25px auto;

    background:linear-gradient(
    90deg,
    transparent,
    #D4AF37,
    #FFF0B0,
    #D4AF37,
    transparent);

}

@keyframes zoomFade{

    from{

        opacity:0;

        transform:scale(.92);

    }

    to{

        opacity:1;

        transform:scale(1);

    }

}

@keyframes lightMove{

    0%{

        transform:translate(-50%,-50%) scale(1);

    }

    50%{

        transform:translate(-50%,-50%) scale(1.15);

    }

    100%{

        transform:translate(-50%,-50%) scale(1);

    }

}

/*==============================
  CORAZÓN DE CRISTAL
==============================*/

.crystal-heart{

    font-size:48px;

    color:#FFD6E8;

    text-shadow:
        0 0 10px rgba(255,255,255,.7),
        0 0 25px rgba(255,105,180,.6);

    margin-bottom:15px;

    animation:heartGlow 2.5s ease-in-out infinite;

}

@keyframes heartGlow{

    0%,100%{

        transform:scale(1);

        opacity:.9;

    }

    50%{

        transform:scale(1.15);

        opacity:1;

    }

}

/*==============================
  BORDE DORADO
==============================*/

.deluxe{

    border:2px solid rgba(212,175,55,.25);

    position:relative;

}

.deluxe::before{

    content:"";

    position:absolute;

    inset:-2px;

    border-radius:25px;

    padding:2px;

    background:linear-gradient(
        90deg,
        transparent,
        #D4AF37,
        #FFF2A8,
        #D4AF37,
        transparent
    );

    -webkit-mask:
        linear-gradient(#fff 0 0) content-box,
        linear-gradient(#fff 0 0);

    -webkit-mask-composite:xor;

    mask-composite:exclude;

    animation:borderFlow 6s linear infinite;

}

@keyframes borderFlow{

    from{

        filter:hue-rotate(0deg);

    }

    to{

        filter:hue-rotate(20deg);

    }

}

/*==============================
  BOTÓN
==============================*/

button{

    position:relative;

    overflow:hidden;

}

button::before{

    content:"";

    position:absolute;

    top:0;

    left:-120%;

    width:60%;

    height:100%;

    background:rgba(255,255,255,.35);

    transform:skewX(-25deg);

}

button:hover::before{

    animation:shine 1s;

}

@keyframes shine{

    to{

        left:140%;

    }

}
/*==========================
CORTINAS
==========================*/

#curtain{

position:fixed;

inset:0;

z-index:9999;

pointer-events:none;

}

.left-curtain,
.right-curtain{

position:absolute;

top:0;

width:50%;

height:100%;

background:

linear-gradient(

90deg,

#2D0713,

#5C1029,

#7B1234,

#5C1029,

#2D0713

);

box-shadow:

inset 0 0 80px rgba(0,0,0,.6);

}

.left-curtain{

left:0;

animation:

openLeft 3.8s ease forwards;

}

.right-curtain{

right:0;

animation:

openRight 3.8s ease forwards;

}

@keyframes openLeft{

0%{

transform:translateX(0);

}

100%{

transform:translateX(-105%);

}

}

@keyframes openRight{

0%{

transform:translateX(0);

}

100%{

transform:translateX(105%);

}

}
body::before{

content:"";

position:fixed;

left:50%;

top:50%;

width:900px;

height:900px;

transform:

translate(-50%,-50%);

border-radius:50%;

background:

radial-gradient(circle,

rgba(255,220,120,.18),

transparent 70%);

animation:

lightPulse 6s ease infinite;

pointer-events:none;

}

@keyframes lightPulse{

0%{

transform:

translate(-50%,-50%)

scale(1);

}

50%{

transform:

translate(-50%,-50%)

scale(1.2);

}

100%{

transform:

translate(-50%,-50%)

scale(1);

}

}
body::before{

content:"";

position:fixed;

left:50%;

top:50%;

width:900px;

height:900px;

transform:

translate(-50%,-50%);

border-radius:50%;

background:

radial-gradient(circle,

rgba(255,220,120,.18),

transparent 70%);

animation:

lightPulse 6s ease infinite;

pointer-events:none;

}

@keyframes lightPulse{

0%{

transform:

translate(-50%,-50%)

scale(1);

}

50%{

transform:

translate(-50%,-50%)

scale(1.2);

}

100%{

transform:

translate(-50%,-50%)

scale(1);

}

}
