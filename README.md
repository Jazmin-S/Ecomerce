# ✒️Frontend

### 📌 **Descripción**
Esta rama contiene la **interfaz gráfica** del sistema de gestión del restaurante, desarrollada en **JavaFX** . Su propósito es proporcionar una experiencia intuitiva y eficiente para los usuarios, permitiéndoles gestionar **órdenes, platillos y ventas** a través de una interfaz visual.


## 🎨 **Características principales**

✅ Interfaz moderna y fácil de usar con JavaFX.  
✅ Visualización y gestión de órdenes en tiempo real.  
✅ Registro y modificación de platillos con su receta.  
✅ Acceso diferenciado para **administradores** y **consultores de información** .  
✅ Integración con la base de datos mediante consultas SQL.


## 🛠️ **Tecnologías utilizadas**
-   **Idioma principal:** Java 17 o superior
-   **Interfaz gráfica:** JavaFX
-   **Gestión de dependencias:** Maven
-   **Conexión a la base de datos:** JDBC (MySQL/PostgreSQL)
-   **Diseño UI:** CSS personalizado

## 📁 **Estructura del proyecto**

/frontend  
│── /src  (archivo comprimido)  
│   ├── /controllers  # Controladores para manejar eventos en la UI  
│   ├── /views        # Archivos FXML o código de la UI  
│   ├── /models       # Clases de datos para manejar la información  
│   ├── /utils        # Clases auxiliares para funcionalidades extra  
│   ├── Main.java     # Punto de entrada de la aplicación  
│── /assets           # Recursos gráficos, imágenes, CSS, íconos  
│── /docs             # Documentación del frontend  
│── README.md         # Archivo de documentación de esta rama  
│── pom.xml           # Archivo de configuración de Maven  

## 🚀 **Requisitos para ejecutar el frontend**
Antes de ejecutar la aplicación, asegúrese de cumplir con los siguientes requisitos:

1️⃣ **Instalar Java 17 o superior.**  
2️⃣ **Configura JavaFX** en tu entorno de desarrollo.  
3️⃣ **Tener la base de datos configurada** y accesible.  
4️⃣ **Clonar esta rama** en tu máquina local.

## 🔧 **Cómo ejecutar la aplicación**

    # Clona el repositorio y accede a la rama frontend
    git clone -b frontend https://github.com/tu_usuario/proyecto.git
    cd proyecto/frontend
    # Compila y ejecuta la aplicación (usando Maven)
     mvn clean javafx:run

## ⚡ **Funciones implementadas**
🔹 **Inicio de sesión:** Diferentes vistas para administrador y consultores.  
🔹 **Gestión de órdenes:** Creación, edición y cancelación de órdenes.  
🔹 **Catálogo de platillos:** Registro y visualización de platillos con sus detalles.  
🔹 **Reportes:** Generación de reportes de ventas y órdenes por mesero.

## 📌 **Futuras mejoras**
🚀 Implementación de notificaciones en tiempo real.  
🚀 Diseño responsivo para diferentes tamaños de pantalla.  
🚀 Mejora en la seguridad del acceso al sistema.

## 📌 **Conclusión**

La implementación del frontend en **JavaFX** permite ofrecer una **interfaz intuitiva, moderna y funcional** para la gestión eficiente del restaurante. A través de esta aplicación, los usuarios pueden **administrar órdenes, visualizar platillos y generar informes** de manera sencilla y rápida.

Gracias a la integración con la base de datos, el sistema garantiza que la información se gestiona de forma **estructurada y en tiempo real** . En el futuro, se pueden agregar mejoras como **notificaciones en vivo, optimización del diseño y nuevas funcionalidades** para mejorar aún más la experiencia del usuario. 
