
const express = require("express");
const controlador = require("../controllers/Controller.Usuario");
const ruta_usuario= express.Router();

const controlado_usuario=require("../controllers/Controller.Usuario");

ruta_usuario.get("/AbrirFormPricipal",controlado_usuario.AbrirFrm_Principal);
ruta_usuario.get("/",controlado_usuario.ArbirFormValidador);
ruta_usuario.post("/ValidarUsuario",controlado_usuario.ValidarUsuario);


ruta_usuario.get("/CerrarSesion",controlado_usuario.cerrarSesion);

ruta_usuario.post("/Registrar_Usuario",controlado_usuario.VerificarToken,controlado_usuario.RegistrarUsuario);
ruta_usuario.get("/Frm_usuario",controlado_usuario.AbrirFrm_usuario);
ruta_usuario.get("/Listar_Usuarios",controlador.Listar_Usuarios);
ruta_usuario.post("/Eliminar_Usuario",controlador.Eliminar_Usuario);

ruta_usuario.post("/Buscar_Usuario",controlador.Buscar_Usuario);

ruta_usuario.post("/Actualizar_usuario",controlador.Actualizar_usuario);






module.exports= ruta_usuario;