const conexion = require('../database/conexion_bd');

const jwt = require('jsonwebtoken');


const controlador ={};


controlador.GenerarPdf=(req,res)=>{
    res.render('Pdf.ejs');
}





module.exports=controlador;