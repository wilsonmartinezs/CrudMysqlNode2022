

const express = require("express");

const ruta_reportes = express.Router();



const controlador_reportes=require("../controllers/Controller.Reportes");

ruta_reportes.get("/Reporte1",controlador_reportes.Reoporte_Venta_Clientes);

ruta_reportes.get("/abrirReporte1",controlador_reportes.abrirReporte1);




module.exports= ruta_reportes;