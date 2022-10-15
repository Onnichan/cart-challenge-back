# ecommerce-back

Hola 😁 bienvenido este es el proyecto del backend para el ecommerce que es parte de una prueba tecnica para un puesto de Frontend developer

### BREVE EXPLICACIÓN

El backend esta realizado con las siguientes tecnologias.

### HERRAMIENTAS

- NODEJS
- SEQUELIZE
- MYSQL
- POSTMAN
- HUSKY, PRETTIER

### PASOS PARA CORRER LA APLICACIÓN DEL BACKEND

Primero tiene que tener instalado Nodejs y despues clonar este repositorio en su maquina local. 

``` git clone https://github.com/Onnichan/cart-challenge-back.git```

Despues de clonar el repositorio en su maquina, tiene que ejecutar este comando para instalar las dependencias

``` yarn install ```

Antes de correr el proyecto primero importe el archivo `database.sql` que esta en la raiz del proyecto, ese archivo importelo en su gestor de base de datos para mysql como puede ser Mysql Workbench o Phpmyadmin

Despues de instalar las dependencias del repositorio y correr el comando `yarn install`, deberá crear un archivo .env en la carpeta raiz del proyecto y dentro poner estas variables de entorno, si el archivo .env esta en el repositorio de github solamente comienze a editar los campos de las credenciales para mysql.

``` 
  PORT=3500 
  DATABASE=cart
  USER=root
  PASSWORD=123456
  JWT_SECRET=QWEQWEQWE795465749876546
```

NOTA: No cambie el campo `PORT=3500` que está por defecto en el archivo .env porque es asi como esta en el frontend para hacer las llamadas a la API del backend.

Una vez que ya se haya seguido los pasos, puede correr el proyecto con el siguiente comando

```yarn dev```

Por ultimo, en el proyecto también está un archivo `json` donde estan las peticiones HTTP para el backend, si gusta puede importarlo en su postman para testear la API REST

Gracias 