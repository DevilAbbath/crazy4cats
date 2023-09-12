# crazy4cats

Blog sobre gatos creado en RoR.

## Descripción

Esta página funciona principalmente mediante el uso de un CRUD para el manejo de las noticias asi como comentarios dejados por otros usuarios y su gestión a través de una base de datos, en este caso PostgreSQL. Ademas hace uso de las relaciones N a N con un sistema de reacciones,  Entre sus funcionalidades destacan:

- Crear nuevas noticias y comentarios que serán almacenados en la base de datos.
- Editar las noticias y comentarios creados con un solo clic.
- Borrar una noticia si no te gusta su contenido o piensas que no es lo mejor lo cual borrara también los comentarios que tuviera.
- Mostrar en su índice todos las noticias creadas, mostrando siempre las últimos noticias al comienzo.
- Muestra los comentarios de cada noticia.
- Ingresa con tu cuenta o crea una propia.
- Los comentarios y publicaciones solo podrán ser borradas por administradores o el mismo usuario que creo la publicación y/o comentario.
- Visitantes podrán dejar sus comentarios en las publicaciones.
- Solo los administradores podrán borrar o editar comentarios dejados por visitantes.

## Importante

Por defecto todo usuario nuevo de la pagina se le asigna el rol de user, si deseas ingresar y probar la pagina como administrador usa la siguiente cuenta: (esto solo en caso de que la pagina este en Heroku u otro servicio)

- mail: <master@senkutech.cl>
- password: abc123

Si usas este proyecto de forma de forma manual puedes crear tu cuenta de administrador en la consola de rails con los siguientes comandos:

```bash
# para ingresar a la consola de rails
rails c

# Cambia el mail, password, pero recuerda dejar el role "admin"
User.create(email: 'master@senkutech.cl', password: 'abc123', role: 'admin')
```

Listos con esos pasos ya podrás probar la pagina como administrador.

Si deseas probar la pagina como un Usuario normal solo crea una cuenta siguiendo el link en la barra de navegaciones

## Visuales

Vista principal de la página:

![Vista principal](/public/1.png)

Si deseas editar una publicación, no te preocupes:

![Vista visitante](/public/visitors.png)

Agrega comentarios de manera sencilla:

![Vista admin](/public/adminView.png)

Muestra los comentarios:

![loguea o crea una cuenta](/public/login.png)

## Let's get Started 🚀

Estas instrucciones te guiarán para obtener una copia de este proyecto en funcionamiento en tu máquina local con fines de desarrollo y pruebas.

### Pre-requisitos 📋

- Sistema Operativo: Windows, Ubuntu o macOS
- Lenguaje de programación: Ruby 3.2.2
- Framework Rails: 7.0.7
- PostgreSQL: 14.8

### Install 🔧

Clona el repositorio con el siguiente comando:

```bash
git clone https://github.com/DevilAbbath/crazy4cats
```

En la terminal, accede a la carpeta donde se encuentra el repositorio y ejecuta (recuerda que para que esto funcione, debes tener instalado Ruby y la gema bundle):

```bash
bundle install
```

Inicia la base de datos con el siguiente comando:

```bash
rails db:create db:migrate db:seed
```

Finalmente, ejecuta el proyecto con el siguiente comando y ve a la dirección IP que aparecerá en la consola:

```bash
rails s
```

## Deployment 📦

Instrucciones para desplegar en Heroku (cabe destacar que Heroku trabaja con GitHub por lo que podemos desplegar directamente del repositorio y debemos de estar logeados):

Ingresamos al siguiente link para entrar a [Heroku](https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli)

Luego clickeamos en el boton "New/Create new app"

![vista heroku main](/public/h1.png)

Esto nos llevara al formulario completamos los campos y seleccionamos "Create app"

![vista heroku form](/public/h2.png)

Se nos mostrara la siguiente pantalla en la cual se nos mostraran las opciones para realizar el deployment, en este caso seleccionamos la opcion GitHub y nos mostrara los repositorios asociados a nuestra cuenta en Github.

![vista heroku form](/public/h3.png)

Dentro del cuadro de texto al lado de nuestro nombre de usuario debemos de especificar cual es el repositorio que usaremos para hacer el deployment, este lo buscara y damos click en el boton Connect

![vista heroku form](/public/h4.png)

Luego vamos al final donde podremos seleccionar la rama a desplegar de manera manual y seleccionamos Deploy. Al hacer esto se realizara la instalacion de nuestro proyecto

![vista heroku form](/public/h5.png)

Una vez hecho el deployment, nos dirigimos a Resources para vincular y ejecutar postgres en conjunto con la creacion y migracion de nuestra BBDD desde ruby

![vista heroku form](/public/h6.png)

En el apartado de adons buscamos Postgresql y seleccionamos el mostrado en la imagen

![vista heroku form](/public/h7.png)

Ahora nos dirigimos a nuestra consola de comandos en la opcion "More/Run Console"

![vista heroku form](/public/h8.png)

Dentro del bash finalmente usamos los siguientes comandos

```bash
rails db:create
rails db:migrate
rails db:seed
```
![vista heroku form](/public/h9.png)

Si seguiste los pasos hasta aquí, deberías poder ver la vista index de la aplicación.

![vista principal](/public/1.png)

## Construido Con 🛠️

- [Ruby](https://www.ruby-lang.org/es/) - El lenguaje utilizado
- [Ruby on Rails](https://rubyonrails.org) - El framework web utilizado
- [Ruby gems](https://rubygems.org) - Gestión de dependencias
- [Postgresql](https://www.postgresql.org) - Sistema de base de datos
- [Bootstrap](https://getbootstrap.com/) - Framework de CSS
- [Devise](https://github.com/heartcombo/devise) - Gema para autentificación y permisos.

## Soporte

Si tienes algún problema o sugerencia, por favor abre un problema [aquí](https://github.com/DevilAbbath/crazy4cats/issues).

## Versionado 📌

Use [Git](https://git-scm.com) para el versionado.

## Autores ✒️

- **Erick Jaime Jara** Encuéntrame en [github](https://github.com/DevilAbbath)
