/*====================================================
    PARA TI - EDICIÓN DELUXE
    VERSION 2.1
====================================================*/


/*==========================
    VARIABLES
==========================*/

:root{

    --gold:#D4AF37;
    --gold-light:#F6E7A8;

    --wine:#7B1234;
    --wine-dark:#4D0D21;

    --paper:#FDF9F2;

    --white:#FFFFFF;

    --text:#2C2C2C;

    --shadow:
    0 20px 60px rgba(0,0,0,.45);

}


/*==========================
RESET
==========================*/

*{

    margin:0;

    padding:0;

    box-sizing:border-box;

}


/*==========================
BODY
==========================*/

body{

    width:100%;

    min-height:100vh;

    overflow:hidden;

    background:
    radial-gradient(circle at top,
    #4A1023,
    #18070F,
    #090909);

    color:white;

    font-family:"Cormorant Garamond", serif;

    position:relative;

}


/*==========================
LUZ CENTRAL
==========================*/

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

lightPulse 8s ease infinite;

pointer-events:none;

z-index:-1;

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

scale(1.18);

}

100%{

transform:

translate(-50%,-50%)

scale(1);

}

}


/*==========================
PARTÍCULAS
==========================*/

#particles{

position:fixed;

inset:0;

pointer-events:none;

overflow:hidden;

z-index:1;

}


/*==========================
PANTALLAS
==========================*/

.screen{

display:none;

width:100vw;

height:100vh;

padding:40px;

justify-content:center;

align-items:center;

animation:fadeScreen 1s ease;

}

.screen.active{

display:flex;

}


/*==========================
ANIMACIÓN GENERAL
==========================*/

@keyframes fadeScreen{

from{

opacity:0;

transform:scale(.96);

}

to{

opacity:1;

transform:scale(1);

}

}


/*==========================
TARJETA
==========================*/

.card{

position:relative;

width:min(760px,94%);

padding:55px;

border-radius:30px;

background:

rgba(255,255,255,.08);

backdrop-filter:

blur(18px);

border:

1px solid rgba(255,255,255,.18);

box-shadow:

0 25px 70px rgba(0,0,0,.55);

text-align:center;

overflow:hidden;

}


/*==========================
VERSIÓN DELUXE
==========================*/

.deluxe{

border:

2px solid rgba(212,175,55,.20);

}


/*==========================
BRILLO DELUXE
==========================*/

.deluxe::before{

content:"";

position:absolute;

top:-180%;

left:-50%;

width:60%;

height:450%;

background:

linear-gradient(

90deg,

transparent,

rgba(255,255,255,.28),

transparent);

transform:

rotate(28deg);

animation:

glassLight 10s linear infinite;

}

@keyframes glassLight{

0%{

left:-80%;

}

100%{

left:180%;

}

}


/*==========================
TIPOGRAFÍAS
==========================*/

h1{

font-family:"Great Vibes";

font-size:72px;

font-weight:400;

color:var(--gold);

margin-bottom:10px;

text-shadow:

0 0 18px rgba(212,175,55,.45);

}

h2{

font-family:"Cinzel";

font-size:26px;

font-weight:600;

margin-bottom:25px;

color:white;

}

p{

font-size:24px;

line-height:1.8;

margin-bottom:30px;

}


/*==========================
LÍNEA DORADA
==========================*/

.gold-line{

width:220px;

height:3px;

margin:28px auto;

border-radius:30px;

background:

linear-gradient(

90deg,

transparent,

var(--gold),

var(--gold-light),

var(--gold),

transparent);

}


/*==========================
CORAZÓN
==========================*/

.crystal-heart{

font-size:52px;

margin-bottom:18px;

color:#FFD8E7;

text-shadow:

0 0 15px rgba(255,255,255,.65),

0 0 30px rgba(255,105,180,.45);

animation:

heartFloat 2.5s ease-in-out infinite;

}

@keyframes heartFloat{

0%,100%{

transform:

translateY(0)

scale(1);

}

50%{

transform:

translateY(-6px)

scale(1.12);

}

}
/*====================================================
        CORTINAS CINEMATOGRÁFICAS
====================================================*/

#curtain{

position:fixed;

inset:0;

z-index:99999;

pointer-events:none;

overflow:hidden;

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
#24060F,
#4C0E20,
#741430,
#4C0E20,
#24060F);

box-shadow:

inset 0 0 90px rgba(0,0,0,.65);

}

.left-curtain{

left:0;

animation:openLeft 3.8s ease forwards;

}

.right-curtain{

right:0;

animation:openRight 3.8s ease forwards;

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


/*====================================================
            LUZ DE LA PORTADA
====================================================*/

.light{

position:absolute;

left:50%;

top:50%;

width:650px;

height:650px;

transform:translate(-50%,-50%);

border-radius:50%;

background:

radial-gradient(circle,

rgba(255,230,170,.18),

transparent 72%);

filter:blur(15px);

animation:

heroLight 8s ease-in-out infinite;

pointer-events:none;

}

@keyframes heroLight{

0%{

transform:

translate(-50%,-50%)

scale(1);

}

50%{

transform:

translate(-50%,-50%)

scale(1.18);

}

100%{

transform:

translate(-50%,-50%)

scale(1);

}

}


/*====================================================
          PORTADA DELUXE
====================================================*/

#welcome{

position:relative;

overflow:hidden;

}

