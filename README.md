<div align="center">

<h1>YutMiu-SMX2</h1>

<img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/3296b3ea-68eb-482f-ace5-3f9f45dc7233" />

</div>

#

<details>
<summary><h2>Índice</h2></summary>

- 1.Introducción

- 2.Briefing 

- 3.Materiales físicos y lógicos

- 4.Arquitectura del software

- 5.Tecnologías a utilizar

- 6.Red

- 7.Web

- 8.Servicios

- 9.Diagrama Gantt

- 10.Conclusiones

- 11.Webgrafia

- Plan de Contingencia

</details>

#

<details>
<summary><h2>1.Introducción</h2></summary>

Nuestra web va a tratar sobre música en streaming y donde los usuarios puedan ir comentando y recomendando sus canciones preferidas y dar sus opiniones respecto a la música que han escuchado. 
o que les han recomendado. Va a tener un extenso catálogo de canciones de diferentes estilos para satisfacer a las personas que utilicen nuestra página. 
Queremos que nuestros usuarios disfruten compartiendo sus canciones favoritas, opiniones y debates entre ellos y leer opiniones sobre otras músicas.

Somos un equipo de dos estudiantes que queremos hacer una web de música y hemos estado buscando webs y aplicaciones con este tipo de contenido para inspirarnos. Contenidos del tipo: música, opiniones y valoraciones de las canciones disponibles en la web.

¿Qué funcionalidades ofrecerá a los usuarios?
-

Las funciones que vamos a implementar en nuestra página web van a ser:

- Crear una cuenta para poder guardar tus músicas favoritas.

- Si te vinculas, podrás tener amigos que te podrán recomendar música.

- Puedes hacer una lista personalizada de tus músicas favoritas.

- Cada canción tendrá una sección de comentarios donde podrás escribir tu opinión sobre cualquier canción y también poner del 1 al 5 cuánto te ha gustado.

Los datos que se deben guardar serán los siguientes:
-

El nombre del usuario:
  
- Correo electrónico o/e teléfono
  
- Edad y para que lo quiere utilizar la web
  
- Contraseña
  
- Fecha de registro
  
- Musica publicada
  
- Comentarios publicados
  
- Música que ha estado escuchando los últimos 7 días
  

Datos de la web:

- Música que hay publicada
  
- Comentarios publicados con fecha y hora
  
- Usuarios registrados
  
- Usuarios conectados
  
- Gente que ha descubierto un easter egg con una canción especial
  
- Y un registro de las canciones más escuchadas y menos escuchadas
  
- Valoración mediante un sistema de puntuación que utilizaremos en la web

- Para el tiempo→DATETIME

- Para la fecha y la hora→Date

- Puntuación de las canciones→Utilizaremos un sistema llamado Float o Decimal para números más precisos.

- Comentarios publicados→ Date y Text


¿Cómo se relacionan unas entidades con otras?
-

En nuestra web implementaremos una función para poder hablar y compartir músicas pero para tener esta función lo que tendremos que hacer es registrarse, luego de eso podrás buscar el nombre de todos los usuarios, luego en un apartado podrás aceptar la solicitud o rechazarla, si aceptas la solicitud podrás hablar con el usuario, enviarle músicas y también listas de música que él tenga, también se pueden poner opiniones en cada música y todos los usuarios podrán verlos y comentar.

- Registro en la tabla Usuario:

- Nombre: Juan Pérez

- Email: juanp@gmail.com

- Fecha de registro: 10/09/2025

- Amigos conectados: 2 amigos online

- Amigos deconectados:0 amigos offline

- Listas de música

- Horas que has estado utilizando la aplicación:367 horas

- Publicaciones subidas en los ultimos 7 dias: Comentario→ “Hola” 

- Chats de amigos

</details>

#

<details>
<summary><h2>2.Briefing</h2></summary>

Propuestas iniciales y objetivos:
-

- 1.Hacer como una especie de Spotify pero sin anuncios.

- 2.Hacer una web como YouTube.

- 3.Hacer una especie de chat.

- 4.Hacer un foro de opiniones como Reddit.

Al final vamos a combinar algunas de estas ideas; vamos a hacer una web de música en streaming y que los usuarios puedan ir comentando y recomendando músicas y dar sus opiniones respecto a la 
música que han escuchado o que les han recomendado. Básicamente, hemos escogido hacer esto porque a ambos nos gusta la música, y además nos pareció buena idea que hubiese un chat con comentarios y opiniones de lo que la gente escucha y ve.

Objetivos del Proyecto:
-

Nuestro objetivo es hacer la web funcionable sin errores y que la gente pueda disfrutar y gaudir de este proyecto, ya que lo que buscamos es que la gente la utilice y no solo ara que sea para un proyecto sino que queremos que se utilice de verdad, yo creo que si le ponemos empeño lo podremos lograr.
Objetivo del Publico.

Nosotros queremos llegar a un público específico que le encante la música, le gusta mucho opinar y debatir e/o crear debates entre ellos y leer opiniones sobre otras músicas que no han escuchado o/e han escuchado pero no sabían que otra gente sabía de la existencia de esa música, también esperamos llegar a un público que quiera ser músico y le guste hacer su propia música, publicarla y que los usuarios la escuchen.

Material Necesario:
-
Vamos a utilizar una app externa que funciona mediante comandos que se llama FFMpeg que sirve para comprimir audios o videos a diferente formato,
también necesitaremos una base de datos, un docker, y máquinas virtuales que hagan de servidores para dar seguridad y estabilidad a nuestra web.

</details>

#

<details>
<summary><h2>3.Materiales físicos y lógicos</h2></summary>
Para este proyecto vamos a usar sobre todo dos ordenadores.
En uno de ellos tendremos montado un servidor Linux en  VirtualBox, que es donde vamos a usar FFmpeg para convertir música antes de subirla a nuestra web.
También instalaremos Docker Desktop porque nos va a hacer falta para levantar la web y otros servicios sin tener que instalarlos a mano uno por uno.
En el segundo ordenador trabajaremos todo lo relacionado con el diseño de la página web, y además vamos a montar Pi-hole, que lo usaremos como servidor DNS y DHCP para que toda la red del proyecto esté controlada y funcione como toca.

</details>

#

<details>
<summary><h2>4.Arquitectura del software</h2></summary>
La idea básica es estructurarlo de tal manera que cada parte del proyecto tenga su propio espacio y no esté todo mezclado.
Utilizaremos Visual Studio Code para la programación de la web, ya que es lo más práctico para nosotros.
Después, utilizaremos Pi-hole como servidor DNS y DHCP, ya que su configuración es sencilla y nos permite gestionar toda la red sin complicaciones.
Para la parte de los servicios y el backend, utilizaremos Docker Desktop, que es donde desplegaremos elementos como MySQL o Apache, entre otros, sin necesidad de instalar nada directamente en el ordenador.
Además, contaremos con un servidor Linux exclusivamente para FFmpeg, que nos permitirá cargar y administrar música en streaming en nuestro sitio web.
Además de todo esto, deseamos establecer una VPN con Cloudflare, emplear Nginx como proxy inverso e intentar instalar Proxmox para gestionar máquinas virtuales de manera más profesional.
</details>

