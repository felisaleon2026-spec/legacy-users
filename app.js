const express = require('express');
const app = express();
const PORT = process.env.PORT || 8000;

app.get('/', (req, res) => {
    res.send({
        status: "ONLINE",
        modulo: "Autenticación de Usuarios (Legacy)",
        entorno: process.env.NODE_ENV || "desarrollo",
        mensaje: "Servicio de Directorio Activo legacy operando."
    });
});

app.listen(PORT, () => {
    console.log(`Modulo de Usuarios corriendo en puerto ${PORT}`);
});