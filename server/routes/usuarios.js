//import express
import express from 'express';

//import function do controller
import { showUsers, showUsersById, createUsers, updateUsers, deleteUsuario } from '../controller/usuarios.js';

//express router
const router = express.Router()

router.get('/',(req,res)=>{
    res.send('<h4>APIs</h4>')
})
router.get('/usuario', showUsers) //pegando
router.get('/usuario/:id', showUsersById) //pegando

router.post('/usuario', createUsers) //pegando no postman

router.put('/usuario/:id', updateUsers) //pegando no postman

router.delete('/usuario/:id', deleteUsuario) //pegando

export default router