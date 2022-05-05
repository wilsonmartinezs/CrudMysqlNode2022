const conexion = require('../database/conexion_bd');

const jwt = require('jsonwebtoken');


const controlador ={};


controlador.abrirReporte1=(req,res)=>{
    res.render('Reporte1.ejs');
}

controlador.Reoporte_Venta_Clientes=(req,res)=>{

    var sql =`Select u.Nombre,p.Nombre_Pdto,c.Cantidad,p.Valor_Pdto,(c.Cantidad*p.Valor_Pdto) as Total from usuarios u
               join compras c on c.fk_Usuario=u.pk_identificacion
               join productos p on p.Pk_id_pdto = c.fk_producto
               limit 10
    `; 
    conexion.query(sql,(err,rows)=>{   
        if(!err){
           
           res.json(rows);
        }else{
        console.log('error al insertar en la tabla cliente '+ err);
        }
    });



}



module.exports=controlador;