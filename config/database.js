const mysql = require('mysql2/promise')

//crear pool de acceso
const pool = mysql.createPool({
  host : 'localhost',
  user : 'root',
  password: '',
  database: 'tallerchincha'
})
//verificacion 
async function testConnection(){
  try{
    const connection = await pool.getConnection()
    console.log("conexion mysql exitosa")
    connection.release()//librear
    console.error("error: ", error)
  }catch(error){
    console.log()
  }
}

testConnection();
module.exports = pool;