<template>
    <html>
        <head>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        </head>
        <main>
            <section class="banner-section">
                <div class="hero">
                    <h1 class="hero-titulo banner-titulo black">Sua melhor escolha de vista</h1>
                </div>
                <div>
                    <div id="banner" class="headBanner"></div>
                </div>
            </section>
            <hr />
            <section>
                <h1>Nossas acomodações</h1>
                <div class="quartos">
                    <h1>Quarto Simples</h1>
                    <div class="quarto">
                        <div class="quarto-wrap">
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoSimples" alt="Quarto Simples 1">

                            </div>
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoSimples2" alt="Quarto Simples 2">
                            </div>
                            <div class="quarto-img-wrap">
                                <img :src="imageBanheiro" alt="Quarto Simples 3">
                            </div>
                            <div class="quarto-img-info-conteiner">
                                <div class="quarto-img-info-wrap">
                                    <div class="quarto-img-info">Lorem ipsum dolor sit amet consectetur adipisicing
                                        elit.
                                        Necessitatibus nisi vitae soluta eius voluptate tenetur vel ex, sint distinctio.
                                        Eos
                                        sapiente rerum molestias, in asperiores voluptatibus minima quidem provident
                                        dolor?
                                        Quae
                                        id laborum harum nam ab culpa officia magnam alias modi architecto? Libero,
                                        cupiditate
                                        alias reiciendis vel dolor architecto possimus.</div>
                                    <div class="quarto-img-list">
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="quarto-img-stars-wrap">
                                    <div class="quarto-img-stars-titulo">Deixe sua avaliação do quarto:</div>
                                    <div class="quarto-img-stars" id="stars">
                                        <span class="star" id="star1" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(1, 'Quarto Simples')">&#xe838;</span>
                                        <span class="star" id="star2" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(2, 'Quarto Simples')">&#xe838;</span>
                                        <span class="star" id="star3" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(3, 'Quarto Simples')">&#xe838;</span>
                                        <span class="star" id="star4" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(4, 'Quarto Simples')">&#xe838;</span>
                                        <span class="star" id="star5" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(5, 'Quarto Simples')">&#xe838;</span>
                                    </div>
                                    <a>Ver avaliações do quarto</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h1>Quarto Médio</h1>
                    <div class="quarto">
                        <div class="quarto-wrap">
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoMedio" alt="Quarto Médio 1">

                            </div>
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoMedio2" alt="Quarto Médio 2">
                            </div>
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoMedio3" alt="Quarto Médio 3">
                            </div>
                            <div class="quarto-img-info-conteiner">
                                <div class="quarto-img-info-wrap">
                                    <div class="quarto-img-info">Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                        Et,
                                        vitae. Aperiam quos dolorem error. Quibusdam exercitationem nihil alias facere aut
                                        minus
                                        sit quam consequatur possimus dignissimos! Architecto id voluptatem amet maxime cum
                                        deleniti recusandae, quos eius deserunt aut soluta inventore a facilis tempore
                                        dignissimos similique doloremque expedita reiciendis provident magnam.</div>
                                    <div class="quarto-img-list">
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="quarto-img-stars-wrap">
                                    <div class="quarto-img-stars-titulo">Deixe sua avaliação do quarto:</div>
                                    <div class="quarto-img-stars" id="stars">
                                        <span class="star" id="star1" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(1, 'Quarto Médio')">&#xe838;</span>
                                        <span class="star" id="star2" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(2, 'Quarto Médio')">&#xe838;</span>
                                        <span class="star" id="star3" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(3, 'Quarto Médio')">&#xe838;</span>
                                        <span class="star" id="star4" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(4, 'Quarto Médio')">&#xe838;</span>
                                        <span class="star" id="star5" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(5, 'Quarto Médio')">&#xe838;</span>
                                    </div>
                                    <a>Ver avaliações do quarto</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h1>Quarto de Luxo</h1>
                    <div class="quarto">
                        <div class="quarto-wrap">
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoLuxo" alt="Quarto de Luxo 1">

                            </div>
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoLuxo2" alt="Quarto de Luxo 2">
                            </div>
                            <div class="quarto-img-wrap">
                                <img :src="imageQuartoLuxo3" alt="Quarto de Luxo 3">
                            </div>
                            <div class="quarto-img-info-conteiner">
                                <div class="quarto-img-info-wrap">
                                    <div class="quarto-img-info">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Ipsa
                                        dicta pariatur totam incidunt eos libero deserunt earum possimus autem aliquid, quam
                                        enim quo voluptate consequuntur error dolores vero voluptates perferendis!
                                        Cupiditate
                                        consequatur, magnam quae vero nobis sed iure! Porro ipsam consequuntur recusandae
                                        non
                                        quo error tempore, optio ipsum iste incidunt!</div>
                                    <div class="quarto-img-list">
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                            <li>Lorem ipsum dolor sit amet.</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="quarto-img-stars-wrap">
                                    <div class="quarto-img-stars-titulo">Deixe sua avaliação do quarto:</div>
                                    <div class="quarto-img-stars" id="stars">
                                        <span class="star" id="star1" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(1, 'Quarto de Luxo')">&#xe838;</span>
                                        <span class="star" id="star2" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(2, 'Quarto de Luxo')">&#xe838;</span>
                                        <span class="star" id="star3" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(3, 'Quarto de Luxo')">&#xe838;</span>
                                        <span class="star" id="star4" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(4, 'Quarto de Luxo')">&#xe838;</span>
                                        <span class="star" id="star5" @mouseover="mouseOver($event);"
                                            @mouseout="mouseOut($event);"
                                            @click="showModal(5, 'Quarto de Luxo')">&#xe838;</span>
                                    </div>
                                    <a>Ver avaliações do quarto</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <ComentarioView v-show="isModalViewVisible" @close="closeModal" />
            </section>

            <section>
                <h1>Quarto em Destaque</h1>
                <div class="quarto-destaque">
                    <img :src="imageQuartoLuxo" alt="Quarto em destaque: Quarto de Luxo">
                    <div class="quarto-destaque-info">
                        <h1>Quarto de Luxo</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, exercitationem, quod
                            asperiores aspernatur maiores a placeat vitae fugiat iste architecto quasi. Accusamus
                            provident
                            similique quam temporibus, veniam dolorum beatae molestias nobis mollitia magnam est tempore
                            debitis quae, vitae qui fugiat obcaecati! Explicabo quis totam doloremque voluptates.
                            Expedita
                            accusamus quo quaerat natus distinctio? Veritatis quis aperiam dolore iste magnam corrupti
                            ducimus quia distinctio, quisquam officiis autem repudiandae pariatur. Laborum quasi nam
                            modi
                            nulla voluptatum esse accusamus.</p>
                    </div>
                </div>
            </section>
        </main>
    </html>
