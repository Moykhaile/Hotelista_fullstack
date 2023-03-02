<template>
  <body>
    <header>
      <AdminNavBar />
    </header>
    <main>
      <h1>Hópedes e Usuários</h1>
      <section>
        <GetUsuarios />
      </section>
    </main>
  </body>
</template>

<script>
import AdminNavBar from "../components/AdminNavBar.vue"
import GetUsuarios from "../components/back_component/GetUsuarios.vue"


export default {
    name: "HospedesAdmin",
    components: {
      AdminNavBar,
      GetUsuarios
    }
}
</script>

<style>

h1{
  text-align: center;
  margin: 1em;
}
</style>