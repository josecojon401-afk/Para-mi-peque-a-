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

    padding:16px 35px;

    border:none;

    border-radius:40px;

    background:var(--wine);

    color:white;

    font-size:18px;

    cursor:pointer;

    transition:.35s;

    font-family:"Montserrat",sans-serif;

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
