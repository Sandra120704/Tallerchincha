const express = require('express')
const bodyParse = require('body-parse')
const path = require('path')

//Rutas
const rutavehiculo = require('./router/vehiculos')
//const rutamarca = require('./router/marcas')

//Iniciar la app
const app = express();
const PORT = process.env.PORT || 3000

//CONFIGURACION MIDDLEWARE => CAPA DE COMUNICACION
app.use(bodyParse.urlencoded({extends: true}))
app.use(bodyParse.json())
app.use(express.static(path.join(__dirname,'public')))

//Configuracion de rutas
app.use('/',rutavehiculo)  /* Modulo Principal */
//app.use('/api/marcas',rutamarca) //Suministrar Datos


//Servidor Web
app.listen(3000, () => {
  console.log(`Servidor iniciado em http://localhost:${PORT}`)
});