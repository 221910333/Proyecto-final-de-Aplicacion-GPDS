# Proyecto-final-de-Aplicacion-GPDS
Sitio web de venta de lavaderos y productos artesanales, desarrollado con framework LARAVEl

# Descripcion del proyecto: 
Sitio web enfocado en la venta de lavaderos artesanales, con la ayuda de herramientas de software Lleva por nombre "Fabrica de lavaderos el Tigre".
Es un servicio que permite la compra de lavaderos hechos de manera artesanalmente, de diferentes materiales, tamaños y colores.

Contiene dos roles de usuario:
    Usuario:
        1.- Crear cuenta
        2.- Iniciar sesión con cuenta creada
        3.- navegar por los distintos productos (lavaderos, cruces, floreros, libros etc.)
        4.- podrá ver más sobre la información del producto y agregar al carrito
        5.- en la parte superior derecha podrá visualizar el icono de un carrito donde al dar clic,
        este lo direccionara a su tabla de carrito en este podrá ver los  productos que ha agregado
        6.- En su carrito podrá vaciar carrito, eliminar del carrito (dar clic al carrito = la catidad de producto)
        7.- Al dar click en finalizar compra lo direccionara a pagar con paypal si no tiene cuenta "le dira que no se pudo realizar la compra", 
        lo mandara a una vista donde podra descargar un pdf de su compra o un boton que lo direccionara a su historial de compras.
     Administrador: 
            El sistema permitirá el acceso a la lista de productos, usuarios, pedidos este estará restringido solamente a un grupo 
            de usuarios autorizados (administradores), para poder ver todo el inventario, el administrador puede agregar, eliminar, editar y dar de
            alta nuevos administradores, en la tabla de productos podra descargar excel de historial de productos dados de alta.
            

# Estado del proyecto: En desarrollo.(LARAVEL)

# Requisitos del entorno de desarrollo para la integración:
    *VISUAL STUDIO CODE
    *XAMPP
    *NAVEGADOR
    *PHP (version=> 8)
    
# Guía para la instalación y el funcionamiento:

    *BASE DE DATOS
    Para no perder informacion importante en la base de datos realizar una restauracion de base de datos en MySQL 
    (para esta procedimiento se diseño un manual con  capturas de pantalla que puede consultar en el sigueinte enlace).
    https://drive.google.com/file/d/1-RulEPxkkprKqC_J_w4x4R3BhjJ7eTcU/view?usp=sharing

    *APLICACION WEB
    1.- Descomprimir archivo El_tigre.zip
    2.- Abrir carpeta descomprimida con VISUAL STUDIO CODE
    3.- Abrir una terminal de visual studio code, verificar que este en el directorio de la carpeta 
    4.- Ejecutar el siguiente comando php artisan serve
    5.- En su navegador colocar la suiente URL http://127.0.0.1:8000/

# Bugs conocidos y posibles correcciones de errores:
    404 No encontrado(mal direccionamiento) abandonar pagina mientras se le continua dando mantenimiento
    "SQLSTATE[42S02]" en el .env no esta bien configurada la base de datos(posibles errores de base de datos) 
  
  
