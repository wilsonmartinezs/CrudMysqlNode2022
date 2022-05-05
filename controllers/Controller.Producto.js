
const conexion = require('../database/conexion_bd');

const multer= require('multer');


const controlador ={};



const storage=multer.diskStorage({
    destination:function(req,img,cb){
        cb(null,"public/img");
    },
    filename:function(req,img,cb){
        cb(null,img.originalname);
    }
});







const upload= multer({storage:storage});

controlador.CargarImagen=upload.single('img');




controlador.AbrirFormularioProducto=(req,res)=>{
    const sql ="select * from unidades_productivas";
    conexion.query(sql,(err,registros)=>{   
        if(!err){
            res.render("Frm_Producto.ejs",{Datos:registros,});  
        }else{
            console.log('error de ejecucion de la consulta sql '+ err);
        }
    });   
}


controlador.RegistrarProducto=async(req,res)=>{
    var Nombre= req.body.Nombre;
    var Descripcion= req.body.Descripcion;
    var Cantidad= req.body.Cantidad;
    var Up= req.body.Up;
    var precio=  req.body.precio;
    var imagen= req.file.originalname;

   
    var sql =`insert into productos(Nombre_Pdto,Descripcion_Pdto,Stock,Valor_Pdto,imagen,fk_UP)
             values('${Nombre}','${Descripcion}','${Cantidad}','${precio}','${imagen}','${Up}')`; 
   await conexion.query(sql,(err,rows)=>{   
        if(!err){



           
            conexion.query("select * from productos",(err,rows)=>{   
                    res.render('Listar_Productos.ejs',{
                        Datos:rows,
                        posicion:"center",
                        alerta:true,
                        titulo:"Registrado",
                        mensaje:"Se registro con exito el producto",
                        icono:'success',
                        boton:false,
                        timer:1500,
                        ruta:''


                        


                    });
                }); 


        }else{
            

            conexion.query("select * from productos",(err,rows)=>{   
                res.render('Listar_Productos.ejs',{
                    Datos:rows,
                    posicion:"center",
                    alerta:true,
                    titulo:"Error",
                    mensaje:'Error al insertar en la tabla producto '+ err,
                    icono:'error',
                    boton:false,
                    timer:1500,
                    ruta:''



                });
            }); 

        }
    });

   
};




 controlador.ActualizarProducto=(req,res)=>{

    var id= req.params.id;
    var up = req.body.Up;

    var Nombre= req.body.Nombre;
    var Descripcion= req.body.Descripcion;
    var Cantidad= req.body.Cantidad;
    var precio=  req.body.precio;
    var imagen= req.file.originalname;

    var sql =`update  productos 
              set Nombre_Pdto="${Nombre}",
              Descripcion_Pdto="${Descripcion}",
              fk_UP="${up}",
              imagen= "${imagen}",
              Valor_Pdto = "${precio}",
              Stock=${Cantidad}  where Pk_id_pdto=${id}`; 
               conexion.query(sql,(err,rows)=>{   
if(!err){
  
    conexion.query("select * from productos",(err,rows)=>{   
        res.render('Listar_Productos.ejs',{
            Datos:rows,
            posicion:"center",
            alerta:true,
            titulo:"Actualizado",
            mensaje:"Se actualizo con exito el producto",
            icono:'success',
            boton:false,
            timer:1500,
            ruta:''
         });
    }); 



}else{

    conexion.query("select * from productos",(err,rows)=>{   
        res.render('Listar_Productos.ejs',{
            Datos:rows,
            posicion:"center",
            alerta:true,
            titulo:"Error",
            mensaje:'Error al actualizar el producto '+ err,
            icono:'error',
            boton:false,
            timer:1500,
            ruta:''
            
        });
    }); 


}
});

   

}


controlador.AbrirFrmActProducto=async(req,res)=>{

  
    var codigo= req.params.id;
  

   await conexion.query(`select * from productos where Pk_id_pdto=${codigo}`,(err,productos)=>{

        conexion.query(`select * from unidades_productivas`,(err,Unidades)=>{

       
            res.render("Frm_ActProducto.ejs",{prod:productos,up:Unidades}); 
        
     
              
        });



      
   
          
    });
 
}









controlador.Listar_Productos=(req,res)=>{

    var sql ="select * from productos";
    conexion.query(sql,(err,rows)=>{   
        if(!err){
            res.render('Listar_Productos.ejs',{Datos: rows,
                                              User:req.session.idetificacion,
                                              Rol:req.session.rol});  
        }else{
            console.log('error de ejecucion de la consulta sql '+ err);
        }
    });

};



controlador.ElimiarProducto=(req,res)=>{
    var id= req.params.producto;
    var sql =`delete from productos where Pk_id_pdto=${id}`; 
    conexion.query(sql,(err,rows)=>{   
        if(!err){      
            conexion.query("select * from productos",(err,rows)=>{   
                res.render('Listar_Productos.ejs',{
                    Datos:rows,
                    posicion:"center",
                    alerta:true,
                    titulo:"Eliminado",
                    mensaje:"Se elimino con exito el producto",
                    icono:'success',
                    boton:false,
                    timer:1500,
                    ruta:''

                });
            }); 




        }else{
            
            conexion.query("select * from productos",(err,rows)=>{   
                res.render('Listar_Productos.ejs',{
                    Datos:rows,
                    posicion:"center",
                    alerta:true,
                    titulo:"Error",
                    mensaje:'Error al eliminar el producto '+ err,
                    icono:'error',
                    boton:false,
                    timer:1500,
                    ruta:''


                });
            }); 



        }
    });


}




module.exports=controlador;