#welcome .card{

animation:

welcomeCard 2s ease;

}

@keyframes welcomeCard{

from{

opacity:0;

transform:

translateY(60px)

scale(.90);

}

to{

opacity:1;

transform:

translateY(0)

scale(1);

}

}


/*====================================================
            BOTONES PREMIUM
====================================================*/

button{

position:relative;

overflow:hidden;

padding:18px 42px;

border:none;

border-radius:60px;

background:

linear-gradient(

135deg,

#6E0F2C,

#8F1D42,

#B72C59);

color:white;

font-size:18px;

font-family:"Montserrat";

letter-spacing:1px;

cursor:pointer;

transition:.35s;

box-shadow:

0 12px 35px rgba(0,0,0,.35);

}

button:hover{

transform:

translateY(-4px)

scale(1.02);

box-shadow:

0 0 30px rgba(212,175,55,.45);

}

button::before{

content:"";

position:absolute;

left:-140%;

top:0;

width:50%;

height:100%;

background:

rgba(255,255,255,.35);

transform:

skewX(-25deg);

}

button:hover::before{

animation:

buttonLight 1.2s;

}

@keyframes buttonLight{

100%{

left:160%;

}

}


/*====================================================
       INPUT CONTRASEÑA
====================================================*/

input{

width:100%;

padding:18px;

margin:25px 0;

border:none;

outline:none;

border-radius:16px;

font-size:18px;

text-align:center;

font-family:"Montserrat";

background:

rgba(255,255,255,.90);

transition:.35s;

}

input:focus{

box-shadow:

0 0 25px rgba(212,175,55,.55);

}


/*====================================================
      MENSAJE DE ERROR
====================================================*/

#error{

height:25px;

font-size:17px;

color:#FFD3D3;

margin-top:10px;

}


/*====================================================
      BRILLO DEL TÍTULO
====================================================*/

h1{

animation:

titleGlow 4s ease-in-out infinite;

}

@keyframes titleGlow{

0%,100%{

text-shadow:

0 0 15px rgba(212,175,55,.35);

}

50%{

text-shadow:

0 0 35px rgba(255,221,120,.85);

}

}


/*====================================================
       EFECTO FLOTANTE
====================================================*/

.card{

animation:

floating 7s ease-in-out infinite;

}

@keyframes floating{

0%,100%{

transform:

translateY(0);

}

50%{

transform:

translateY(-8px);

}

}/*====================================================
            LIBRO DELUXE
====================================================*/

.book{

    position:relative;

    width:min(950px,94vw);

    min-height:650px;

    padding:70px;

    border-radius:18px;

    background:
    linear-gradient(
        90deg,
        #E9DFC8 0%,
        #F8F2E8 8%,
        #FFFDF9 50%,
        #F8F2E8 92%,
        #E9DFC8 100%
    );

    color:var(--text);

    overflow:hidden;

    box-shadow:
        0 35px 90px rgba(0,0,0,.55);

    animation:
        openBook 1.4s ease;

}


/*====================================================
            TAPA DE CUERO
====================================================*/

