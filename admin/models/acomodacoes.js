import conecta from '../config/BD_connection'

export async function selectAcomodacoes(){
    const connect = await conecta()
    const [rows] = await connect.query('SELECT * FROM Acomodacoes')
    console.log(rows)
    return JSON.stringify(rows)
}
selectAcomodacoes()
