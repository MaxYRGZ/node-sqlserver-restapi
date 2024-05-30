import {Router} from 'express';
import { createCorreo, createProduct, deletePasswords, deleteProduct, getCorreos, getPasswords, getProduct, getProducts, updateProduct } from '../controllers/products.controllers.js';

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

export default router;