</template>

<script>

function mouseOver(event) {
    let star = event.target;
    let starIndex = star.id.replace('star', '');

    let stars = getSiblings(star);
    for (let i = 0; i < starIndex - 1; i++) {
        stars[i].style.color = 'yellow';
    }

    star.style.color = "yellow"
}
function mouseOut(event) {
    let star = event.target;

    let stars = getSiblings(star);
    for (let i = 0; i < stars.length; i++) {
        stars[i].style.color = 'white';
    }

    star.style.color = "white"
}

var getSiblings = function (elem) {
    var siblings = [];
    var sibling = elem.parentNode.firstChild;

    while (sibling) {
        if (sibling.nodeType === 1 && sibling !== elem) {
            siblings.push(sibling);
        }
        sibling = sibling.nextSibling
    }

    return siblings;
};

import imageQuartoSimples from "../assets/quartos/simples.png"
import imageQuartoSimples2 from "../assets/quartos/simples2.png"
import imageBanheiro from "../assets/quartos/banheiro.png"
import imageQuartoMedio from "../assets/quartos/medio.png"
import imageQuartoMedio2 from "../assets/quartos/medio2.png"
import imageQuartoMedio3 from "../assets/quartos/medio3.png"
import imageQuartoLuxo from "../assets/quartos/luxo.png"
import imageQuartoLuxo2 from "../assets/quartos/luxo2.png"
import imageQuartoLuxo3 from "../assets/quartos/luxo3.png"
//import imageBanner from "../assets/banner/area_livre.jpg"

import ComentarioView from "../components/ComentarioView.vue";

/*if (localStorage.getItem('quartoSelect'))
    localStorage.removeItem('quartoSelect');
if (localStorage.getItem('qntdStars'))
    localStorage.removeItem('qntdStars');*/

