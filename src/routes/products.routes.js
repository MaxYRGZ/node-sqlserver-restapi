import {Router} from 'express';
import { createConsejos, createContrasenas, createCorreo, createCuenta, createPreguntas_respuestas, createProduct, deleteContrasenas, deletePasswords, deletePreguntas_respuestas, deleteProduct, getConsejos, getContrasenas, getCorreos, getCuenta, getPasswords, getPreguntas_respuestas, getProduct, getProducts, updateProduct } from '../controllers/products.controllers.js';

const router = Router();

router.get('/productos', getProducts) ;

router.get('/productos/:id',  getProduct) ;

router.post('/productos',  createProduct) ;

router.put('/productos/:id',  updateProduct) ;

router.delete('/productos/:id',  deleteProduct) ;

router.get('/correos', getCorreos) ;

router.post('/correos',  createCorreo) ;

router.get('/contrasena', getPasswords);

router.delete('/contrasena/:id',  deletePasswords) ;


router.get('/cuenta', getCuenta) ;

router.post('/cuenta',  createCuenta) ;


router.get('/contrasenas', getContrasenas);

router.post('/contrasenas',  createContrasenas) ;

router.delete('/contrasenas/:id',  deleteContrasenas) ;


router.get('/preguntas_respuestas', getPreguntas_respuestas);

router.post('/preguntas_respuestas',  createPreguntas_respuestas) ;

router.delete('/preguntas_respuestas/:id',  deletePreguntas_respuestas) ;


router.get('/consejos', getConsejos);

router.post('/consejos',  createConsejos) ;



export default router;