#

<details>
<summary><h2>5.Tecnologías a utilizar</h2></summary>
  
Lista detallada de todas las tecnologías que utilizaremos:
-

- Visual Studio Code → para el desarrollo web.

- HTML, CSS y JavaScript → con el propósito de diseñar y hacer que el sitio funcione.

- Docker Desktop → para trabajar con Apache, MySQL, contenedores y servicios.

- MySQL → base de datos para web.

- Apache / Nginx → servidor de la web y proxy inverso.

- Pi-hole → servidor de DHCP y DNS.

- FFmpeg → administración y transformación de audio para su transmisión en línea.

- Linux (en VirtualBox) → Servidor destinado a FFmpeg.

- VPN de Cloudflare → acceso a distancia y seguridad.

- Proxmox (si es posible) → administración avanzada de máquinas virtuales.

</details>

#

<details>
<summary><h2>6.Red</h2></summary>
  
Aquí podemos ver cómo vamos a organizar la web y los servidores correspondientes:

Estructura y diagrama de la red:
-

<details>
<summary><h3>Estructura básica de la red</h3></summary>

Hemos organizado la importancia de cada tabla con Core (Tabla principal), subtablas y utilidades:

<img width="503" height="350" alt="image" src="https://github.com/user-attachments/assets/012ccfd6-3bb4-4a65-8fb2-72b1384c4f94" />
<img width="503" height="282" alt="image" src="https://github.com/user-attachments/assets/bbdb2130-006c-4c67-b657-c5edd3c4b526" />

<h3>Core:</h3>

- Musicas: En nuestra web la tabla de musica seria la tabla principal porque basicamente es la funcion principal de nuestra pagina web. 

<h3>Subtablas:</h3>

- Artistas: Los artistas estan en el apartado de subtablas por que no es una utilidad es solo un grupo especificos de personas y no es una utilidad.

<h3>Utilidades:</h3>

- Valoraciones: Este sera un apartado bastante importante en nuestro proyecto ya que es lo unico que nos diferencia entre otras webs de musica.

- Buscardor: El buscados es fundamental a la hora de una web de musica y es una de las utilidades mas importantes de cualquier web de musica.

- Usuarios: Este es el apartado mas importante de nuestra web ya que gracias a los usuarion podremos utilizar la gran variedad de herramientas que ofrecemos.

</details>

<br>

<details>
<summary><h3>Diagrama de la red</h3></summary>

Asi es como tenemos estructurada nuestra red implementada

<img width="905" height="749" alt="image" src="https://github.com/user-attachments/assets/82f3d9ba-9db0-4032-8da3-78f2baa8cc26" />

</details>

<br>

 Listado de tareas sobre como nos lo vamos a montar y organizar nuestro proyecto:
 -

<details>
<summary><h3>Objetivo1: Implementar un servidor web:</h3></summary>
  
<h4>Objetivo 1: Implementar un servidor web</h4> 
  
- 1.1
 [Raul] Instalar y configurar el servidor básico.
 CP1.2 – Que el servidor funcione en red.


- 1.2
 [Raul] Configurar los permisos de los usuarios y cosas de seguridad.
 CP1.2 – Que el sistema operativo en red esté listo y seguro.


- 1.3
 [Ignasi] Instalar y configurar los servicios web: NGINX, base de datos, PHP y PHPMYADMIN.
 CP3.1.1 – Que todo el servidor web funcione sin problemas.
Aquí también iría FFMPEG para poder escuchar la música en streaming y dejar todo listo para que los usuarios puedan subir canciones y playlists.

</details>

<br>

<details>
<summary><h3>Objetivo2: Implementar un servidor web:</h3></summary>
  
<h4>Objetivo 2: Programar la front-page</h4> 

- 2.1
 [Ignasi] Hacer la estructura del index.html con CSS.
 CP2.1.6 – Que se vea bien y que funcione todo en el navegador.

- 2.2
[Ignasi] Crear el header y el footer que se vean en todas las páginas.
 CP2.1.6 – Que todo sea consistente y fácil de usar.

- 2.3
 [Raul] Hacer el formulario de contacto.
 CP2.1.6 – Que se pueda enviar información y que funcione sin errores.
Además, en esta parte programaremos cosas como: escuchar música, comentar, valorar canciones, crear playlists y agregar amigos. Todo debe ser fácil de usar y que la página quede bien.

</details>

<br>

Ahora vamos presentar el diagrama de la base de datos:
-

<details>
<summary><h3>1.¿Qué datos son necesarios para mi aplicación?</h3></summary>

Para que mi app funcione bien necesitamos guardar varias cosas:

- Usuarios → toda la info de cada persona que se registre (nombre, email, contraseña…).

- Canciones → título, artista, archivo de música, duración, fecha de publicación…

- Playlists → nombre de la lista, quién la creó y qué canciones contiene.

- Comentarios → quién comenta, sobre qué canción, qué dice y cuándo lo hace.

- Valoraciones → quién da la nota a qué canción y qué puntuación le pone.

- Amigos → las relaciones entre usuarios, es decir, quién es amigo de quién.

</details>

<br>

<details>
<summary><h3>2.¿Qué datos voy a pedir al usuario y qué tipos de usuarios voy a tener?</h3></summary>

Datos que voy a pedir al usuario:

- Nombre de usuario

- Email

- Contraseña

- Foto de perfil 

Tipos de usuarios:

- Usuario normal → puede escuchar música, comentar canciones, valorar y crear playlists.

- Admin (opcional) → podría gestionar canciones, usuarios o comentarios si lo necesitamos.

</details>

<br>

<details>
<summary><h3>3.¿Qué clave primaria voy a implantar en cada tabla y cómo las relacionaré?</h3></summary>

- Usuarios → id_usuario

- Canciones → id_cancion

- Playlists → id_playlist

- Comentarios → id_comentario

- Valoraciones → id_valoracion

- Amigos → id_amigo

Relaciones principales:

- Una playlist pertenece a un usuario, así que un usuario puede tener muchas playlists.

- Una canción puede estar en muchas playlists, por eso necesitamos una tabla intermedia tipo “playlist_cancion”.

- Un comentario pertenece a un usuario y a una canción, para saber quién dijo qué y dónde.

- Una valoración pertenece a un usuario y a una canción, para calcular la nota media.

- Una relación de amigos une dos usuarios, así podemos ver quién es amigo de quién.

</details>

<br>

Lista de objetivos y tecnologías:
-

<details>
<summary><h3>Lista de objetivos y funcionalidades del proyecto</h3></summary>

