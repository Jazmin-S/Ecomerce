# 📑 Base de datos

### Descipción
Esta rama contiene la **estructura de la base de datos** del sistema de gestión del restaurante. Incluye los scripts SQL para la creación de tablas, inserción de datos y consultas optimizadas para informes.


## 🏗  **Modelo de base de datos**

La base de datos de este proyecto ha sido diseñada para gestionar eficientemente:  
✅ **Órdenes** realizadas por los clientes.  
✅ **Registro de platillos** y sus recetas.  
✅ **Ventas** con detalle de montos e impuestos.  
✅ **Usuarios** (meseros, administradores, consultores).

## Tecnologías utilizadas
-   **Gestor de base de datos:** MySQL/PostgreSQL
-   **Lenguaje:** SQL
-   **Herramientas:** MySQL Workbench / PgAdmin
-   **ORM recomendado:** Hibernar (si se usa con Java)

## 📁 **Estructura del proyecto**
/database  
│── /scripts  
│   ├── schema.sql     / Creación de tablas y restricciones  
│   ├── data.sql       / Datos iniciales para pruebas  
│   ├── queries.sql    / Consultas más utilizadas  
│── /models  
│   ├── modelo_ER.png  / Diagrama de entidad-relación  
│   ├── modelo_relacional.png  / Versión normalizada  
│── /docs  
│   ├── Normalizacion  / Explicación de la normalización  
│── README        / Documentación de la base de datos  

## 🔧 **Cómo configurar la base de datos**

1. Crear la base de datos en MySQL o PostgreSQL
`CREATE DATABASE restaurante;
USE restaurante;
`
2. Ejecutar los scripts de creación de tablas
 `SOURCE scripts/schema.sql;`
 3. Insertar datos de prueba
 `SOURCE scripts/data.sql;
`
## 🔍 Consulta SQL de ejemplo

1️⃣ Órdenes tomadas por un mesero específico

        SELECT O.idOrden, O.numMesa, O.Fecha_hora 
    FROM Orden O
    JOIN Mesero M ON O.idMesero = M.idMesero 
    WHERE M.nombre = 'Jazmin';
 2️⃣ Platillos más vendidos del mes

     SELECT P.nombre, SUM(PC.cantidad) AS cantidadVendida
    FROM Platillos_Consumidos PC
    JOIN Platillo P ON PC.idPlatillo = P.idPlatillo
    JOIN Ventas V ON PC.FolioVenta = V.idPago
    WHERE MONTH(V.fecha) = 12 AND YEAR(V.fecha) = 2024
    GROUP BY P.idPlatillo
    ORDER BY cantidadVendida DESC;
 3️⃣ Informe de ventas por día

     SELECT COUNT(*) AS cantidadVentas, SUM(Pago.Monto) AS totalVentas
    FROM Ventas V
    JOIN Pago ON V.idPago = Pago.idPago
    WHERE CAST(V.fecha AS DATE) = '2024-12-01';
  

# 📌 **Futuras mejoras**


🚀 Optimización de índices para mejorar consultas.  
🚀 Implementación de procedimientos almacenados.  
🚀 Análisis de datos para mejorar estrategias de negocio.

>Esto nos garantiza un almacenamiento estructurado y seguro de la información, permitiendo generar **informes clave para la toma de decisiones** .
