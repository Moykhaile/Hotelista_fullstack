//importa a database
import conn from "../config/database.js";

//mostra os usuarios
export const allUsers = (result)=>{
    conn.query('SELECT * FROM Usuario', (erro,results)=>{
        if(erro){
            console.log(erro)
            result(erro, null)
        }else{
            result(null,results)
        }
    })
}

//mostra usuario pelo id
export const usersById = (idUsuario,result) => {
    conn.query('SELECT * FROM Usuario WHERE idUsuario=?', [idUsuario],
    (erro, results)=>{
        if (erro){
            console.log(erro)
            result(erro,null)
        }else{
            result(null,results[0])
        }
    })
}

//insere usuario
export const insertUsers = (dados, result)=>{
    const values = [dados.nome, dados.role, dados.email, dados.ativo, dados.senha, dados.dataCreated, dados.telefone, 
    dados.data_nascimento, dados.nacionalidade, dados.genero, dados.endereco]
    conn.query(
        "INSERT INTO Usuario (nome,role,email,ativo,senha,dataCreated,telefone,data_nascimento,nacionalidade,genero,endereco) VALUES (?,?,?,?,?,?,?,?,?,?,?)"
        ,values, (erro,results)=>{
        if (erro){
            console.log(erro)
            result(erro,null)
        }else{
            result(null,results)
        }
    })
}