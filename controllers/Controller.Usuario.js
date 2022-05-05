const conexion = require('../database/conexion_bd');

const jwt = require('jsonwebtoken');




const controlador ={};







controlador.Actualizar_usuario=(req,res)=>{


    var ident=req.body.Identificacion;
    var nomb=req.body.Nombre;
    var dir=req.body.Direccion;
    var tel=req.body.Telefono;
    var sql =`update usuarios set pk_identificacion=${ident},
         Nombre='${nomb}',Direccion='${dir}',Telefono='${tel}' where pk_identificacion=${ident}`; 
    
         console.log(sql);
    
         conexion.query(sql,(err,rows)=>{ 

        if(!err){
            res.json({
                titulo:"Mensaje",
                mensaje:"Usuario actualizado con éxito..!!",
                icono:"success"
            });
         }else{
             res.json({
                 titulo:"Error",
                 mensaje:"Error al actualizar usuario - "+err,
                 icono:"error"
             });
         }

    });

}






controlador.Buscar_Usuario=(req,res)=>{

    var ident = req.body.Identificacion;

    var sql ='select * from usuarios where pk_identificacion='+ident; 

   
    conexion.query(sql,(err,rows)=>{   
        if(!err){
             res.json(rows);
        }else{
        console.log('error al listar usuarios'+ err);
        }
    });  


}



controlador.Listar_Usuarios=(req,res)=>{
        var sql ="select * from usuarios"; 
        conexion.query(sql,(err,rows)=>{   
            if(!err){
                 res.json(rows);
            }else{
            console.log('error al listar usuarios'+ err);
            }
        });  
}



controlador.Eliminar_Usuario=(req,res)=>{

    var id=req.body.Identificacion;

    var sql ="delete from usuarios where pk_identificacion="+id; 
    conexion.query(sql,(err,rows)=>{   
    if(!err){
       res.json({
           titulo:"Mensaje",
           mensaje:"Usuario Eliminado con éxito..!!",
           icono:"success"
       });
    }else{
        res.json({
            titulo:"Error",
            mensaje:"Error al eliminar - "+err,
            icono:"error"
        });
    }
});


}


controlador.AbrirFrm_Principal=(req,res)=>{

    var sql ="select * from productos"; 
conexion.query(sql,(err,rows)=>{   
    if(!err){
       
       res.render("Frm_Principal.ejs",{Productos:rows,
                                      User:req.session.idetificacion,
                                      Rol:req.session.rol});
    }else{
    console.log('error al insertar en la tabla cliente '+ err);
    }
});
    



}


controlador.AbrirFrm_usuario=(req,res)=>{
    res.render("Frm_usuario2.ejs");
}


controlador.VerificarToken=(req,res,next)=>{
    
      if(!req.headers.authorization )
        {
            res.json({
                titulo:"error",
                mensaje:"Usuario no validado por el sistema..!!",
                icono:"error"
            });
         
        }else{
            const token=req.headers.authorization.split(" ")[1];
             jwt.verify(token,process.env.JWT_SECRETO,(error,authData)=>{

                if(error){
                   
                    res.json({
                        titulo:"error",
                        mensaje:"El token a caducado..!!",
                        icono:"error"
                    });


                }else{
                    
                    next();
                }
            }) 
        }      
   
}



controlador.cerrarSesion=(req,res)=>{
res.clearCookie('jwt');
return res.redirect('/');
}





controlador.ValidarUsuario=async(req,res)=>{

    try {
        var log=req.body.Login;
        var pass= req.body.Password;
        if(log!='' && pass!=''){
            var sql =`select pk_identificacion,Nombre,Tipo_Usuario from usuarios where login =${log} and password=${pass}`; 
            conexion.query(sql,async(err,rows)=>{   
                
                if(rows.length>0)
                    {

                        var user = rows[0];
                        const tok= jwt.sign(
                            {user:user},
                            process.env.JWT_SECRETO,
                            {expiresIn: process.env.JWT_TIEMPO_EXPERA}
                            );

                        req.session.idetificacion = user.pk_identificacion;
                        req.session.nombre = user.Nombre;
                        req.session.rol = user.Tipo_Usuario;
                        res.json({
                           mensaje:"¡AUTENTICACIÓN EXITOSA!",
                           token:tok
                            });
                    }else{
                        res.json({
                            mensaje:"¡USUARIO INCORRECTO...!",
                            token:''
                             });
                    }  
            });

        }else{
            res.send('usuario  autorizado...');
        }   
    } catch (error) {
        console.log(err);  
    }   
 
}






controlador.ArbirFormValidador=(req,res)=>{
    res.render("Frm_Login.ejs");

}

controlador.RegistrarUsuario=(req,res)=>{


    var ident=req.body.Identificacion;
    var nomb=req.body.Nombre;
    var dir=req.body.Dir;
    var tel=req.body.Tel;
    var sql =`insert into usuarios(pk_identificacion,nombre,Direccion,Telefono)values(${ident},'${nomb}','${dir}','${tel}')`; 
    conexion.query(sql,(err,rows)=>{ 

        if(!err){
            res.json({
                titulo:"Mensaje",
                mensaje:"Usuario registrado con éxito..!!",
                icono:"success"
            });
         }else{
             res.json({
                 titulo:"Error",
                 mensaje:"Error al registrar usuario - "+err,
                 icono:"error"
             });
         }

    });



  
};



module.exports=controlador;