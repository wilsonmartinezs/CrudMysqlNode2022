
const conexion = require('../database/conexion_bd');

const multer= require('multer');


const controlador ={};







controlador.Registrar_Compra=async(req,res)=>{
    var id_pdto= req.body.id_pdto;
   var user= req.session.idetificacion;
   var cantidad=1;
  
    var sql =`CALL Registrar_Compras(${user},${id_pdto},${cantidad})`; 
   
   await conexion.query(sql,(err,rows)=>{   
        if(!err){

          console.log(rows[0]); 
            res.send(rows[0]);
        }else{       
            console.log(err);
        }
    });   
};





module.exports=controlador;