| ID  | Prioridad | Objetivo / Funcionalidad | Descripción                                                                                                                                                                                                 | Fecha Entrega   | Estado     |
|-----|-----------|---------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|------------|
| ID0 | Alta      | Registro de usuarios      | Esta opción es súper importante porque si inicias sesión podrás tener todas las funciones de la web: listas de música, amigos, valoraciones… Sin iniciar sesión solo podrás escuchar canciones.             | 20/02/2026      | Pendiente  |
| ID1 | Alta      | Músicas (Reproducción)   | Es lo más básico de la web. Sin esto la web no sirve. Utilizaremos **FFmpeg** para poder subir y escuchar música en streaming. Es lo que hace que todo el sistema funcione.                                 | —               | Pendiente  |
| ID2 | Alta      | Listas de música          | Los usuarios podrán guardar sus canciones favoritas en playlists personalizadas. Podrán tener varias listas diferentes según sus gustos.                                                                     | —               | Pendiente  |
| ID3 | Media     | Amigos y chats            | Los usuarios podrán añadirse como amigos, hablar por chat y enviarse música por ahí. Esto hace la web más social y divertida.                                                                                | —               | Pendiente  |
| ID4 | Media     | Valoraciones              | Los usuarios podrán poner notas a las canciones (de 1 a 5). Así se puede ver qué canciones molan más para la comunidad.                                                                                     | —               | Pendiente  |
| ID5 | Alta      | Buscador                  | Función clave para que la gente encuentre música rápido. Podrá buscar canciones por título, artista, playlists, etc.                                                                                        | —               | Pendiente  |
| ID6 | Alta      | Perfil de usuario         | Aquí el usuario podrá ver y editar su perfil: cambiar la descripción, foto, ver sus valoraciones, comentarios, etc. También podrá ver el perfil de sus amigos.                                               | —               | Pendiente  |

</details>

<br>

<details>
<summary><h3>Tecnologías y Componentes del Sistema</h3></summary>

| Componente del sistema | Tecnología / Framework | Versión | Puerto | Descripción de uso o requisitos | Documentación |
|------------------------|------------------------|---------|--------|---------------------------------|---------------|
| Hardware | Procesador Intel + 8GB RAM | Última | 8080 / 3033 | Dos ordenadores: uno con Windows Server 2016 y otro con Linux Debian. Cada máquina virtual con 4GB de RAM. | — |
| Sistema operativo | Linux Debian y Windows Server | Última | 8080 / 3033 | Linux Debian para los servicios principales y Windows Server 2016 para pruebas. | https://www.debian.org / https://www.microsoft.com |
| Interfaz de usuario (Frontend) | HTML, CSS | HTML5 / CSS3 | 8080 / 3033 | Frontend hecho con HTML y CSS, que es lo que más dominamos. | https://developer.mozilla.org |
| Lógica de negocio (Backend) | PHP | PHP 8.3 | 8080 / 3033 | Backend hecho con PHP, que es lo que estamos aprendiendo. | https://www.php.net |
| Servidor web | Apache, Nginx | Última | 8080 / 3033 | Usamos Apache porque viene en Docker y Nginx por estabilidad. | https://httpd.apache.org / https://nginx.org |
| Base de datos | MySQL | Última | 8080 / 3033 | Usamos MySQL porque es simple de configurar y funciona bien con Docker. | https://www.mysql.com |
| Gestor de base de datos | PHPMyAdmin | Última | 8080 / 3033 | PHPMyAdmin porque es el que mejor sabemos utilizar. | https://www.phpmyadmin.net |
| Servicios de APIs | REST | Última | 8080 / 3033 | Para conectar frontend y backend usaremos REST. | https://restfulapi.net |

</details>

<br>

Estructura de Base de Datos:
-

Tabla de datos y tipos (Base de datos):

<details>
<summary><h3>Tabla: Usuarios</h3></summary>

| Información       | Tipo MySQL         | Descripción |
|------------------|--------------------|-------------|
| `id_usuario`      | INT AUTO_INCREMENT | Clave primaria, identifica a cada usuario. |
| `nombre_usuario`  | VARCHAR(50)        | Nombre que se muestra en la app. |
| `email`           | VARCHAR(100)       | Correo único de cada usuario. |
| `contraseña`      | VARCHAR(255)       | Contraseña encriptada. |
| `foto_perfil`     | VARCHAR(255)       | Ruta de la imagen que sube el usuario. |

---
</details>

<br>

<details>
<summary><h3>Tabla: Canciones</h3></summary>

| Información     | Tipo MySQL         | Descripción |
|----------------|--------------------|-------------|
| `id_cancion`    | INT AUTO_INCREMENT | Clave primaria de la canción. |
| `título`        | VARCHAR(100)       | Nombre de la canción. |
| `artista`       | VARCHAR(100)       | Artista o grupo. |
| `archivo`       | VARCHAR(255)       | Ruta del archivo .mp3. |
| `duracion`      | TIME               | Duración de la canción. |

---
</details>

<br>

<details>
<summary><h3>Tabla: Playlists</h3></summary>
  
| Información        | Tipo MySQL         | Descripción |
|-------------------|--------------------|-------------|
| `id_playlist`      | INT AUTO_INCREMENT | Clave primaria. |
| `nombre_playlist`  | VARCHAR(100)       | Nombre de la playlist. |

---
</details>

<br>

<details>
<summary><h3>Tabla: Comentarios</h3></summary>
  
| Información        | Tipo MySQL         | Descripción |
|-------------------|--------------------|-------------|
| `id_comentario`    | INT AUTO_INCREMENT | Clave primaria del comentario. |
| `contenido`        | TEXT               | Contenido que escribe el usuario. |
| `fecha`            | DATETIME           | Fecha del comentario. |

---
</details>

<br>

<details>
<summary><h3>Tabla: Valoraciones</h3></summary>

| Información        | Tipo MySQL         | Descripción |
|-------------------|--------------------|-------------|
| `id_valoracion`    | INT AUTO_INCREMENT | Clave primaria. |
| `puntuacion`       | TINYINT            | Nota del 1 al 5. |

---
</details>

<br>

<details>
<summary><h3>Tabla: Amigos</h3></summary>

| Información | Tipo MySQL         | Descripción |
|-------------|--------------------|-------------|
| `id_amigo`  | INT AUTO_INCREMENT | Clave primaria. |
| `usuario1`  | INT                | ID del primer usuario. |
| `usuario2`  | INT                | ID del segundo usuario. |

</details>

</details>

#

<details>
<summary><h2>7.Web</h2></summary>

Este sería el mockup de nuestra web.

<details>
  
<summary><h3>Página principal:</h3></summary>

Esta es nuestra primera página, la homepage. Desde aquí podemos escuchar música y configurar un par de cosas. Todas las demás opciones, para tenerlas disponibles, el usuario tendrá que iniciar sesión. 
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/0cb4442b-076c-4e7e-9020-36a8b6a94b19" />

</details>

<details>
  
<summary><h3>Inicio de sesion:</h3></summary>

Esto será nuestro inicio de sesión y de fondo intentaremos poner un video de nuestra web; además, si no inicias sesión, no podrás publicar ni videos ni comentarios.
poner valoraciones a las canciones, solo podras escucharlas y hacer todas las acciones sobre retroceder o avanzar o ponerlo en bucle., una
vez hayas iniciado sesion podras hacer todo.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/657f6ad2-14e6-4589-833b-ca42ceea8b21" />

</details>

<details>
  
<summary><h3>Página principal luego del inicio de sesión:</h3></summary>

