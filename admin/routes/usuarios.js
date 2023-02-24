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

/*
router.post('/insert', async(req,res)=>{
    res.writeHead(200,{'Content-Type':'application/json;charset=utf-8'})
    res.end('', await login.insereTeste(req.body))
})
*/
export default router

