const mysql=require("mysql");

var conexion=mysql.createConnection({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password:process.env.DB_PASSWORD ,
    database:process.env.DB_DATABASE
    });

    conexion.connect((err)=>{
        if(!err){
            console.log('Conectado al motor de base de datos de MySql');
          
        }
        else{
            console.log('No se conecto al motor de base de datos de MySql :'+err);
        }
    });    

module.exports=conexion;