Despues de iniciar sesión podrás utilizar todas las herramientas de nuestra web.

El contenido que tendrá será:
- Buscador

- Botón para ver la lista de búsqueda

- Botón para ver tus amigos

- Botón de opiniones

- Botón de ajustes

- Músicas recomendadas con botón para entrar dentro de cada música

- Botón para ver tu perfil
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/0f30fc76-e67a-46ff-905c-f75596a9c838" />

</details>

<details>
  
<summary><h3>Músicas:</h3></summary>

Esta opción también estará disponible sin iniciar sesión; desde aquí solo podrás escuchar la música y ver el nombre del artista.
Al ver su letra, las opciones de valoraciones solo estarán disponibles si inicias sesión.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/028edfcc-5c9d-4b27-9489-d2ef485d32d6" />

</details>

<details>
  
<summary><h3>Opiniones:</h3></summary>

Desde aquí podrás ver comentarios de gente debatiendo sobre músicas y sus opiniones; también podrás ver todas tus opiniones. 
Y valoraciones que has hecho. También podrás eliminar valoraciones u opiniones que hayas hecho.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/4de2ce40-07b0-48b0-9039-47c50c6370a7" />

</details>

<details>
  
<summary><h3>Amigos:</h3></summary>

Dentro de aquí podrás ver a todos tus amigos; también desde esa pestaña podrás ver el perfil de tus amigos. También tendrás un chat con cada uno. 
Amigo, y también podréis pasaros músicas.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/31656063-b799-4611-bcba-08e3f34a4911" />

</details>

<details>
  
<summary><h3>Listas de músicas:</h3></summary>

Aquí podrás ver las músicas que hayas almacenado. También podrás hacer listas de músicas de lo que tú quieras.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/33b7421b-3ec2-4d06-a578-8db2960ec105" />

</details>

<details>
  
<summary><h3>Buscador:</h3></summary>

También esta es otra opción que estará disponible sin tener que iniciar sesión y podrás buscar la música que tú prefieras o la que esté. 
Disponible en nuestra web; también podrás ver los artistas, el tipo de música y una valoración general de la música.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/1ba60730-1e27-4abb-9d32-daae5a2d67e6" />

</details>

<details>
  
<summary><h3>Tu perfil:</h3></summary>

Aqui podras ver bastantes cosas como:

- Tus músicas.

- Tus amigos.

- Tus listas de música.

- Tambien un boton que te lleve a la privacidad de la cuenta.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/a83cf8df-3fdc-43aa-b3d6-549731cd5316" />

</details>

<details>
  
<summary><h3>Perfil de amigos:</h3></summary>

Aquí podrás ver el perfil de los amigos que tengas y podrás ver:

- Amigos que tengan tus amigos.

- Músicas gustadas. 

- Listas de músicas que tenga.

- Comentarios y valoraciones que haya puesto.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/d844342d-d264-4ca9-98e7-670c661e145c" />

</details>

<details>
  
<summary><h3>Configuración:</h3></summary>

Desde aquí podrás modificar una variedad de contenido para que la experiencia con el usuario sea mejor; las opciones que hay son:

- Poder cambiar los colores de la Página.

- Poder gestionar la privacidad.de la cuenta.

También ofrecemos opciones para la privacidad del usuario que son:

- Amigos no visibles.

- Usuarios no puedan acceder a tus listas de msica.

- No poder recibir solicitudes de amistad.

- No son visibles tus comentarios y varolaciones.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/413a613c-f51e-455b-91fd-4505ed9988e2" />

</details>

<details>
  
<summary><h3>Mapa de navegabilidad:</h3></summary>

-Aquí tenemos el diagrama de flujo de la interfaz web.

<img width="528" height="852" alt="image" src="https://github.com/user-attachments/assets/980bccd8-7082-4ea4-acad-ed31662ee8ca" />
</details>

</details>

#

<details>
<summary><h2>8.Servicios</h2></summary>

¿Qué función cumple exactamente cada servicio dentro de la red?
-

<details>
  
<summary><h3>8.1.DNS y Pi-hole:</h3></summary>

Explicacion y funcionamiento
-
  
- DNS:

Ell DNS es un sistema que traduce nombres de dominio (google.com) a direcciones IP i lo necesitamos por que sin DNS, los usuarios tendrían que recordar IPs de máquinas. Para poder gestion el DNS i el DHCP lo que hemos hecho a sido instalar y configurar el pi-hole dentro de un ubuntu server. 

- Pi-Hole:

Es un bloqueador de anuncios de uso general que cubre toda la red y la protege de los anuncios y los rastreadores sin que sea necesario configurar cada uno de los dispositivos.

<br>

Proceso de instalacion
-

Ahora voy a explicar paso a paso toda su instalacion paso a paso:

<h4>Paso 1:</h4>

El primer comando que tenemos que ejetar es "sudo apt update && sudo apt upgrade -y" que esto lo que ara sera actualizar el sistema para poder instalar el pihole, luego lo que tendremos que hacer sera 
configurar la ip statica y lo haremos poniendo el comando "sudo nano /etc/netplan/00-installer-config.yaml" i esto lo que hace es editar el archivo netplan y la tendremos que configurar aqui una captura de como lo tenemos configurado.

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/f7c6eb1b-0479-4f30-abb0-25ef1abfd5be" />

<br>

<h4>Paso 2:</h4>

Ahora luego de haber configurado correctamente el archivo netplat solo tenemos que hacer "sudo netplan apply" para aplicar los cambios y "ip a" para verificar que funcione. Despues de hacer los anteriores pasos tendremos que instalar el pi-hole con "curl -sSL https://install.pi-hole.net | bash" si no funciona el comando significa que el ubuntu no tiene instalado el curl, si es asi solo instalamos el curl con "sudo apt install curl -y". Ahora en la instalacion saldran las siguientes opciones: seleccionar la interfaz de red, elegir el DNS upstream, seleccionar interfaz web  y seleccionar servidor web.

<br>

<h4>Paso 3:</h4>

Despues de completar la instalacion del pi-hole y haber seleccionado cada apartado al final tendremos que seleccionar una contraseña para el pi-hole y sera necesaria para abrir el pi-hole dentro de el navegador. Ahola despues de hacer todoslos anteriores pasos tenemos que escribir des de un nevegador http://IP_DEL_SERVIDOR/admin y se nos abrira la pagina de pi-hole, lo que tendremos que hacer ahora es poner el usuario que tengamos en el ubuntu server y tambien poner la contraseña que habia hablado anteriormente i despues de eso ya podremos gestionar el DNS.
<img width="1163" height="839" alt="image" src="https://github.com/user-attachments/assets/7638eb0b-e414-40ed-bd85-08757c5488ef" />

<br>

¿En qué equipo se instala y qué requisitos necesita?
-

<h4>Sistema operativo</h4>



<h4>IP del servidor</h4>



<h4>Recursos mínimos</h4>




<br>

¿Qué parámetros básicos debo configurar?
-

<h4>Puertos</h4>



<h4>Directorios de trabajo</h4>



