<template>
  <main>
    <section>
      <form action="">
        <h1>Cadastro de Usuários</h1>

        <label id="nomeLabel" for="nome">Nome:</label>
        <input
          name="nome"
          id="nome"
          v-model="nome"
          placeholder="Seu nome"
          type="text"
          required
        />

        <label id="emaillabel" for="tempo">Email:</label>
        <input
          name="email"
          id="email"
          v-model="email"
          placeholder="Qual é o seu email"
          type="text"
          required
        />

        <label id="telefonelabel" for="telefone">Telefone:</label>
        <input
          name="telefone"
          id="telefone"
          v-model="telefone"
          placeholder="Qual é o seu telefone"
          type="text"
          required
        />

        <label id="nascimentolabel" for="nascimento">Data de Nascimento:</label>
        <input
          name="nascimento"
          id="nascimento"
          v-model="data_nascimento"
          placeholder="Qual é a data de nascimento"
          type="text"
          required
        />

        <label id="nacionalidadelabel" for="nacionalidade"
          >Nacionalidade:</label
        >
        <input
          name="nacionalidade"
          id="nacionalidade"
          v-model="nacionalidade"
          placeholder="Qual é a sua nacionalidade"
          type="text"
          required
        />

        <label for="genero">Gênero:</label>
        <select name="genero" id="genero" v-model="genero" required>
          <option value="genero1">Selecione seu gênero</option>
          <option value="genero2">Homem</option>
          <option value="genero3">Mulher</option>
          <option value="genero4">Pessoa não-binária</option>
          <option value="genero5">Prefiro não informar</option>
        </select>

        <label id="endereço" for="endereço">Endereço:</label>
        <input
          name="endereço"
          id="endereço"
          v-model="endereco"
          placeholder="Qual é a sua endereço"
          type="text"
          required
        />

        <label for="notificação">Notificações por email:</label>
        <select name="notificação" id="notificação" required>
          <option value="notificação1">Sim</option>
          <option value="notificação2">Não</option>
        </select>
        
        <label id="senhaLabel" for="senha">Senha:</label>
        <input
          name="senha"
          id="senha"
          v-model="senha"
          placeholder="Seu nome"
          type="password"
          required
        />

        <button class="button" type="button" @click="postUsuario">
          <div class="button-text">Cadastrar</div>
          <p class="button-arrow">→</p>
        </button>
        <router-link to="/login">Já possui conta?</router-link>
      </form>
    </section>
  </main>
</template>

<script>
import axios from "axios";

export default {
  name: "CadastroView",
  data() {
    return {
      nome:'',
      email:'',
      telefone:'',
      data_nascimento:'',
      nacionalidade:'',
      genero:'',
      endereco:'',
      senha:''
    };
  },
  method: {
    async postUsuario(){
      axios.post("http://localhost:5000/usuario", {
        nome: this.nome,
        email: this.email,
        senha: this.senha,
        telefone: this.telefone,
        data_nascimento: this.data_nascimento,
        nacionalidade: this.nacionalidade,
        genero: this.genero,
        endereco: this.endereco
      })
      .then((res) => {
        this.nome='',
        this.email='',
        this.telefone='',
        this.data_nascimento='',
        this.nacionalidade='',
        this.genero='',
        this.endereco='',
        this.senha=''
      res.send(alert('Usuário cadastrado com sucesso!'))
      router.push('/')
    });
    }
  } 
};
</script>

<style>
</style>