.book::before{

    content:"";

    position:absolute;

    inset:0;

    border-radius:18px;

    padding:10px;

    background:
    linear-gradient(
        135deg,
        #6E3A15,
        #8A5427,
        #6E3A15
    );

    -webkit-mask:
        linear-gradient(#fff 0 0) content-box,
        linear-gradient(#fff 0 0);

    -webkit-mask-composite:xor;

    mask-composite:exclude;

}


/*====================================================
          SOMBRA CENTRAL DEL LIBRO
====================================================*/

.book::after{

    content:"";

    position:absolute;

    top:0;

    left:50%;

    width:14px;

    height:100%;

    transform:translateX(-50%);

    background:

    linear-gradient(

        90deg,

        rgba(0,0,0,.25),

        rgba(255,255,255,.18),

        rgba(0,0,0,.25)

    );

}


/*====================================================
              PÁGINAS
====================================================*/

.page{

    display:none;

    animation:

        pageFade .9s ease;

}

.page.active{

    display:block;

}


/*====================================================
          TÍTULO DEL LIBRO
====================================================*/

.page h2{

    color:var(--wine);

    font-size:34px;

    text-align:center;

    margin-bottom:40px;

}


/*====================================================
           TEXTO
====================================================*/

.page p{

    color:#3D3D3D;

    font-size:29px;

    line-height:2;

    text-align:justify;

}


/*====================================================
          BOTÓN SIGUIENTE
====================================================*/

.page button{

    margin-top:45px;

}


/*====================================================
       MARCADOR DE TELA
====================================================*/

.book .bookmark{

    position:absolute;

    top:0;

    right:65px;

    width:18px;

    height:150px;

    background:

    linear-gradient(

        #8B102F,

        #D42A56

    );

    border-radius:

        0 0 10px 10px;

}


/*====================================================
       ESQUINAS DORADAS
====================================================*/

.book .corner{

    position:absolute;

    width:28px;

    height:28px;

    border:2px solid var(--gold);

}

.book .tl{

    left:20px;

    top:20px;

    border-right:none;

    border-bottom:none;

}

.book .tr{

    right:20px;

    top:20px;

    border-left:none;

    border-bottom:none;

}

.book .bl{

    left:20px;

    bottom:20px;

    border-right:none;

    border-top:none;

}

.book .br{

    right:20px;

    bottom:20px;

    border-left:none;

    border-top:none;

}


/*====================================================
          ANIMACIONES
====================================================*/

@keyframes openBook{

    from{

        opacity:0;

        transform:

            rotateY(18deg)

            scale(.92);

    }

    to{

        opacity:1;

        transform:

            rotateY(0)

            scale(1);

    }

}


@keyframes pageFade{

    from{

        opacity:0;

        transform:

            translateX(35px);

    }

    to{

        opacity:1;

        transform:

            translateX(0);

    }

}
/*====================================================
        PANTALLA FINAL
====================================================*/

#final{

    position:relative;

    overflow:hidden;

}


/*====================================================
        MARCO FOTOGRÁFICO DELUXE
====================================================*/

.photo{

    width:260px;

    height:260px;

    object-fit:cover;

    border-radius:50%;

    border:8px solid transparent;

    background:
    linear-gradient(var(--paper),var(--paper)) padding-box,
    linear-gradient(
        135deg,
        #FFF6C8,
        #D4AF37,
        #FFF6C8,
        #C4931A
    ) border-box;

    box-shadow:
        0 0 25px rgba(212,175,55,.45),
        0 20px 50px rgba(0,0,0,.35);

    animation:
        photoFloat 6s ease-in-out infinite;

}


/*====================================================
        AUREOLA DE LUZ
====================================================*/

.photo::after{

    content:"";

    position:absolute;

    inset:-20px;

    border-radius:50%;

    background:
    radial-gradient(circle,
    rgba(255,220,120,.20),
    transparent 70%);

}


/*====================================================
        CORAZÓN FINAL
====================================================*/

.heart{

    margin:30px auto;

    font-size:90px;

    color:#FF4D6D;

    animation:
        heartbeat 1.4s infinite;

    filter:
        drop-shadow(0 0 12px rgba(255,77,109,.55));

}

@keyframes heartbeat{

0%{

transform:scale(1);

}

20%{

transform:scale(1.15);

}

40%{

transform:scale(.96);

}

60%{

transform:scale(1.18);

}

100%{

transform:scale(1);

}

}


/*====================================================
        MENSAJE FINAL
====================================================*/

#final p{

    max-width:650px;

    margin:auto;

    line-height:2;

    font-size:24px;

}


/*====================================================
        BOTÓN FINAL
====================================================*/

#restart{

    margin-top:40px;

}


/*====================================================
        ANIMACIÓN FOTOGRAFÍA
====================================================*/

@keyframes photoFloat{

0%,100%{

transform:
translateY(0)
scale(1);

}

50%{

transform:
translateY(-10px)
scale(1.02);

}

}


/*====================================================
        RESPONSIVE
====================================================*/

@media(max-width:900px){

.card{

padding:35px;

}

.book{

padding:40px;

min-height:auto;

}

.page p{

font-size:23px;

}

.photo{

width:220px;

height:220px;

}

}

@media(max-width:600px){

h1{

font-size:52px;

}

h2{

font-size:21px;

}

p{

font-size:20px;

}

.page p{

font-size:20px;

line-height:1.8;

}

.card{

padding:28px;

}

.book{

padding:28px;

}

.photo{

width:180px;

height:180px;

}

button{

width:100%;

font-size:17px;

}

input{

font-size:17px;

}

}


/*====================================================
        FONDO CON DESTELLOS
====================================================*/

body::after{

content:"";

position:fixed;

inset:0;

pointer-events:none;

background-image:

radial-gradient(rgba(255,255,255,.08) 1px, transparent 1px);

background-size:60px 60px;

opacity:.25;

animation:

starsMove 30s linear infinite;

}

@keyframes starsMove{

from{

transform:translateY(0);

}

to{

transform:translateY(-120px);

}

}

/*====================================================
        INDICADOR DE PÁGINAS
====================================================*/

#pageIndicator{

letter-spacing:2px;

font-weight:600;

user-select:none;

}

/*====================================================
        DESTELLOS Y EFECTOS FINALES
====================================================*/

.photo{

transition:
transform .8s,
box-shadow .8s;

}

.photo:hover{

transform:
scale(1.04);

}

.heart{

transition:
transform .5s;

}

#particles{

overflow:hidden;

}