<h4>Rango DHCP / zonas DNS / virtual hosts</h4>




<br>

Incidencias
-

Una incidencia que teniamos era que el pi-hole estaba todo correctamente configurado y estabamos todo el rato intentando conseguir la ip de la maquina virtual con "ip a" pero no salia la ip, y sin la ip no podriamos acceder a la pagina web de nuetro Pi-hole. Al final el error era que nuestra maquina virtual de ubuntu server no estaba con el adaptador puente activado y eso hacia que por mucho que lo intentaramos no nos saliera la ip. Luego de activar el adaptador fuente ya todo funciono 
correctamente.

</details>

<details>
  
<summary><h3>8.2.DHCP y Dnsmasq :</h3></summary>

El DHCP es un servicio que asigna automáticamente IP, puerta de enlace y DNS a los clientes tambien es necesario para evita configurar manualmente cada equipo y reduce errores. Y el Dnsmasq proporcionar servicios de red esenciales y uno de los motivos que vamos a utilizar es porque permite la configuración de un servidor DHCP básico para asignar direcciones IP automáticamente.

Dnsmasq es una herramienta diseñada para proporcionar servicios de red esenciales. Entre sus características más destacadas encontramos: Resolución de nombres DNS rápida y eficiente. Configuración de un servidor DHCP básico para asignar direcciones IP automáticamente.

</details>

<br>

<details>
  
<summary><h3>8.3.Docker:</h3></summary>

Docker Desktop es un sistema operativo para contenedores, Docker se instala en cada servidor en el que deseemos ejecutar contenedores y proporciona un conjunto sencillo de comandos que puede utilizar para crear, iniciar o detener contenedores. Configuramos el docker a partir de Portaner.io que es como el Docker Desktop pero con una interdaz mas entendible y tambien permite gestionar fácilmente los diferentes entornos Docker. 

Su principal diferencia es que Docker Desktop por sí solo proporciona una base sólida, pero carece de la seguridad, escalabilidad y usabilidad necesarias para implementaciones reales, Portainer cubre estas carencias, haciendo que los entornos contenedorizados sean prácticos, seguros y fáciles de gestionar para equipos de todos los niveles. En nuestro proyecto dentro del Docker vamos a implementar pi-hole(bloqueador de anuncios) y Nginx(software de servidor web de código abierto). 

<img width="1618" height="538" alt="image" src="https://github.com/user-attachments/assets/5e007514-da9f-44e5-9111-b05703d40f56" />

</details>

<br>

<details>
  
<summary><h3>8.4.MySQL:</h3></summary>

MySQL es un sistema de gestión de bases de datos de codigo abierto que base de datos relacional que permite almacenar, organizar, recuperar datos de manera eficiente y es perfecto para guardar: Datos de usuarios (nombre, email, contraseñas encriptadas, etc...), Inventarios de productos, Transacciones de ventas y Registros históricos o logs. Tambien no permite aplicar reglas de integridad referencial, relaciones entre tablas y control de accesos para garantizar la coherencia y seguridad de la información. Uno de los 
usos más comunes de MySQL es como base de datos para aplicaciones web dinámicas.

MySQL se integra fácilmente con sitios desarrollados en lenguajes como PHP, Python o Node.js, el que utilizaremos nosotros en este proyecto sera PHP que es un lenguaje de scripts generalista, especialmente concebido para el desarrollo de 
aplicaciones web, gracias a su compatibilidad con servicios de hosting puedes desplegar fácilmente sitios web que consulten, actualicen o gestionen información en tiempo real.   

```
create database Yutmiu;
use Yutmiu;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(15),
    apellido VARCHAR(15),
    email VARCHAR(20) UNIQUE,
    password VARCHAR(15),
    foto_perfil VARCHAR(45),
    descripcion VARCHAR(50)
);


CREATE TABLE artistas (
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(15),
    imagen VARCHAR(45)
);


CREATE TABLE musicas (
    id_musica INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50),
    genero VARCHAR(10),
    duracion TIME,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
);


CREATE TABLE valoraciones (
    id_valoracion INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_musica INT,
    puntuacion INT CHECK (puntuacion BETWEEN 1 AND 5),
    comentario VARCHAR(50),
    fecha DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_musica) REFERENCES musicas(id_musica)
);


CREATE TABLE listas (
    id_lista INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(15),
    descripcion VARCHAR(50),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);


CREATE TABLE lista_musica (
    id_lista INT,
    id_musica INT,
    PRIMARY KEY (id_lista, id_musica),
    FOREIGN KEY (id_lista) REFERENCES listas(id_lista),
    FOREIGN KEY (id_musica) REFERENCES musicas(id_musica)
);



SELECT * FROM usuarios;
insert into usuarios (nombre, apellido, email, password, foto_perfil, descripcion)
values ("Pep", "Pepe", "pepito", "popete", "popeye", "popote");

SELECT * FROM artistas;
insert into artistas (nombre, imagen)
values ("Nachote", "imagen");

SELECT * FROM musicas;
insert into musicas (titulo, genero, id_artista)
values ("musica", "pop", 10);

SELECT * FROM valoraciones;
insert into valoraciones (id_usuario, id_musica, puntuacion, comentario, fecha)
values (11, 12, "Puntos", "Comentario", "Fecha");

SELECT * FROM listas;
insert into listas (nombre, descripcion, id_usuario)
values ("Nachote", "descripcion", 13);

SELECT * FROM lista_musica;
insert into lista_musica (id_lista, id_musica)
values (14, 15);



DELETE FROM usuarios
where nombre = "Pep" and apellido = "Pepe" and email = "pepito";

DELETE FROM artistas
where nombre = "Nachote" and imagen = "imagen";

DELETE FROM musicas
where titulo = "musica" and genero = "pop";

DELETE FROM valoraciones
where comentario = "Comentario";

DELETE FROM listas
where nombre = "Nachote" and descripcion = "descripcion";

DELETE FROM lista_musica
where id_lista = 14 and id_musica = 15;



UPDATE usuarios
SET nombre = "Pepe"
WHERE id_usuario = 112;

UPDATE artista
SET nombre = "Nachote"
WHERE ID_Artista = 113;

UPDATE musicas
SET titulo = 132
WHERE id_musica = 114;

UPDATE valoraciones
SET comentario = "temon"
WHERE id_musica = 115;

UPDATE listas
SET nombre = "Nachote"
WHERE id_lista = 116;
```

</details>

<br>

<details>
  
<summary><h3>8.5.Nginx:</h3></summary>

NGINX es un software de código abierto que se utiliza para servidores web, proxy inverso, almacenamiento en caché, balanceo de carga, streaming multimedia, tambien ofrece funciones de servidor HTTPS y está diseñado principalmente para maximizar el rendimiento y la estabilidad. También funciona como servidor proxy para protocolos de comunicación por correo electrónico como IMAP, POP3 y SMTP. En este caso Nginx lo utilizaremos en nuestro proyecto para publicar nustra web a internet para que cualquier persona pueda verla.

</details>

<br>

<details>
  
<summary><h3>8.6.PHP:</h3></summary>

