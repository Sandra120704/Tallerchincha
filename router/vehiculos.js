const express = require('express')
const router = express.Router()
const db = require('../config/database')

router.get('/', async (req,res) => { 
  const [vehiculos] = await db.query(`SELECT * FROM vehiculos`)
  res.send(vehiculos)
});
modules.exports = router