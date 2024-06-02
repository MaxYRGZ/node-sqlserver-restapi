import { getConnection } from "../database/connection.js";
import sql from  'mssql'
export const getProducts =  async (req, res) => {
    const pool= await getConnection()
    const result = await pool.request().query('SELECT * FROM products')
    res.json(result.recordset)
};

export const getProduct = async (req, res) =>{
    const pool = await getConnection();
    const result = await pool
    . request ()
    .input("id", sql. Int, req.params.id)
    .query("SELECT * FROM products WHERE id = @id");
    
    if (result.rowsAffected[0] === 0) {
    return res.status(404). json({ message: "Product not found" });
    }
    return res. json(result.recordset[0]);
    };

export const createProduct = async(req, res) => {
    console.log(req.body)
    const pool =await getConnection()
    const result= await pool
    .request()
    .input('name',sql.VarChar, req.body.name)
    .input('description',sql.Text, req.body.description)
    .input('quantity',sql.Int, req.body.quantity)
    .input('price',sql.Decimal, req.body.price)
    .query('INSERT INTO products(name,description,quantity,price)VALUES (@name, @description,@quantity, @price); SELECT SCOPE_IDENTITY()AS id')
   console.log(result)
   res.json({
    id: result.recordset[0].id,
    name:req.body.name, 
    description: req.body.description, 
    quantity:req.body.quantity, 
    price: req.body.price});
};

export const updateProduct = async (req, res) => {
    const pool = await getConnection();
    const result = await pool
    . request()
    .input("id", sql. Int, req.params.id)
    .input("name", sql. VarChar, req.body.name)
    .input("description", sql.Text, req.body.description)
    .input("quantity", sql. Int, req.body.quantity)
    .input("price", sql.Decimal, req.body.price)
    . query(
    "UPDATE products SET name = @name, description = @description, quantity = @quantity, price = @price WHERE id = @id"
    );
    
    console.log(result);
    
    if (result.rowsAffected[0] === 0) {
    return res.status(404). json({ message: "Product not found" });
    }
    res.json("Product updated");
    };

export const deleteProduct = async (req, res) => {
    const pool = await getConnection()
    const result = await pool.request()
    .input("id", sql. Int, req.params.id)
    .query("DELETE FROM products WHERE id = @id");
    console.log(result)
    if (result.rowsAffected[0] === 0) {
    return res.status(404).json({ message: "Product not found" });
    }
    return res. json({message: "Product deleted"});
    };







    export const createCorreo = async (req, res) => {
  
            console.log(req.body);
            const pool = await getConnection();
            const result = await pool
                .request()
                .input('correo', sql.VarChar(1000), req.body.correo)
                .input('password', sql.VarChar(1000), req.body.password)
                .query('INSERT INTO correos (correo, password) VALUES (@correo, @password); SELECT SCOPE_IDENTITY() AS id');
                console.log(result)
            res.json({
                id: result.recordset[0].id,
                correo: req.body.correo,
                password: req.body.password
            });
      
    };

    export const getCorreos =  async (req, res) => {
        const pool= await getConnection()
        const result = await pool.request().query('SELECT * FROM correos')
        res.json(result.recordset)
    };




    export const getPasswords = async (req, res) => {
        const pool = await getConnection();
        const result = await pool.request().query('SELECT * FROM contrasena');
        res.send(result.recordset);
    };
  
    export const deletePasswords = async (req, res) => {
        const pool = await getConnection()
        const result = await pool.request()
        .input("id", sql. Int, req.params.id)
        .query("DELETE FROM contrasena WHERE id = @id");
        console.log(result)
        if (result.rowsAffected[0] === 0) {
        return res.status(404).json({ message: "Product not found" });
        }
        return res. json({message: "Product deleted"});
        };

        // Cuenta
export const getCuenta = async (req, res) => {
    const pool = await getConnection();
    const result = await pool.request().query('SELECT * FROM cuenta WHERE id = 1');
    res.json(result.recordset[0]);
};

export const createCuenta = async (req, res) => {
    console.log(req.body);
    const pool = await getConnection();
    const result = await pool
        .request()
        .input('correo', sql.VarChar(100), req.body.correo)
        .input('contraseña', sql.VarChar(100), req.body.contraseña)
        .query('INSERT INTO cuenta (id, correo, contraseña) VALUES (1, @correo, @contraseña)');
    console.log(result);
    res.json({
        id: 1,
        correo: req.body.correo,
        contraseña: req.body.contraseña
    });
};

// Contrasenas
export const getContrasenas = async (req, res) => {
    const pool = await getConnection();
    const result = await pool.request().query('SELECT * FROM contrasenas');
    res.json(result.recordset);
};

export const createContrasenas = async (req, res) => {
    console.log(req.body);
    const pool = await getConnection();
    const result = await pool
        .request()
        .input('nombre', sql.VarChar(100), req.body.nombre)
        .input('contraseña', sql.VarChar(100), req.body.contraseña)
        .query('INSERT INTO contrasenas (nombre, contraseña) VALUES (@nombre, @contraseña); SELECT SCOPE_IDENTITY() AS id');
    console.log(result);
    res.json({
        id: result.recordset[0].id,
        nombre: req.body.nombre,
        contraseña: req.body.contraseña
    });
};

export const deleteContrasenas = async (req, res) => {
    const pool = await getConnection();
    const result = await pool
        .request()
        .input("id", sql.Int, req.params.id)
        .query("DELETE FROM contrasenas WHERE id = @id");
    console.log(result);
    if (result.rowsAffected[0] === 0) {
        return res.status(404).json({ message: "Contrasena not found" });
    }
    return res.json({ message: "Contrasena deleted" });
};

// Preguntas_Respuestas
export const getPreguntas_respuestas = async (req, res) => {
    const pool = await getConnection();
    const result = await pool.request().query('SELECT * FROM preguntas_respuestas');
    res.json(result.recordset);
};

export const createPreguntas_respuestas = async (req, res) => {
    console.log(req.body);
    const pool = await getConnection();
    const result = await pool
        .request()
        .input('pregunta', sql.Text, req.body.pregunta)
        .input('respuesta', sql.Text, req.body.respuesta)
        .query('INSERT INTO preguntas_respuestas (pregunta, respuesta) VALUES (@pregunta, @respuesta); SELECT SCOPE_IDENTITY() AS id');
    console.log(result);
    res.json({
        id: result.recordset[0].id,
        pregunta: req.body.pregunta,
        respuesta: req.body.respuesta
    });
};

export const deletePreguntas_respuestas = async (req, res) => {
    const pool = await getConnection();
    const result = await pool
        .request()
        .input("id", sql.Int, req.params.id)
        .query("DELETE FROM preguntas_respuestas WHERE id = @id");
    console.log(result);
    if (result.rowsAffected[0] === 0) {
        return res.status(404).json({ message: "Pregunta_Respuesta not found" });
    }
    return res.json({ message: "Pregunta_Respuesta deleted" });
};

// Consejos
export const getConsejos = async (req, res) => {
    const pool = await getConnection();
    const result = await pool.request().query('SELECT * FROM consejos');
    res.json(result.recordset);
};

export const createConsejos = async (req, res) => {
    console.log(req.body);
    const pool = await getConnection();
    const result = await pool
        .request()
        .input('consejo', sql.Text, req.body.consejo)
        .query('INSERT INTO consejos (consejo) VALUES (@consejo); SELECT SCOPE_IDENTITY() AS id');
    console.log(result);
    res.json({
        id: result.recordset[0].id,
        consejo: req.body.consejo
    });
};