PHP es un lenguaje de programación de código abierto diseñado para el desarrollo web que se ejecuta en el servidor, permitiendo crear sitios web dinámicos, interactivos y con conexión a bases de datos.

Qué hace PHP?

- Genera contenido dinámico: Crea páginas web que cambian según la interacción del usuario.

- Interactúa con bases de datos: Se conecta y gestiona fácilmente bases de datos como MySQL, PostgreSQL o MariaDB.

- Gestiona archivos en el servidor: Puede crear, abrir, leer, escribir y cerrar archivos.

- Maneja formularios: Recopila, valida y procesa datos enviados desde formularios HTML.

- Controla accesos y cookies: Maneja la autenticación de usuarios (inicios de sesión) y puede establecer o acceder a cookies.

- Envía correos y gestiona archivos: Permite subir archivos al servidor y enviar correos electrónicos automáticamente. 

<img width="1551" height="735" alt="image" src="https://github.com/user-attachments/assets/3abc807d-0fb9-4ffd-a782-c7b511ceb0e5" />

Dentro de PHP hemos añadido el MySQL de nuestra pagina web para conectarlo y hazerla funcional.

</details>

<br>

<details>
  
<summary><h3>8.7.Ffmpeg:</h3></summary>

Ffmpeg se trata de una herramienta de línea de comandos que permite realizar multitud de tareas relacionadas con video, audio o incluso imágenes, en nuestro caso ffmpeg lo utilizaremos para poner la musica dentro de nuestra pagina web tambien el ffmpeg es multiplataforma, por lo que puede instalarse en cualquier sistema, ya sea GNU/Linux, Windows o Mac, nosotros lo haremos des de un ubuntu. Para proceder a instalar el Ffmpeg lo primero que tenemos que hacer es abrir el cmd i poner 
este comando "$ sudo apt-get install ffmpeg", solo con ese comando ya tendremos el Ffmpeg instalado dentro del ubuntu. 

<img width="878" height="449" alt="image" src="https://github.com/user-attachments/assets/41cc369e-e5df-4756-a902-d48963fa1e56" />

Ffmpeg para como tanto para obtener información de un archivo multimedia, como para convertirlo a otro formato. Tambien uno de los motivos de por que estamos utilizamos FFmpeg es compatible con prácticamente todos los formatos de vídeo, audio e imagen existentes, incluyendo contenedores, formatos de audio y soporta cientos de códecs y formatos multimedia.

</details>

<br>

<details>

<summary><h3>8.8.TrueNAS:</h3></summary>

TrueNAS es un sistema operativo de almacenamiento conectado a la red (NAS) de código abierto, diseñado para convertir ordenadores en servidores de almacenamiento seguros y centralizados.

Principales características las principales caracteristicas por lo que utilizamos TrueNAS son:

- Reducido tamaño en disco 
  
- Fácil instalación
  
- Fácil administración remota, mediante páginas web accesibles desde cualquier computadora en red con un navegador
  
- No es necesario tener conectado monitor ni teclado para su operación

Ahora estamos instalando el TrueNAS dentro de una maquina virtual con la iso del Truenas.

<img width="637" height="564" alt="image" src="https://github.com/user-attachments/assets/47f34bb2-9344-4fc2-94d3-270b47e2c07c" />

Despues de instalar el Truenas tenemos que configurarlo correctamente para mas adelante poderlo abrir dentro de un navegador.

<img width="1212" height="839" alt="image" src="https://github.com/user-attachments/assets/4d9d37db-ca06-47c3-9f44-be53fc761b5b" />

Y tras configurarlo todo y haber accedido al TrueNAS des de navegador nos permitira crear pools de almacenamiento seguros con ZFS, gestionar copias de seguridad en la nube, 
correr aplicaciones/plugins como Plex o Nextcloud, y virtualizar sistemas operativos.

<img width="1434" height="735" alt="image" src="https://github.com/user-attachments/assets/ead62b99-b029-42fb-941a-6af1ef9e1b37" />

Ahora estamos creando una carpeta dentro de nuestra carpeta del proyecto y haciendo Backup a los archivos mas importantes que seria la base de datos, a la carpeta del servidor y al Portainer.

<img width="1097" height="619" alt="image" src="https://github.com/user-attachments/assets/41066dae-0a6f-451b-abae-dd6b8ab048ef" />

Actualmente todo lo que le hariamos una copia de seguridad en nuestro proyecto seria:

- La maquinas virtuales donde tenemos el Docker. Aparte tambien tendriamos que guardar toda su configuracion y su conexion.

- El Pi-hole y toda su configuracion para que el DNS sea funcional.

- El DNSmasq y toda su configuracion para que el DHCP sea funcional.

- Toda la pagina web que seria todo el html, css, js y php. Los archivos de la pagina web ahora mismo estan en la D del ordenador y dentro de nuestros propios discos duros.

- Todo el PHP conectado con el MySQL. Tendriamos que hacer una copia de seguridad al PHP y toda su configuracion, el MySQL esta bien guardado no seria necesario hacerle una copia.

- El Nginx y toda su configuracion porque sin Nginx no podriamos publicar nuestra pagina web.

- Todos los sistemas conectados en el Portainer, Tambien tendriamos que guardar las ips de cada servicio conectado y lo puertos donde estan conectados.

</details>

<br>

<details>
  
<summary><h3>8.9.PfSense:</h3></summary>

PfSense es una plataforma de firewall y enrutador de código abierto basada en FreeBSD, utilizada para asegurar, gestionar y controlar redes.

Los principales usos que le daremos al PfSense seran:

- Firewall de alto nivel: Gestiona el tráfico de red basado en reglas, filtrando conexiones para mejorar la seguridad.

- Servicios de Red: Funciona como servidor DHCP, servidor DNS, y proxy.

- Servidor VPN: Soporta conexiones seguras mediante protocolos como OpenVPN e IPsec, permitiendo el acceso remoto seguro.

Ahora mismo todo el PfSense esta instalado detro de una maquina virtual con el sistema operativo FreeBSD y con un adaptador puente y una red interna 
y accedemos a el poniendo la ip de la red interna dentro de un navegador.

Dentro de PfSense hemos configurado lo siguiente:

<br>

Port Forward
-

El port forwarding sirve para acceder al router que permite a dispositivos externos en internet acceder a servicios específicos dentro de tu red local privada,
y lo que hemos hecho a sido conectar todos los servicios que tenemos con sus respectivas ip y puertos para que todo este conectado entre si.

Tambien ofrece estas funciones:

- Acceso remoto: Permite conectar con equipos de la red doméstica desde cualquier lugar.

- Alojamiento de servicios: Facilita la creación de servidores web, de correo, FTP o de aplicaciones en una red local, haciéndolos accesibles al público.

<img width="1423" height="735" alt="image" src="https://github.com/user-attachments/assets/af6f1c80-f76e-4079-b02d-4357f47e4acf" />

<br>

Red WAN:
-

Tambien hemos conectado todos los servicios a la red WAN para conectar la red a internet.

Tambien ofrece estas funciones:

- Función: Recibe la conexión del módem de tu proveedor de servicios de internet.

