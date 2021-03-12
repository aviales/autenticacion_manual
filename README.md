# Actividad Presencial I
## Autenticación Manual desde cero


Para poder realizar este actividad debes haber realizado los cursos previos junto con los videos online correspondientes a la experiencia XXX.


El objetivo de este ejercicio es la implementación de un sistema de autenticación sin incluir dependencias externas.

## Setup

Forkear el proyecto a tu cuenta de Github y luego clonar en tu entorno de desarrollo local

```
git clone git@github.com:TuGithub/manual_jam.git

cd manual_jam

rails db:migrate

rails s
 ```
Revisa el proyecto partiendo por las rutas. Puedes revisar el archivo de rutas o directamente en la consola con _rails routes_.

## Comienzo de actividad.

PicStory es una aplicación para que diversos usuarios guarden sus historias y puedan compartirlas, pero esta aplicación no está terminada, el cliente necesita:

* Crear un modelo user con los campos name (string), email (string) y password_digest (string).

* Añadir el método **has_secure_password** al modelo User y agregar la gema bcrypt al Gemfile

* Añadir validación para que el campo email sea único.

* Generar la ruta necesarias para crear usuarios.

```
resources :users, only: [:new, :create, :show]
```
* Se recomienda no usar la herramienta scaffolding y hacer los métodos y vistas manualmente.

* Revisar las rutas creadas y actualizar el link del navbar para que el perfil de usuario apunte al show de users.

* Crear controlador y formulario para un nuevo usuario. El formulario debe ser generado utilizando el helper **form_with** añadiendo el modelo y debe implementar las clases de bootstrap (revisar docs).

* El formulario debe tener el campo para name, email y password y password_confirmation.

* Crear el método **user_params** para permitir solo los atributos name, email y password.

* En el controller users crear el método create. Este método debe generar una nueva instancia de User recibiendo como argumento user_params y almacenarlo en la BD. Luego, si el usuario es creado exitosamente, agregar @user.id a una variable de session (session[:user_id]) y redireccionar al root_path, en caso de error, que haga render del método new.

* Añadir rutas de sesiones para crear y destruir sesion de usuario. Usar los helpers en el navbar para iniciar y cerrar sesión

```
resources :sessions, only: [:create, :destroy, :new]
```
* Crear el controlador de sesiones con los métodos new, create y destroy

* Crear los métodos current_user y logged? en ApplicationHelper. HINT (El método logged? debe indicar si está presente la llave :user_id en el hash de sesión)

* Completar los links del navbar para inicio de sesión y cerrar sesión (toggle entre ambos según la evaluación del helper **logged?**).

* En caso de que no exista ningún usuario logeado mostar en el navbar links para registarse e iniciar sesión

* El método destroy debe resetear las variables de sesion y redireccionar a la página root.

* Añadir usuario actual a cada Story creada (Se requiere de migracion para agregar la referencia a la tabla Stories y ajustar las relaciones de los modelos).

* Crear vistas con las historias por usuario en el método show de user.
