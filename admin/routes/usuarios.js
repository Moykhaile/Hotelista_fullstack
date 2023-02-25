//import express
import express from 'express';

//import function do controller
import { showUsers, showUsersById, createUsers } from '../controller/usuarios.js';

//express router
const router = express.Router()

router.get('/',(req,res)=>{
    res.send('<h4>APIs</h4>')
})
router.get('/usuario',showUsers)
router.get('/usuario/:id',showUsersById)
router.post('/usuario', createUsers)

export default router