- Uso: Generalmente obtiene una IP pública o dinámica para acceder a internet.

- Seguridad: PfSense bloquea todo el tráfico entrante no solicitado en la WAN para proteger la red interna.

- Túneles de seguridad: Permite redirigir tráfico inseguro a través de un canal cifrado seguro.

<img width="1421" height="735" alt="image" src="https://github.com/user-attachments/assets/30ae14c0-d1da-4004-9dd8-d19f4c5c9493" />

<br>

Red LAN:
-

Y LAN conecta tus dispositivos locales al firewall.

Tambien ofrece estas funciones:

- Función: Se conecta a los dispositivos internos.
  
- Uso: Proporciona IPs locales a tus dispositivos y gestiona el tráfico interno.
  
- Seguridad: Por defecto, confía en el tráfico interno y permite el acceso hacia la WAN.
  

<img width="1418" height="734" alt="image" src="https://github.com/user-attachments/assets/b308c873-96aa-4259-a4c7-1f401c889bed" />

</details>

<br>

¿En qué equipo se instala y qué requisitos necesita?
-

<details>
  
<summary><h3>Sistema operativo:</h3></summary>

El equipo donde vamos a tener todo va a ser un Ubuntu Server, dentro de el Ubuntu Server vamos a tener instalado el DCHP, el dnasmasq y el pi-hole. Tambien tenemos otra maquina virtual con un Ubuntu con el Ffmpeg para exportar musicas para la pagina web.

</details>

<details>
  
<summary><h3>IP del servidor:</h3></summary>

La ip de nuestro del Ubuntu Server es la 192.168.135.xx por que es dinamica. Y la ip estatica de nuestro Ubuntu Server 192.168.6.62.

</details>

<details>
  
<summary><h3>Recursos mínimos (CPU, RAM, disco):</h3></summary>

Estas son las configuraciones que hemos puesto para nuestra maquina virtual.
<img width="1411" height="735" alt="image" src="https://github.com/user-attachments/assets/373ca196-3988-41ca-a84f-94466c0dc6b4" />

</details>

¿Qué parámetros básicos debo configurar?
-

<details>
  
<summary><h3>Puertos:</h3></summary>

Aqui estan todos los servicios conectados al Portainer con sus respectivos puertos:

-Mysql: Tiene el puerto 3306:3306 y 32768:33060.

-Ngingx: Tiene el puerto 80:80.

-Phpmyadmin-web: Tiene el puerto 8081:80.

-Pihole: Tiene el puerto 53:53 y 8080:80.

-Portainer: Tiene el puerto 8000:8000 y 9443:9443.

<img width="1618" height="538" alt="image" src="https://github.com/user-attachments/assets/b6ee57d9-3709-40e1-8d2c-a8a875235bdb" />

</details>

</details>

#

<details>
<summary><h2>9.Diagrama Gantt</h2></summary>
Aqui podeis ver como lo hemos organizado y separado el Diagrama:
<img width="1919" height="417" alt="image" src="https://github.com/user-attachments/assets/ee66626d-ab31-4546-bf3f-8af53b429077" />
Y aqui os voy a dejar el enlace al Excel para que lo vayais viendo como se va actualizando a diario: https://alumnoifp-my.sharepoint.com/:x:/g/personal/rreyesf_student_ifp_es/EWDiyoYtqXtNhg-YJbDrquoBVqxon1pBstPxaSgkpy9Yhg?e=22Y8uM
</details>

#

<details>
<summary><h2>10.Conclusiones</h2></summary>


  
</details>

#

<details>
<summary><h2>11.Webgrafia</h2></summary>
Hemos utilizado estas webs para buscar informacion datos etc ect:
  
- Esta Web la hemos utilizado para coger iconos:
https://icons.getbootstrap.com/

- También nos hemos basado en muchas ideas de la pagina de Spootify:
https://open.spotify.com/

- También hemos hecho el diseño del la web en el canva:
https://www.canva.com/design/DAG1FzZUJu8/4GEBUf7oiEVidqma9VoWNw/view?utm_content=DAG1FzZUJu8&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=he356a4d6cf

- Esta web sirve para corregir nuestros errores ortográficos:
https://quillbot.com/es/corrector-ortografico/d/8fda3fc1-36db-468a-92ae-1efa4166ce68

- Para hacer el diagrama de la red hemos utilizado microsoft visio:
https://m365.cloud.microsoft/launch/visio?auth=2&origindomain=microsoft365
</details>

<br>

<br>

<div align="center">

<h1>Plan de Contingencia</h1>

</div>

<details>
<summary><h3>Truenas</h3></summary>

El TrueNAS es un sistema operativo de almacenamiento conectado a la red (NAS) de código abierto, diseñado para convertir ordenadores en servidores de almacenamiento seguros y centralizados.

Principales características las principales caracteristicas por lo que utilizamos TrueNAS son:

- Reducido tamaño en disco 
  
- Fácil instalación
  
- Fácil administración remota, mediante páginas web accesibles desde cualquier computadora en red con un navegador
  
- No es necesario tener conectado monitor ni teclado para su operación

Dentro de el TrueNAS sera donde gestionaremos toda las cosas importantes como maquinas virtuales, archivos, etc... para poder hacer copias de seguridad y asi tener todo el trabajo guardado ante algun fallo.

</details>

#

<details>
<summary><h2>1.Datos generales</h2></summary>

• Nombre del proyecto: YutMiu

• Alumno(s): Raul Reyes y Ignasi Merino

• Fecha: 20/03/2026

• Versión del documento: 1.0

• Descripción breve del sistema: Infraestructura web basada en contenedores Docker, gestionada con Portainer, 
que incluye servicios de red con el Pi-hole y DNSmasq, un servidor web Nginx y una aplicación PHP con base de datos MySQL.

</details>

#

<details>
<summary><h2>2.Objetivo del plan</h2></summary>

- ¿Para qué sirve este plan?

Sirve para guardar los archivos importantes por si ocurre un error y se pierde todo.

- ¿Qué se pretende garantizar?

Se pretende garantizar la seguridad de los avanzes que hemos hecho y evitar que perdamos parte del trabajo por accidente.

</details>

#

<details>
<summary><h2>3.Alcance</h2></summary>

Indica qué cubre este plan:

• Sistemas incluidos (servidores, red, equipos…)

Maquinas virtuales: Tendriamos que guardar principalmente las maquinas virtuales donde esta el pi-hole y el DNSmasq.

• Servicios críticos: 

Pagina web: Si no guardaramos la pagina web tendriamos que tendriamos que volver a hacer toda la estructura de nuevo.

Base de datos: Seria necesario hacerle una copia de seguridad porque sin la base de datos el PHP no podria funcionar dentro de nuestra web.

</details>

#

<details>
<summary><h2>4.Identificaión de activos</h2></summary>

