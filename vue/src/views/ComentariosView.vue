<template>
    <main>
        <section class="comentarios-wrap" @load="">
            <img src="https://wallpaperaccess.com/full/658113.png" class="comentarios-bg">
            <h1>Comentários - {{ this.$route.query.quarto }}</h1>
            <div class="comentarios">
                <div class="comentario-wrap">
                    <div class="comentario-nome">{{ comentarios[0].nome }}</div>
                    <div class="comentario">{{ comentarios[1].txt }}</div>
                </div>
            </div>
        </section>
    </main>
</template>

<script>
import imageQuartoSimples from "../assets/quartos/simples.png"
import imageQuartoMedio from "../assets/quartos/medio.png"
import imageQuartoLuxo from "../assets/quartos/luxo.png"

export default {
    data: function () {
        return {
            imageQuartoSimples: imageQuartoSimples,
            imageQuartoMedio: imageQuartoMedio,
            imageQuartoLuxo: imageQuartoLuxo,
            comentarios: localStorage.getItem('comentarios')
        }
    },
    name: 'ComentariosView',
    methods: {
        carregarComentarios() {
            console.log(localStorage.getItem('comentarios'));
        }
    }
}
</script>

<style>
.comentarios-wrap {
    display: flex;
    flex-direction: column;
    align-items: center;
    overflow: hidden;
    position: relative;
}

.comentarios-bg {
    opacity: 0.1;
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: auto;
}

.comentarios {
    position: relative;
    width: 50vw;
    padding: 5vh 5vw;
    border: 1px solid #333333;
    background-color: white;
}

.comentario-wrap {
    border-bottom: 1px solid #333333;
    padding: 1em;
    padding-top: 2em;
}

.comentario-nome {
    font-size: 1.1em;
    margin-left: 2em;
    font-weight: bold;
}
</style>