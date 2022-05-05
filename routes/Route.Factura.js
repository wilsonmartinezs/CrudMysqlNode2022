

const express = require("express");

const ruta_reportes = express.Router();



const controlador_factura=require("../controllers/Controller.Factura");

ruta_reportes.get("/GenerarPdf",controlador_factura.GenerarPdf);


module.exports= ruta_reportes;