| Activo | Tipo | Importancia |
| :--- | :--- | :--- |
| **VM Docker Host** | Software/Infraestructura | Alta |
| **Configuración y Conexiones VM** | Software | Alta |
| **Pi-hole (DNS) y configuración** | Software/Servicio | Alta |
| **DNSmasq (DHCP) y configuración** | Software/Servicio | Alta |
| **Archivos Web (D:/html, css, js, php)** | Datos/Archivos | Alta |
| **Código PHP y Conexión MySQL** | Software | Alta |
| **Nginx y Configuración** | Software/Servicio | Alta |
| **Portainer (IPs y Puertos)** | Software/Gestión | Alta |

</details>

#

<details>
<summary><h2>5.Análisis de riesgos</h2></summary>

| Riesgo | Probabilidad | Impacto | Nivel de riesgo |
| :--- | :--- | :--- | :--- |
| **Caída del servidor Docker** | Alta | Alta | **Crítico** |
| **Fallo de hardware (Disco D / VM)** | Media | Alta | **Alto** |
| **Pérdida de conexión a internet** | Media | Media | **Medio** |
| **Error humano (Borrado de código)** | Media | Alta | **Alto** |
| **Ataque informático (Malware)** | Baja | Alta | **Alto** |
| **Fallo de configuración DNS/DHCP** | Media | Alta | **Alto** |

</details>

#

<details>
<summary><h2>6.Escenarios de contingencia</h2></summary>

Descripcion de situaciones reales que podrian suceder y afectar a los servicios de nuestra web:

• Caída del servidor: 

Los contenedores dejan de responder o Portainer se bloquea.

• Pérdida de conexión a internet: 

El DNS (Pi-hole) o DHCP fallan, dejando a los clientes sin conexión.

• Fallo de hardware: 

Ante un fallo de hardware nos podria afectar dentro de las maquinas virtuales ya que se podrian abortar las maquinas virtuales importantes que tenemos como el que contiene el docker.

• Error humano: 

Sobrescritura de archivos PHP/CSS críticos sin tener una copia.

• Ataque (malware, ransomware): 

Infección que encripte o afecte a los archivos del servidor web.

</details>

#

<details>
<summary><h2>7.Plan de respuesta</h2></summary>

Qué hacer en cada caso:

• Incidencia: Caída de servicios (Nginx/Pi-hole)

   1.Acceder a Portainer y revisar el estado de los contenedores.

   2.Reiniciar los contenedores afectados.

   3.Verificar logs de Docker para identificar la causa.

• Incidencia: Fallo de VM o Hardware

   1.Notificar al compañero y tutores.

   2.Recuperar la última exportación/snapshot de la VM.

   3.Intentar restaurar archivos desde el disco duro de respaldo o nube.

</details>

#

<details>
<summary><h2>8.Plan de recuperación</h2></summary>

Cómo volver a la normalidad:

• Restauración de sistemas:

Tendriamos que volver a instalar nuevamente todas las maquinas virtuales volver a configurar todo nuevamente.

• Reconfiguración de servicios:

Por cada servicio que tendriamos que volver a configurar todo como lo habiamos hecho anteriormente y aplicar los parámetros de IP estáticas y puertos guardados en la documentación de Portainer.

• Verificación del funcionamiento:

A la hora de verificar que todo vuelva a la normalidad tendriamos que entrar dentro del Portainer y ver que todos los servicios esten en running.

Añadir tiempos:

• Tiempo máximo de recuperación(RTO): Máximo 4 horas.

• Pérdida de datos aceptable(RPO): Máximo 24 horas

</details>

#

<details>
<summary><h2>9.Copias de seguridad</h2></summary>

Detallar:

• Tipo de backup: 

Copia completa de archivos y Snapshots de las VMs.

• Frecuencia: 

Semanal (o por cada avance que hagamos).

• Ubicación: 

Disco local D o una copia externa

• Herramientas utilizadas: 

Exportación de configuraciones de Portainer, copiado manual de archivos y snapshots de VirtualBox/VMware.

</details>

#

<details>
<summary><h2>10.Medidas preventivas</h2></summary>

Para evitar problemas:

• Antivirus / Firewall: 

Configuración básica para permitir solo el tráfico necesario (80, 443, 53).

• Actualizaciones: 

Mantener las imágenes de Docker actualizadas.

• Control de accesos:

Uso de contraseñas seguras en Portainer y MySQL.

• Monitorización:

Revisión periódica de los recursos consumidos por los contenedores.

</details>

#

<details>
<summary><h2>11.Responsables</h2></summary>

| Rol | Persona | Función |
| :--- | :--- | :--- |
| **Administrador de Sistemas** | Raul Reyes | Gestión de VMs, Docker y Backups y Nginx. |
| **Técnico de Soporte y Web** | Ignasi Merino | Resolución de incidencias web y red. |

</details>

#

<details>
<summary><h2>12.Plan de comunicación</h2></summary>

En caso de fallo:

• A quién avisar:

Primero tedriamos que avisar a nuestro compañero de trabajo y luego avisar a los nuestros tutores para preguntarles que hacer con este problema que a surjido.

• Cómo:

Si estamos en classe simplemente avisarle que hemos tenido un problema grave y preguntarle como solucionarlo y si no fuera en classe le mandariamos un email con nuestro problema.

• Tiempo de respuesta:

Si estamos en classe intentar hacer que venga lo antes posible para que diga que hacer ante nuestro problema y si no lo estamos seria enviarle un correo i intentar que conteste lo antes posible.

</details>

#

<details>
<summary><h2>13.Pruebas del plan</h2></summary>

Validar el plan:

• Simulación: 

Apagado forzado de la VM para verificar el tiempo de arranque y recuperación de contenedores.

• Verificación de Backup: 

Intentar restaurar una copia de los archivos PHP en una carpeta distinta para confirmar que no están corruptos.

</details>

#

<details>
<summary><h2>14.Mantenimiento del plan</h2></summary>

Indicar:

• Cada cuánto se revisa:

Todo el plan de contingencia lo revisariamos cada 2 semanas o 1 semana, depende de cuando avanzemos en el trabajo.

• Quién lo actualiza:

Hasta que no pase algo muy grave o algo parecido creo que no haria falta actualizarla, mientras todo este seguro correctamente no haria falta preocuparse. Los dos nos encargamos de actualizarlo.

</details>

#

<details>
<summary><h2>15.Mejoras futuras</h2></summary>

• Implementar un sistema de backups automatizado mediante scripts.

• Configurar un segundo servidor Nginx por si acaso.

• Uso de GitHub para un control de versiones más estricto del código.

</details>

#

<details>
<summary><h2>16.Conclusiones</h2></summary>

Reflexión:

• Importancia del plan:

El motivo principal de este plan y la importancia de tenerlo es principalmente para evitar perdidas de horas de trabajo en pequeños errores y garantizar la seguridad de nuestro trabajo en caso de fallo.

• Qué han aprendido:

Gestionar cuales fallos podriamos prevenir y que podrian suceder a la hora de trabajar en el proyecto y garantizar la seguridad de nuestro proyecto.

• Cómo mejora el proyecto:

Lo que podriamos hacer a la hora de mejorar el proyecto es apuntar todos los avances que hacemos cada dia y cada cierto tiempo aplicarle el plan de contingencia.

</details>

#

</details>
