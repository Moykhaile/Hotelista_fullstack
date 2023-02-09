<template>
    <transition name="modal-fade">
        <div class="modal-backdrop">
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
            <div class="modal" role="dialog" aria-labelledby="modalTitle" aria-describedby="modalDescription"
                @mouseenter="setStars">
                <header class="modal-header" id="modalTitle">
                    <slot name="header">
                        <h2>Avaliação - {{ getItem('quartoSelect') }}</h2>
                        <button type="button" class="btn-close" @click="close">
                            x
                        </button>
                    </slot>
                </header>

                <section class="modal-body" id="modalDescription">
                    <slot name="body">
                        <div class="comment-quarto">
                            <form>
                                <div class="quarto-modal-stars" id="modal-stars">
                                    <span class="starModal" id="star1" @click="onClick($event)">&#xe838;</span>
                                    <span class="starModal" id="star2" @click="onClick($event)">&#xe838;</span>
                                    <span class="starModal" id="star3" @click="onClick($event)">&#xe838;</span>
                                    <span class="starModal" id="star4" @click="onClick($event)">&#xe838;</span>
                                    <span class="starModal" id="star5" @click="onClick($event)">&#xe838;</span>
                                </div>
                                <p id="resumoStars" class="resumoStars">{{ getItem('qntdStars') }} estrelas!</p>
                                <h2>Deixe um comentário na sua avaliação!</h2>
                                <textarea placeholder="Deixe seu comentário..." name="comentarioTxt" id="comentarioTxt"
                                    cols="30" rows="50"></textarea>
                                <button class="button" value="Continuar" @click="enviarComentario($event)">
                                    <div class="button-text">Continuar</div>
                                    <p class="button-arrow">→</p>
                                </button>
                            </form>
                        </div>
                    </slot>
                </section>
            </div>
        </div>
    </transition>
</template>
<script>
function onClick(event) {
    let star = event.target;
    let starIndex = star.id.replace('star', '');

    let stars = getSiblings(star);
    for (let i = 0; i < stars.length; i++) {
        stars[i].style.color = 'white';
    }
    for (let i = 0; i < starIndex; i++) {
        stars[i].style.color = 'yellow';
    }

    localStorage.setItem('qntdStars', starIndex);
    document.getElementById('resumoStars').innerText = `${starIndex} estrelas!`;
}

var getSiblings = function (elem) {
    var siblings = [];
    var sibling = elem.parentNode.firstChild;

    while (sibling) {
        if (sibling.nodeType === 1) {
            siblings.push(sibling);
        }
        sibling = sibling.nextSibling
    }

    return siblings;
};

function setStars() {
    let cStarNum = localStorage.getItem('qntdStars');
    let cStars = document.getElementById('modal-stars');

    let stars = getSiblings(cStars.firstChild);
    for (let i = 0; i < stars.length; i++) {
        stars[i].style.color = 'white';
    }
    for (let i = 0; i < cStarNum; i++) {
        stars[i].style.color = 'yellow';
    }
}

function makeautor() {
    var result = '';
    var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ';
    var charactersLength = characters.length;
    for (var i = 0; i < 10; i++) {
        result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
}

export default {
    name: 'ComentarioView',
    data: function () {
        return {
            onClick: onClick,
            setStars: setStars
        }
    },
    methods: {
        close() {
            this.$emit('close');
        },
        getItem(item) {
            return localStorage.getItem(item)
        },
        enviarComentario(e) {
            e.preventDefault();

            /*let textArea = document.getElementById('comentarioTxt');

            let comentario = { stars: localStorage.getItem('qntdStars'), txt: textArea.value }
            console.log(comentario);

            let quarto = localStorage.getItem('quartoSelect');
            if (localStorage.getItem('comentarios')) {
                let comentarios = JSON.parse(localStorage.getItem('comentarios'));

                comentarios[quarto][makeautor()] = comentario;

                localStorage.setItem('comentarios', comentarios);
            }
            else {
                let autor = makeautor();
                let comentarios = [quarto][autor];

                comentarios[quarto][autor] = comentario;

                localStorage.setItem('comentarios', comentarios);
            }*/

            this.$router.push({ path: '/comentarios', query: { quarto: localStorage.getItem('quartoSelect') } });
        }
    }
};
</script>
<style>
@import url("https://fonts.googleapis.com/css?family=Poppins");

* {
    font-family: Poppins;
}

.comment-quarto {
    display: flex;
    flex-direction: column;
    align-items: stretch;
}

.comment-quarto h2 {
    font-size: large;
    text-align: center;
}

.resumoStars {
    text-align: center;
    font-size: small;
    line-height: 0;
}

.comment-quarto textarea {
    outline: none;
}

.quarto-modal-stars {
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
}

.starModal {
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
    -webkit-text-stroke: 1px #cbcb;
}

.starModal:hover {
    transform: scale(1.25);
    color: yellow;
}

form {
    margin: 0 15%
}

button.button {
    max-width: 100%;
    width: 100%;
}

.modal-backdrop {
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background-color: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 200;
}

.modal {
    background-color: #ffffff;
    box-shadow: 2px 2px 20px 1px;
    padding: 0 1rem;
    display: flex;
    flex-direction: column;
    width: 50%;
    height: 80%;
    text-align: center;
    overflow-x: hidden;
}

.modal-header {
    padding: 15px;
    display: flex;
}

.modal-header {
    position: relative;
    border-bottom: 1px solid #e0e0e0;
    color: #161414;
    justify-content: space-between;
}

.modal-header h2 {
    text-align: center;
    width: 90%;
}

.res-serv {
    text-align: center;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 1em;
}

.res-serv div {
    display: flex;
    flex-direction: row-reverse;
    align-items: center;
    justify-content: space-between;
    width: 75%;
}

.res-serv div label {
    margin-left: 1rem;
}

.modal-body {
    position: relative;
    padding: 20px 10px;
    overflow: hidden;
}

.btn-close {
    position: absolute;
    top: 0;
    right: 0;
    border: none;
    font-size: xx-large;
    padding: 10px;
    cursor: pointer;
    font-weight: bold;
    color: #c0c0c0;
}

.modal-fade-enter,
.modal-fade-leave-to {
    opacity: 0;
}

.modal-fade-enter-active,
.modal-fade-leave-active {
    transition: opacity .5s ease;
}

.modal b {
    font-size: 14px;
    font-weight: normal;
    color: #c0c0c0;
}
</style>