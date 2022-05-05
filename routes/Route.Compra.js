
const express = require("express");
const controlador = require("../controllers/Controller.Compras");
const ruta_compras= express.Router();



ruta_compras.post("/Registrar_Compra",controlador.Registrar_Compra);






module.exports= ruta_compras;