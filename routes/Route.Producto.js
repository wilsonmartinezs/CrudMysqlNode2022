
const express = require("express");

const ruta_producto = express.Router();

const controlador_producto = require("../controllers/Controller.Producto");
const controlador_usuario=require("../controllers/Controller.Usuario");





ruta_producto.get("/Listar_Productos",controlador_producto.Listar_Productos);

ruta_producto.get("/AbrirFormularioProducto",controlador_producto.AbrirFormularioProducto);


ruta_producto.post("/Registrar_Producto",controlador_producto.CargarImagen,controlador_producto.RegistrarProducto);


ruta_producto.post("/Actualizar_Producto/:id",controlador_producto.CargarImagen,controlador_producto.ActualizarProducto);



ruta_producto.get("/Eliminar/:producto",controlador_producto.ElimiarProducto);

ruta_producto.get("/Actualizar/:id",controlador_producto.AbrirFrmActProducto);






module.exports= ruta_producto;