export default {
    data: function () {
        return {
            imageQuartoSimples: imageQuartoSimples,
            imageQuartoSimples2: imageQuartoSimples2,
            imageBanheiro: imageBanheiro,
            imageQuartoMedio: imageQuartoMedio,
            imageQuartoMedio2: imageQuartoMedio2,
            imageQuartoMedio3: imageQuartoMedio3,
            imageQuartoLuxo: imageQuartoLuxo,
            imageQuartoLuxo2: imageQuartoLuxo2,
            imageQuartoLuxo3: imageQuartoLuxo3,
            //imageBanner: imageBanner
            mouseOver: mouseOver,
            mouseOut: mouseOut,
            isModalViewVisible: false,
        }
    },
    methods: {
        showModal(qntdStars, quartoSelect) {
            this.isModalViewVisible = true;
            localStorage.setItem('qntdStars', qntdStars);
            localStorage.setItem('quartoSelect', quartoSelect);
        },
        closeModal() {
            this.isModalViewVisible = false;
            localStorage.removeItem('quartoSelect');
            localStorage.removeItem('qntdStars');
        }
    },
    components: {
        ComentarioView,
    },
    name: 'AcomodacoesView'
}
</script>

<style>
/*BANNER */
.headBanner {
    width: 100vw;
    height: 30vh;
    background-image: url(../assets/banner/quadra_tenis.jpg);
    background-size: cover;
    background-position: 25% 75%;
}

.banner-section {
    height: auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.banner-titulo {
    padding-top: 15%;
    color: white;
}

/*Acomodacoes */
.quartos {
    display: flex;
    flex-direction: column;
    margin-bottom: 5em;
}

.quartos h1 {
    margin-bottom: 0;
    font-size: 24px;
}

.quarto {
    padding: 0.5em 0 0 0;
    margin: 0 1%;
    margin-bottom: 2em;
}

.quarto-wrap {
    position: relative;
    display: flex;
    align-items: center;
    align-content: center;
    justify-content: center;
    flex-wrap: wrap;
    height: auto;
}

.quarto-img-wrap {
    max-width: 30%;
}

.quarto-img-wrap img {
    max-width: 100%;
    transition: 0.25s;
}

.quarto-img-info-wrap {
    padding: 2em 0;
    margin: 0;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-evenly;
}

.quarto-img-info-conteiner {
    transition: 0.5s;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 1;
    color: white;
    display: flex;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: space-evenly;
    align-items: center;
    opacity: 0;
}

.quarto-img-stars {
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
}

.star {
    font-family: "Material Icons";
    font-size: 2em;
    text-align: center;
    line-height: 2em;
    color: white;
    transition: 0.5s;
    font-variation-settings:
        'FILL' 0,
        'wght' 400,
        'GRAD' 0,
        'opsz' 48;
    cursor: pointer;
}

.star:hover {
    transform: scale(1.25)
}

.quarto-img-stars-wrap {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.quarto-img-stars-wrap a {
    color: #cbcbcb;
    font-size: small;
    line-height: 0;
    text-align: center;
    cursor: pointer;
}

.quarto-img-stars-wrap a:hover {
    text-decoration: underline;
}

.quarto-wrap:hover .quarto-img-info-conteiner {
    opacity: 1;
}

.quarto-wrap:hover img {
    filter: brightness(30%);
}

.quarto-img-info {
    text-align: justify;
    width: 50%;
}

.quarto-img-list ul {
    margin: 0;
    padding: 0;
}

.quarto-destaque {
    display: flex;
    margin: 0 2em;
    margin-bottom: 25vh;
}

.quarto-destaque img {
    width: 50%;
    height: auto;
}

.quarto-destaque-info {
    display: flex;
    flex-direction: column;
    margin: 1em;
}

.quarto-destaque-info h1 {
    margin: 0;
    padding: 0;
}

.quarto-destaque-info p {
    margin: 0;
    text-align: justify;
}

@media (max-width: 600px) and (orientation: portrait) {

    /* QUARTOS */
    .quarto-wrap {
        flex-direction: column;
    }

    .quarto-wrap:hover {
        background-color: #333333;
    }

    .quarto-img-wrap {
        max-width: 100%;
    }

    .quarto-img-info-wrap {
        flex-direction: column;
        align-items: center;
    }

    .quarto-destaque {
        flex-direction: column;
    }

    .quarto-destaque img {
        width: 100%;
    }
}
</style>