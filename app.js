const express= require('express'); 
const bodyparser= require("body-parser"); //Se importa el modulo body-parser para recivir parametros 
const session = require('express-session');


const dotenv = require('dotenv');



const Servidor = express(); 


// Se configura las variables de entorno
dotenv.config({
    path: './env/.env'
});


Servidor.use(session({
    secret: 'Clavesecreta',
    resave: true,
    saveUninitialized: true
}))

// Se configura los directorios publicos
Servidor.use(express.static(__dirname+'/public'));

// 
Servidor.use(bodyparser.json());//Se configura para recibir parametros json 
Servidor.use(bodyparser.urlencoded({extended:false}));// Se configura para recibir parametros de formularios 
 



// Establecer el motor de plantillas
Servidor.set('view engine','ejs');
Servidor.set('views',__dirname+'/views'); 

Servidor.use(require("./routes/Route.Producto"));
Servidor.use(require("./routes/Route.Usuario"));
Servidor.use(require("./routes/Route.Compra"));
Servidor.use(require("./routes/Route.Reportes"));
Servidor.use(require("./routes/Route.Factura"));


Servidor.use(function(req,res,next){
if(!req.user){
    res.header('Cache-Cotrol','private, no-cache,no-store,must-revalidate');
    next();
}
});




Servidor.listen(3000,()=>{ 

    console.log("El servidor se esta ejecutando en el puerto 3000"); 

}); 