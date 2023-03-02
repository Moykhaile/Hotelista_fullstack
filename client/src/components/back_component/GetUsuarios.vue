<template>
  <div>
    <table class="table">
      <thead>
        <tr>
          <th>Id</th>
          <th>Nome</th>
          <th>Email</th>
          <th>Gênero</th>
          <th>Senha</th>
          <th>Role</th>
          <th>Telefone</th>
          <th>Endereço</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="usuario in usuarios" :key="usuario.idUsuario">
          <td>{{ usuario.idUsuario }}</td>
          <td>{{ usuario.nome }}</td>
          <td>{{ usuario.email }}</td>
          <td>{{ usuario.genero }}</td>
          <td>{{ usuario.senha }}</td>
          <td>{{ usuario.role }}</td>
          <td>{{ usuario.telefone }}</td>
          <td>{{ usuario.endereco }}</td>
          <td>
            <router-link
              :to="{ name: 'EditUsuarios', query: {id: usuario.idUsuario} }"
              class="button"
              >Edit</router-link
            >
            <div class="container">
              <input type="checkbox" id="check" />
              <label class="buttons" for="check" @click="topFunction()">
                <div class="button-text">Deletar</div>
              </label>
              
              <div class="background"></div>
              <div class="alert_box">
                <div class="icon">
                  <i class="fa fa-exclamation"></i>
                </div>
                <header>Confirmação</header>
                <p>Realmente deseja excluir esses dados?</p>
                <p>Uma vez excluído não pode ser resgatado.</p>

                <div class="btns">
                  <label for="check" @click="deleteUsers(usuario.idUsuario)">Sim, excluir!</label>
                  <label for="check">Cancelar</label>
                </div>
              </div>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
// import axios
import axios from "axios";

export default {
  name: "Get_Hospedes",
  data() {
    return {
      usuarios: [],
    };
  },

  created() {
    this.getUsers();
  },

  methods: {
    // Get All Products
    async getUsers() {
      try {
        const response = await axios.get("http://localhost:5000/usuario");
        this.usuarios = response.data;
      } catch (err) {
        console.log(err);
      }
    },
 
    // Delete Product
    async deleteUsers(id) {
      try {
        await axios.delete(`http://localhost:5000/usuario/${id}`);
        this.getUsers();
      } catch (err) {
        console.log(err);
      }
    },
    topFunction() {
      document.body.scrollTop = 0; // For Safari
      document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }
  },
};
</script>

<style>
.alert_box{
  position: absolute;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.background {
  position: absolute;
  height: 100vh;
  width: 100vw;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.5);
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s ease;
}
.alert_box {
  padding-top: 20rem;
  padding: 30px;
  display: flex;
  background: #fff;
  flex-direction: column;
  align-items: center;
  text-align: center;
  max-width: 450px;
  width: 100%;
  border-radius: 5px;
  z-index: 5;
  opacity: 0;
  pointer-events: none;
  transform: translate(-50%, -50%) scale(0.97);
  transition: all 0.3s ease;
}
#check:checked ~ .alert_box {
  opacity: 1;
  pointer-events: auto;
  transform: translate(-50%, -50%) scale(1);
}
#check:checked ~ .background {
  opacity: 1;
  pointer-events: auto;
}
#check {
  display: none;
}
.alert_box .icon {
  height: 100px;
  width: 100px;
  color: #f23b26;
  border: 3px solid #f23b26;
  border-radius: 50%;
  line-height: 97px;
  font-size: 50px;
}
.alert_box header {
  font-size: 35px;
  font-weight: 500;
  margin: 10px 0;
}
.alert_box p {
  font-size: 20px;
}
.alert_box .btns {
  margin-top: 20px;
}
.btns label {
  display: inline-flex;
  height: 55px;
  padding: 0 30px;
  font-size: 20px;
  font-weight: 400;
  cursor: pointer;
  line-height: 55px;
  outline: none;
  margin: 0 10px;
  border: none;
  color: #fff;
  border-radius: 5px;
  transition: all 0.3s ease;
}
.btns label:first-child {
  background: #2980b9;
}
.btns label:first-child:hover {
  background: #2573a7;
}
.btns label:last-child {
  background: #f23b26;
}
.btns label:last-child:hover {
  background: #d9210d;
}

.buttons{
  display: flex;
  font-size:13px;
  margin: 1em 0 1em 0;
  padding-right: 0.5rem;
  align-items: center;
  text-align: right;
  flex: 0 0 auto;
  text-decoration: none;
  text-transform: uppercase;
  cursor: pointer;
  border: 1px solid #e0e0e0;
  justify-content: center;
  max-width: 90%;
  min-width: 30%;
  transition: 0.5s;
}
.buttons:hover {
  border-color: #c0c0c0;
  text-decoration: none;
}
.table{
  margin-left: auto;
  margin-right: auto;
  border-collapse: collapse;
  font-size: 0.9em;
  min-width: 400px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);

}
.table thead tr {
  background-color: #9a9058;
  color: #ffffff;
  text-align: left;
}
.table th,
.table td {
  padding: 12px 15px;
}
.table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
</style>
