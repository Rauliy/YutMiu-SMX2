# YutMiu-SMX2
<img width="197" height="187" alt="image" src="https://github.com/user-attachments/assets/3296b3ea-68eb-482f-ace5-3f9f45dc7233" />

## Índice:

1-.Introducción

2-.Briefing 

3-.Materiales físicos y lógicos

4-.Arquitectura del software

5-.Tecnologías a utilizar

6-.Red

7-.Web

8-.Servicios

9-.Conclusiones

10-.Webgrafia

11-.Bibliografía

12-.Arduino

<details>
<summary><h2>1. Introducción</h2></summary>

Nuestra web va a tratar sobre música en streaming y donde los usuarios puedan ir comentando y recomendando sus canciones preferidas y dar sus opiniones respecto a la música que han escuchado. 
o que les han recomendado. Va a tener un extenso catálogo de canciones de diferentes estilos para satisfacer a las personas que utilicen nuestra página. 
Queremos que nuestros usuarios disfruten compartiendo sus canciones favoritas, opiniones y debates entre ellos y leer opiniones sobre otras músicas.

Somos un equipo de dos estudiantes que queremos hacer una web de música y hemos estado buscando webs y aplicaciones con este tipo de contenido para inspirarnos. Contenidos del tipo: música, opiniones y valoraciones de las canciones disponibles en la web.

##¿Qué funcionalidades ofrecerá a los usuarios?

Las funciones que vamos a implementar en nuestra página web van a ser:

- Crear una cuenta para poder guardar tus músicas favoritas.

- Si te vinculas, podrás tener amigos que te podrán recomendar música.

- Puedes hacer una lista personalizada de tus músicas favoritas.

- Cada canción tendrá una sección de comentarios donde podrás escribir tu opinión sobre cualquier canción y también poner del 1 al 5 cuánto te ha gustado.

  Los datos que se deben guardar serán los siguientes:
El nombre del usuario:
Correo electrónico o/e teléfono
Edad y para que lo quiere utilizar la web
Contraseña
Fecha de registro
Musica publicada 
Comentarios publicados
Música que ha estado escuchando los últimos 7 días
Datos de la web:
Música que hay publicada.
Comentarios publicados con fecha y hora.
Usuarios registrados
Usuarios conectados
Gente que ha descubierto un easter egg con una canción especial
Y un registro de las canciones más escuchadas y menos escuchadas
Valoración mediante un sistema de puntuación que utilizaremos en la web.
Para el tiempo→DATETIME
Para la fecha y la hora→Date
Puntuación de las canciones→Utilizaremos un sistema llamado Float o Decimal para números más precisos.
Comentarios publicados→ Date y Text

##¿Cómo se relacionan unas entidades con otras?
En nuestra web implementaremos una función para poder hablar y compartir músicas. Para tener esta función lo que tendremos que hacer es registrarse, luego de eso podrás buscar el nombre de todos los usuarios, luego en un apartado podrás aceptar la solicitud o rechazarla, si aceptas la solicitud podrás hablar con el usuario, enviarle músicas y también listas de música que él tenga. También se pueden poner opiniones en cada música y todos los usuarios podrán verlos y comentar.


##Registro en la tabla Usuario:

Nombre: Juan Pérez

Email: juanp@gmail.com

Fecha de registro: 10/09/2025

Amigos conectados: 2 amigos online

Amigos deconectados:0 amigos offline

Listas de música

Horas que has estado utilizando la aplicación:367 horas

Publicaciones subidas en los ultimos 7 dias: Comentario→ “Hola” 

Chats de amigos

  
</details>

<details>
<summary><h2>2. Briefing</h2></summary>

Estas eran unas de las propuestas que teníamos antes de decidirnos.

1-Hacer como una especie de Spotify pero sin anuncios.

2-Hacer una web como YouTube.

3-Hacer una especie de chat.

4-Hacer un foro de opiniones como Reddit.

Al final vamos a combinar algunas de estas ideas; vamos a hacer una web de música en streaming y que los usuarios puedan ir comentando y recomendando músicas y dar sus opiniones respecto a la 
música que han escuchado o que les han recomendado. Básicamente, hemos escogido hacer esto porque a ambos nos gusta la música, y además nos pareció buena idea que hubiese un chat con comentarios y opiniones de lo que la gente escucha y ve.

##Objetivos del Proyecto.
Nuestro objetivo es hacer la web funcionable sin errores y que la gente pueda disfrutar y gaudir de este proyecto, ya que lo que buscamos es que la gente la utilice y no solo ara que sea para un proyecto sino que queremos que se utilice de verdad, yo creo que si le ponemos empeño lo podremos lograr.
Objetivo del Publico.

Nosotros queremos llegar a un público específico que le encante la música, le gusta mucho opinar y debatir e/o crear debates entre ellos y leer opiniones sobre otras músicas que no han escuchado o/e han escuchado pero no sabían que otra gente sabía de la existencia de esa música, también esperamos llegar a un público que quiera ser músico y le guste hacer su propia música, publicarla y que los usuarios la escuchen.

##Material Necesario.
Vamos a utilizar una app externa que funciona mediante comandos que se llama FFMpeg
También necesitaremos una base de datos, un docker, y máquinas virtuales que hagan de servidores para dar seguridad y estabilidad a nuestra web.

</details>


</details>

<details>
<summary><h2>3.Materiales físicos y lógicos</h2></summary>
Para este proyecto vamos a usar sobre todo dos ordenadores.
En uno de ellos tendremos montado un servidor Linux en  VirtualBox, que es donde vamos a usar FFmpeg para convertir música antes de subirla a nuestra web.
También instalaremos Docker Desktop porque nos va a hacer falta para levantar la web y otros servicios sin tener que instalarlos a mano uno por uno.

En el segundo ordenador trabajaremos todo lo relacionado con el diseño de la página web, y además vamos a montar Pi-hole, que lo usaremos como servidor DNS y DHCP para que toda la red del proyecto esté controlada y funcione como toca.

</details>

<details>
<summary><h2>4.Arquitectura del software</h2></summary>
La idea básica es estructurarlo de tal manera que cada parte del proyecto tenga su propio espacio y no esté todo mezclado.
Utilizaremos Visual Studio Code para la programación de la web, ya que es lo más práctico para nosotros.
Después, utilizaremos Pi-hole como servidor DNS y DHCP, ya que su configuración es sencilla y nos permite gestionar toda la red sin complicaciones.

Para la parte de los servicios y el backend, utilizaremos Docker Desktop, que es donde desplegaremos elementos como MySQL o Apache, entre otros, sin necesidad de instalar nada directamente en el ordenador.
Además, contaremos con un servidor Linux exclusivamente para FFmpeg, que nos permitirá cargar y administrar música en streaming en nuestro sitio web.
Además de todo esto, deseamos establecer una VPN con Cloudflare, emplear Nginx como proxy inverso e intentar instalar Proxmox para gestionar máquinas virtuales de manera más profesional.
</details>

<details>
<summary><h2>5.Tecnologías a utilizar</h2></summary>
A continuación, podréis observar una lista  más detallada de todas las tecnologías que utilizaremos :

Visual Studio Code → para el desarrollo web.

HTML, CSS y JavaScript → con el propósito de diseñar y hacer que el sitio funcione.

Docker Desktop → para trabajar con Apache, MySQL, contenedores y servicios.

MySQL → base de datos para web.

Apache / Nginx → servidor de la web y proxy inverso.

Pi-hole → servidor de DHCP y DNS.

FFmpeg → administración y transformación de audio para su transmisión en línea.

Linux (en VirtualBox) → Servidor destinado a FFmpeg.

VPN de Cloudflare → acceso a distancia y seguridad.

Proxmox (si es posible) → administración avanzada de máquinas virtuales.

</details>

<details>
<summary><h2>6.Red</h2></summary>
Aquí podemos ver cómo vamos a organizar la web y los servidores correspondientes:

a.Diagrama de la red:

<img width="848" height="644" alt="image" src="https://github.com/user-attachments/assets/c1e30176-401e-4faf-82a9-26dae8a072e3" />


##Estructura básica de la red

Esto seria nuestra estructura sobre la web.

<img width="606" height="340" alt="image" src="https://github.com/user-attachments/assets/012ccfd6-3bb4-4a65-8fb2-72b1384c4f94" />

Hemos organizado la importancia de cada tabla con core(Tabla principal), subtablas i utilidades.

Core:
-
- En nuestra web la tabla de musica seria la tabla principal porque basicamente es la funcion principal de nuestra pagina web. 

Subtablas:
-
- Artistas: Los artistas estan en el apartado de subtablas por que no es una utilidad es solo un grupo especificos de personas y no es una utilidad.

Utilidades:
- 
- Valoraciones: Este sera un apartado bastante importante en nuestro proyecto ya que es lo unico que nos diferencia entre otras webs de musica.

- Buscardor: El buscados es fundamental a la hora de una web de musica y es una de las utilidades mas importantes de cualquier web de musica.

- Usuarios: Este es el apartado mas importante de nuestra web ya que gracias a los usuarion podremos utilizar la gran variedad de herramientas que ofrecemos.

<img width="906" height="709" alt="image" src="https://github.com/user-attachments/assets/bbdb2130-006c-4c67-b657-c5edd3c4b526" />


<details>
<summary><strong>Tabla de tecnologías</strong></summary>
Luego aqui podeis observar las funcionalidades de la Arquitectura de nuestra web:
## Lista de objetivos y funcionalidades del proyecto

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
 Luego aqui teneis un listado de tareas sobre como nos lo vamos a monatar y organizar en nuestro proyecto:
 Objetivo 1: Implementar un servidor web

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

Objetivo 2: Programar la front-page

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

<details>
<summary><strong>Tecnologías y Componentes del Sistema</strong></summary>

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

Ahora vamos presentar el diagrama de la base de datos:

##1. ¿Qué datos son necesarios para mi aplicación?

Para que mi app funcione bien necesitamos guardar varias cosas:
- Usuarios → toda la info de cada persona que se registre (nombre, email, contraseña…).

- Canciones → título, artista, archivo de música, duración, fecha de publicación…

- Playlists → nombre de la lista, quién la creó y qué canciones contiene.

- Comentarios → quién comenta, sobre qué canción, qué dice y cuándo lo hace.

- Valoraciones → quién da la nota a qué canción y qué puntuación le pone.

- Amigos → las relaciones entre usuarios, es decir, quién es amigo de quién.



##2. ¿Qué datos voy a pedir al usuario y qué tipos de usuarios voy a tener?
Datos que voy a pedir al usuario:

- Nombre de usuario

- Email

- Contraseña

- Foto de perfil 

Tipos de usuarios:

- Usuario normal → puede escuchar música, comentar canciones, valorar y crear playlists.

- Admin (opcional) → podría gestionar canciones, usuarios o comentarios si lo necesitamos.



3. ¿Qué tipo de dato necesitaré para cada información?

<details>
<summary><strong>Estructura de Base de Datoss</strong></summary>

## Tabla de datos y tipos (Base de datos)

### Tabla: Usuarios
| Información       | Tipo MySQL         | Descripción |
|------------------|--------------------|-------------|
| `id_usuario`      | INT AUTO_INCREMENT | Clave primaria, identifica a cada usuario. |
| `nombre_usuario`  | VARCHAR(50)        | Nombre que se muestra en la app. |
| `email`           | VARCHAR(100)       | Correo único de cada usuario. |
| `contraseña`      | VARCHAR(255)       | Contraseña encriptada. |
| `foto_perfil`     | VARCHAR(255)       | Ruta de la imagen que sube el usuario. |

---

### Tabla: Canciones
| Información     | Tipo MySQL         | Descripción |
|----------------|--------------------|-------------|
| `id_cancion`    | INT AUTO_INCREMENT | Clave primaria de la canción. |
| `título`        | VARCHAR(100)       | Nombre de la canción. |
| `artista`       | VARCHAR(100)       | Artista o grupo. |
| `archivo`       | VARCHAR(255)       | Ruta del archivo .mp3. |
| `duracion`      | TIME               | Duración de la canción. |

---

### Tabla: Playlists
| Información        | Tipo MySQL         | Descripción |
|-------------------|--------------------|-------------|
| `id_playlist`      | INT AUTO_INCREMENT | Clave primaria. |
| `nombre_playlist`  | VARCHAR(100)       | Nombre de la playlist. |

---

### Tabla: Comentarios
| Información        | Tipo MySQL         | Descripción |
|-------------------|--------------------|-------------|
| `id_comentario`    | INT AUTO_INCREMENT | Clave primaria del comentario. |
| `contenido`        | TEXT               | Contenido que escribe el usuario. |
| `fecha`            | DATETIME           | Fecha del comentario. |

---

### Tabla: Valoraciones
| Información        | Tipo MySQL         | Descripción |
|-------------------|--------------------|-------------|
| `id_valoracion`    | INT AUTO_INCREMENT | Clave primaria. |
| `puntuacion`       | TINYINT            | Nota del 1 al 5. |

---

### Tabla: Amigos
| Información | Tipo MySQL         | Descripción |
|-------------|--------------------|-------------|
| `id_amigo`  | INT AUTO_INCREMENT | Clave primaria. |
| `usuario1`  | INT                | ID del primer usuario. |
| `usuario2`  | INT                | ID del segundo usuario. |

</details>


##4. ¿Qué clave primaria voy a implantar en cada tabla y cómo las relacionaré?
- Usuarios → id_usuario

- Canciones → id_cancion

- Playlists → id_playlist

- Comentarios → id_comentario

- Valoraciones → id_valoracion

- Amigos → id_amigo

###Relaciones principales:
- Una playlist pertenece a un usuario, así que un usuario puede tener muchas playlists.

- Una canción puede estar en muchas playlists, por eso necesitamos una tabla intermedia tipo “playlist_cancion”.

- Un comentario pertenece a un usuario y a una canción, para saber quién dijo qué y dónde.

- Una valoración pertenece a un usuario y a una canción, para calcular la nota media.

- Una relación de amigos une dos usuarios, así podemos ver quién es amigo de quién.



</details>

<details>
<summary><h2>7.Web</h2></summary>

b.Mockup:

Este sería el mockup de nuestra web.



Página principal:

Esta es nuestra primera página, la homepage. Desde aquí podemos escuchar música y configurar un par de cosas. Todas las demás opciones, para tenerlas disponibles, el usuario tendrá que iniciar sesión. 
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/0cb4442b-076c-4e7e-9020-36a8b6a94b19" />



Inicio de sesion:

Esto será nuestro inicio de sesión y de fondo intentaremos poner un video de nuestra web; además, si no inicias sesión, no podrás publicar ni videos ni comentarios.
poner valoraciones a las canciones, solo podras escucharlas y hacer todas las acciones sobre retroceder o avanzar o ponerlo en bucle., una
vez hayas iniciado sesion podras hacer todo.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/657f6ad2-14e6-4589-833b-ca42ceea8b21" />



Página principal luego del inicio de sesión:

Dentro de iniciar sesión podrás utilizar todas las herramientas de nuestra web.

El contenido que tendrá será:
- Buscador

- Botón para ver la lista de búsqueda

- Botón para ver tus amigos

- Botón de opiniones

- Botón de ajustes

- Músicas recomendadas con botón para entrar dentro de cada música

- Botón para ver tu perfil
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/0f30fc76-e67a-46ff-905c-f75596a9c838" />



Músicas:

Esta opción también estará disponible sin iniciar sesión; desde aquí solo podrás escuchar la música y ver el nombre del artista.
Al ver su letra, las opciones de valoraciones solo estarán disponibles si inicias sesión.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/028edfcc-5c9d-4b27-9489-d2ef485d32d6" />



Opiniones:

Desde aquí podrás ver comentarios de gente debatiendo sobre músicas y sus opiniones; también podrás ver todas tus opiniones. 
Y valoraciones que has hecho. También podrás eliminar valoraciones u opiniones que hayas hecho.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/4de2ce40-07b0-48b0-9039-47c50c6370a7" />



Amigos:

Dentro de aquí podrás ver a todos tus amigos; también desde esa pestaña podrás ver el perfil de tus amigos. También tendrás un chat con cada uno. 
Amigo, y también podréis pasaros músicas.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/31656063-b799-4611-bcba-08e3f34a4911" />



Listas de músicas:

Aquí podrás ver las músicas que hayas almacenado. También podrás hacer listas de músicas de lo que tú quieras.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/33b7421b-3ec2-4d06-a578-8db2960ec105" />



Buscador:

También esta es otra opción que estará disponible sin tener que iniciar sesión y podrás buscar la música que tú prefieras o la que esté. 
Disponible en nuestra web; también podrás ver los artistas, el tipo de música y una valoración general de la música.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/1ba60730-1e27-4abb-9d32-daae5a2d67e6" />



Tu perfil:

Aqui podras ver bastantes cosas como:

- Tus músicas.

- Tus amigos.

- Tus listas de música.

- Tambien un boton que te lleve a la privacidad de la cuenta.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/a83cf8df-3fdc-43aa-b3d6-549731cd5316" />



Perfil de amigos:

Aquí podrás ver el perfil de los amigos que tengas y podrás ver:

- Amigos que tengan tus amigos.

- Músicas gustadas. 

- Listas de músicas que tenga.

- Comentarios y valoraciones que haya puesto.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/d844342d-d264-4ca9-98e7-670c661e145c" />



Configuración:

Desde aquí podrás modificar una variedad de contenido para que la experiencia con el usuario sea mejor; las opciones que hay son:

- Poder cambiar los colores de la Página.

- Poder gestionar la privacidad.de la cuenta.

También ofrecemos opciones para la privacidad del usuario que son:

- Amigos no visibles.

- Usuarios no puedan acceder a tus listas de msica.

- No poder recibir solicitudes de amistad.

- No son visibles tus comentarios y varolaciones.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/413a613c-f51e-455b-91fd-4505ed9988e2" />

c.Mapa de navegabilidad:

-Aquí tenemos el diagrama de flujo de la interfaz web.


<img width="528" height="852" alt="image" src="https://github.com/user-attachments/assets/980bccd8-7082-4ea4-acad-ed31662ee8ca" />
</details>

<details>
<summary><h2>8.Servicios</h2></summary>
g.DNS i DHCP

Priemro de todo el DNS es un sistema que traduce nombres de dominio (google.com) a direcciones IP i lo necesitamos por que sin DNS, los usuarios tendrían que recordar IPs de máquinas i el DHCP es un 
servicio que asigna automáticamente IP, puerta de enlace y DNS a los clientes tambien es necesario para evita configurar manualmente cada equipo y reduce errores. Para poder gestion el DNS i el DHCP lo que hemos
hecho a sido instalar y configurar el pi-hole dentro de un ubuntu server.

Dentro de el ubuntu server el primer comando que tenemos que ejetar es "sudo apt update && sudo apt upgrade -y" que esto lo que ara sera actualizar el sistema para poder instalar el pihole, luego lo que tendremos que hacer sera 
configurar la ip statica y lo haremos poniendo el comando "sudo nano /etc/netplan/00-installer-config.yaml" i esto lo que hace es editar el archivo netplan y la tendremos que configurar aqui una captura de como lo tenemos configurado.
<img width="794" height="680" alt="image" src="https://github.com/user-attachments/assets/f7c6eb1b-0479-4f30-abb0-25ef1abfd5be" />

Ahora luego de haber configurado correctamente el archivo netplat solo tenemos que hacer "sudo netplan apply" para aplicar los cambios y "ip a" para verificar que funcione. Despues de hacer los anteriores pasos tendremos que instalar el 
pi-hole con "curl -sSL https://install.pi-hole.net | bash" si no funciona el comando significa que el ubuntu no tiene instalado el curl, si es asi solo instalamos el curl con "sudo apt install curl -y". Ahora en la instalacion saldran las 
siguientes opciones: seleccionar la interfaz de red, elegir el DNS upstream, seleccionar interfaz web  y seleccionar servidor web.

Despues de completar la instalacion del pi-hole y haber seleccionado cada apartado al final tendremos que seleccionar una contraseña para el pi-hole y sera necesaria para abrir el pi-hole dentro de el navegador. Ahola despues de hacer todos
los anteriores passos tenemos que escribir des de un nevegador http://IP_DEL_SERVIDOR/admin y se nos abrira la pagina de pi-hole, lo que tendremos que hacer ahora es poner el usuario que tengamos en el ubuntu server y tambien poner la contraseña
que habia hablado anteriormente i despues de eso ya podremos gestionar el DNS y el DHCP.

h.Apache:



i.Firewall:



j.Copias de seguridad:


k.Ffmpeg

Ffmpeg se trata de una herramienta de línea de comandos que permite realizar multitud de tareas relacionadas con video, audio o incluso imágenes, en nuestro caso ffmpeg lo utilizaremos para poner la musica dentro de nuestra pagina web tambien el ffmpeg es multiplataforma, por lo que puede instalarse en cualquier sistema, ya sea GNU/Linux, Windows o Mac, nosotros lo haremos des de un ubuntu. Para proceder a instalar el Ffmpeg lo primero que tenemos que hacer es abrir el cmd i poner 
este comando "$ sudo apt-get install ffmpeg", solo con ese comando ya tendremos el Ffmpeg instalado dentro del ubuntu. 

<img width="878" height="449" alt="image" src="https://github.com/user-attachments/assets/41cc369e-e5df-4756-a902-d48963fa1e56" />

Ffmpeg para como tanto para obtener información de un archivo multimedia, como para convertirlo a otro formato.

</details>

<details>
<summary><h2>9.Diagrama Gantt</h2></summary>
Aqui podeis ver como lo hemos organizado y separado el Diagrama:
<img width="1919" height="417" alt="image" src="https://github.com/user-attachments/assets/ee66626d-ab31-4546-bf3f-8af53b429077" />
Y aqui os voy a dejar el enlace al Excel para que lo vayais viendo como se va actualizando a diario: https://alumnoifp-my.sharepoint.com/:x:/g/personal/rreyesf_student_ifp_es/EWDiyoYtqXtNhg-YJbDrquoBVqxon1pBstPxaSgkpy9Yhg?e=22Y8uM
</details>

<details>
<summary><h2>10.Conclusiones</h2></summary>
</details>


<details>
<summary><h2>11.Bibliografía</h2></summary>
Hemos utilizado estas webs para buscar informacion datos etc ect:
  
Esta Web la hemos utilizado para coger iconos:
https://icons.getbootstrap.com/

También nos hemos basado en muchas ideas de la pagina de Spootify:
https://open.spotify.com/

También hemos hecho el diseño del la web en el canva:
https://www.canva.com/design/DAG1FzZUJu8/4GEBUf7oiEVidqma9VoWNw/view?utm_content=DAG1FzZUJu8&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=he356a4d6cf

Esta web sirve para corregir nuestros errores ortográficos:
https://quillbot.com/es/corrector-ortografico/d/8fda3fc1-36db-468a-92ae-1efa4166ce68

Para hacer el diagrama de la red hemos utilizado microsoft visio:
https://m365.cloud.microsoft/launch/visio?auth=2&origindomain=microsoft365
</details>

<details>
<summary><h2>12.Arduino</h2></summary>

Investigar

- 2.1  ¿Qué es Arduino?

Arduino es una plataforma de desarrollo basada en una placa electrónica de hardware libre que incorpora un microcontrolador re-programable y una serie de pines hembra.

<img width="272" height="185" alt="image" src="https://github.com/user-attachments/assets/5e6d88be-25ce-46bc-8691-48e56818d974" />

- 2.2 ¿Cuáles son sus características más importantes?

Las características más importantes de Arduino son su simplicidad, flexibilidad y facilidad de uso, tanto en hardware como en software. Es una plataforma de prototipado electrónico de código abierto, diseñada para facilitar la interacción entre el mundo físico y digital. 


- 2.3 ¿Cuál es el origen de Arduino?

Arduino nació en el año 2005 el Instituto de Diseño Interactivo de Ivrea, apareció por la necesidad de contar con un dispositivo para utilizar en las aulas que fuera de bajo coste.

- 2.4 ¿Qué modelos de Arduino hay? Haz una tabla donde especifiques para cada modelo:
microcontrolador, voltaje, pines digitales, entradas analógicas, memoria, reloj.

Existen varios modelos de Arduino, entre los más conocidos están:
Arduino Uno: Usa el microcontrolador ATmega328P, funciona a 5V, tiene 14 pines digitales, 6 entradas analógicas, 32 KB de memoria flash y trabaja a 16 MHz.

<img width="259" height="194" alt="image" src="https://github.com/user-attachments/assets/a0225629-18e4-4936-ba68-208ca7a72400" />

Arduino Mega: Usa el ATmega2560, también a 5V, con 54 pines digitales, 16 entradas analógicas, 256 KB de memoria y 16 MHz.

<img width="225" height="225" alt="image" src="https://github.com/user-attachments/assets/37195086-6901-4f99-a660-e3d0a0f61721" />

Arduino Nano: Más pequeño, con el mismo microcontrolador que el Uno (ATmega328P), 14 pines digitales, 8 analógicos, 32 KB y 16 MHz.

<img width="231" height="219" alt="image" src="https://github.com/user-attachments/assets/bec78c4c-caef-40ed-a48f-5e81740007bf" />

Arduino Leonardo: Usa el ATmega32u4, tiene 20 pines digitales, 12 analógicos, 32 KB de memoria y 16 MHz.

<img width="259" height="194" alt="image" src="https://github.com/user-attachments/assets/5528287f-2a96-4b64-a27a-324096766cf6" />

Arduino Due: Usa un microcontrolador ARM Cortex-M3 (ATSAM3X8E), funciona a 3.3V, tiene 54 pines digitales, 12 analógicos, 512 KB y una frecuencia de 84 MHz.

<img width="306" height="165" alt="image" src="https://github.com/user-attachments/assets/88fda871-b89d-4f40-be8c-0cf622d285ff" />

- 2.5 ¿Para qué sirve un Arduino?

Se utiliza como un microcontrolador reprogramable con una serie de pines que permiten establecer conexiones entre el controlador y los diferentes sensores, es decir el «cerebro» de algún circuito o maquinaria.

- 2.6 ¿Qué lenguaje utiliza?

Usa C y C++, el llenguatge de programació C, llenguatge C o llenguatge de programació de sistemes, va ser creat per Dennis Ritchie i Ken Thompson als Laboratoris Bell d'AT&T, a principis de la dècada dels 70 i el C++ es un lenguaje de programación que fue creado, como su predecesor C , en los laboratorios Bell (no confundir con Graham Bell) de AT&T . El autor principal es Bjarne Stroustrup.

- 2.7 ¿Qué es el Arduino IDE?

Es el entorno de desarrollo donde se escribe, compila y sube el código a la placa Arduino. Basicamente es donde puedes hacer todas las funciones de el arduino.

Resumen acerca de arduino:

Arduino es una pequeña placa electrónica que funciona como el "cerebro" de muchos proyectos. Sirve para controlar luces, motores, sensores y muchas otras cosas. Lo genial de Arduino es que cualquiera lo puede usar, incluso si no sabe mucho de electrónica, porque es fácil de entender y está pensado para aprender jugando y experimentando.

Arduino fue creado en el año 2005 en Italia por un grupo de profesores que querían ayudar a sus estudiantes a aprender tecnología sin gastar mucho dinero. Desde entonces, se ha hecho muy famoso en todo el mundo.

Una de las cosas más importantes de Arduino es que es abierto, lo que significa que puedes ver cómo está hecho, modificarlo y compartir tus ideas con otras personas. Además, funciona con un programa llamado Arduino IDE, que es donde escribimos las instrucciones para decirle a la placa qué hacer. Esas instrucciones se escriben en un lenguaje de programación llamado C o C++, que aunque suene complicado, se puede aprender poco a poco con práctica.

Hay varios modelos de Arduino, como el Uno, Mega, Nano o Leonardo, y cada uno tiene diferentes tamaños, memoria y cantidad de conexiones. Algunos tienen más espacio para guardar instrucciones, otros tienen más pines para conectar cables, y algunos son tan pequeños que caben en tu mano.

En resumen, Arduino es una herramienta súper útil para aprender a crear cosas electrónicas, como robots, juegos, alarmas o luces automáticas. Es como una caja de magia tecnológica para inventores jóvenes y curiosos.

Práctica: LED
-

- 1 Objetivo de la practica:

Según el circuito funciona si el nivel de salida GPIO2 del ESP32-S3 WROOM es alto, el LED se enciende y cuando el nivel de
salida es bajo, el LED se apaga. Por lo tanto, podemos dejar que el GPIO2 emita circularmente niveles altos y bajos
para hacer que el LED parpadee.

- 2 Material y explicacion de cada componente:

Los componentes son:
-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto. 

-LED: El LED sirve para proporcionar luz al arduino.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico.

- 3 Esquema del circuito:



- 4 Codigo explicado:

Para emprezar "#define LED_BUILTIN 2" sirve para definir el LED que tenemos en el Breadboard, luego el comando "void setup(){" lo que hace es estableces cuales serán 
los pines de entrada o salida, configurar parámetros como velocidad o frecuencias i "pinMode(LED_BUILTIN, OUTPUT);" permite configurar a cada pin, de forma individual, como entrada o como salida.
Tambien "void loop(){" es una función que permite el ciclo repetido de un bloque de código y "digitalWrite" establecer un valor de HIGH o LOW en un pin digital de Arduino siempre 
y cuando se haya configurado como salida y "delay" lo que hace es simplemente esperar.

<img width="454" height="209" alt="image" src="https://github.com/user-attachments/assets/dff9cb1a-6511-4a30-a063-7b0f944a4e8b" />

- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:


<img width="976" height="735" alt="image" src="https://github.com/user-attachments/assets/49af2129-00ef-448b-b2d0-dffe26ebe046" />


Práctica: SEMÁFORO
-

- 1 Objetivo de la practica:

A partir de los conocimientos adquiridos en la anterior práctica hay que construir un prototipo de un semáforo
en el que las luces parpadeen de forma intermitente pero nunca a la vez.

- 2 Material y explicacion de cada componente:

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-LED: El LED sirve para proporcionar luz al arduino y utilizaremos 3 para simular los colores de un semaforo, los colores son rojo, verde y rojo.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico.

- 3 Esquema del circuito:



- 4 Codigo explicado:

Primero los tres "#include" se utilizan para identificar los 3 LEDS, luego el comando "void setup(){" lo que hace es estableces cuales serán 
los pines de entrada o salida, configurar parámetros como velocidad o frecuencias i "pinMode(LED_BUILTIN, OUTPUT);" permite configurar a cada pin, de forma individual por eso esta el mismo comando repetido 3 veces,
i "void loop(){" es una función que permite el ciclo repetido de un bloque de código y "digitalWrite" establecer un valor de HIGH o LOW en un pin digital de Arduino siempre 
y cuando se haya configurado como salida y configuraremos el mismo comando 3 veces por cada Led  "delay" lo que hace es simplemente esperar y lo configuraremos depende de cada LED.

<img width="650" height="654" alt="image" src="https://github.com/user-attachments/assets/8c524e65-edd8-4e5a-8cd0-f4f531bab3cc" />

- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:


<img width="976" height="735" alt="image" src="https://github.com/user-attachments/assets/c6c688ee-8961-43aa-b9c8-6c2740634f5c" />

Práctica 1: Button & Led
-

- 1 Objetivo de la practica:

En esta práctica vamos a controlar el estado del led a través de un botón. Esto es, cuando se
presiona el botón, se enciende el led y, cuando se suelte, se apagará.

- 2 Material y explicacion de cada componente:

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos uno de 220Ω i uno de 10kΩ.

-LED: El LED sirve para proporcionar luz al arduino y solo utilizaremos 1 LED.

-Push button: Simplemente es un pulsador que en esta actividad nos va a servir para encender el LED.

- 3 Esquema del circuito:

<img width="488" height="370" alt="image" src="https://github.com/user-attachments/assets/9071a546-c93d-4cfa-b9d1-ec2e1bba7bbd" />


- 4 Codigo explicado: 

Primero de todo utilizamos dos "include", uno para identificar el LED i el otro para identificar el push botton, luego de identificarlos tenemos que utilizar 
el comando "void setup(){" lo que hace es estableces cuales serán los pines de entrada o salida y dentro de el void setup ponemos "pinMode" permite configurar a cada pin i en nuestro
caso pondremos dos para configurar el LED(pinMode(PIN_LED, OUTPUT) i el push button(PIN_BUTTON, INPUT). Despues de poner el void setup i el pinmode 
ponemos "void loop(){" es una función que permite el ciclo repetido de un bloque de código i ponemos  If que sirve para que tu programa haga una cosa o otra 
dependiendo de cada situación, i dentro de else ponemos "digitalread" sirve para leer un valor de un pin y "digitalWrite" permite escribir valores lógicos digitales 
en un pin de salida de una tarjeta Arduino, if hace poder encender el LED si lo mantenemos presionado. Tambien "else" se utiliza para definir un bloque de código que 
se ejecutará si no se cumple la condición if y en este caso pondriamos "digitalWrite" i poner LOW para que no se encienda.
<img width="964" height="658" alt="image" src="https://github.com/user-attachments/assets/d952f2e9-9e5b-4acf-a176-e8e9508030cd" />

- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:

<img width="1026" height="756" alt="image" src="https://github.com/user-attachments/assets/9d153aeb-3fc8-46c4-bf70-eab4f7803fe0" />


Práctica 2: Mini table Lamp
-

- 1 Objetivo de la practica:

Para esta práctica también usaremos un interruptor de botón, un LED para hacer una lámpara de
mesa MINI, pero de manera diferente, esto es: al presionar el botón, el LED se encenderá y, al
presionar el botón nuevamente, el LED se apagará.

- 2 Material y explicacion de cada componente:

Los componentes que se utilizan en este ejercicio son los mismos que se utilizan en el ejercicio 3 Button & Led.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos uno de 220Ω i uno de 10kΩ.

-LED: El LED sirve para proporcionar luz al arduino y solo utilizaremos 1 LED.

-Push button: Simplemente es un pulsador que en esta actividad nos va a servir para encender el LED
  
- 3 Esquema del circuito:

<img width="488" height="370" alt="image" src="https://github.com/user-attachments/assets/9071a546-c93d-4cfa-b9d1-ec2e1bba7bbd" />

- 4 Codigo explicado:

Primero de todo ponemos "bool LedOn" que se utilizan para almacenar un estado de entre esos dos posibles, y así hacer que el código reaccione según
detecte verdadero o falso, luego de eso ponemos "void setup(){" lo que hace es estableces cuales serán los pines de entrada o salida, dentro del void setup ponemos "pinMode" permite configurar a cada pin i en nuestrocaso pondremos dos para configurar el LED(pinMode(2, OUTPUT) i el push button(13, INPUT_PULLUP). Luego "void loop()" i "if "(digitalRead(13) == LOW){" que esto lo que hace es detectar si el botón está presionado, despues "delay(50);" que hara una pequeña espera, ledOn = !ledOn; lo que hace es cabiar el estado del LED de apagado a encendido o al reves, "digitalWrite(2, ledOn ? HIGH : LOW);" que hace apagar o encender el LED segun el estado de ledon, "while (digitalRead(13) == LOW);" espera a que el boton deje de estar pulsado para apagar el LED y para finalizar un "delay(50);"

<img width="800" height="551" alt="image" src="https://github.com/user-attachments/assets/000593d5-8440-4da3-b455-2c07f8b59e27" />


- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:

<img width="939" height="696" alt="image" src="https://github.com/user-attachments/assets/467d0a96-b3b2-472f-8557-f9b4ce525f8d" />

Práctica 3.1: Random Color Light
-

- 1 Objetivo de la practica:

Haremos un LED multicolor, controlando el LED RGB para cambiar entre diferentes colores
automáticamente. El LED RGB tiene integrados 3 LED que pueden emitir luz roja, verde y azul respectivamente. Y
tiene 4 pines.

- 2 Material y explicacion de cada componente:

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos tres de 220Ω.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-RGBLED: Consiste en múltiples combinaciones de tres colores primarios ópticos, rojo, verde y azul

- 3 Esquema del circuito:

<img width="381" height="409" alt="image" src="https://github.com/user-attachments/assets/1f09e0af-9af8-4f62-8e26-8b138b2ce65c" />

- 4 Codigo explicado:

<img width="1426" height="730" alt="image" src="https://github.com/user-attachments/assets/0b07053c-e444-4a0c-af23-43decdeb09b9" />


- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/26643b1a-120a-4156-b895-13f8c33e676e" />


- Preguntas

1) Analizar y entender la diferencia entre un LED normal a un LED RGB. Para esto pueden crear
una pequeña tabla de dos Columnas, donde la cabecera de cada columna serán los dos tipos
de LED analizados en clase y que tendrá dos filas asociadas a los elementos comunes y las
diferencias entre ellos.

El LED normal emite un solo color fijo (rojo, verde, amarillo, etc.) y el LED RGB Puede emitir múltiples colores combinando rojo, verde y azul, tambien otra diferencia es que le LED normal tiene dos patas y el LED RGB tiene 4.

2) Que ocurriría en caso de invertir los colores del LED RGB por ejemplo que el pin 4 (Rojo)
vaya a la pata del LED G(Verde) y el pin 0 a la pata del LED R(Roja). Porque cree que pase
esto argumente su respuesta.

-El código envía valores a cada pin pensando que controla un color en concreto.

-Al estar mal cableado, el valor destinado al rojo se mostrará como verde y otros colores.

-El resultado son colores incorrectos.

3) Que sucede si comentamos dentro de la función void loop{}, la llamada a la función
setColor(red, green, blue). Argumente lo que observa, después de volver a compilar el código.

Puede haber dos opciones, la primera es que el LED no cambiara de color y la segunda opcion seria que quedará apagado o mostrará el último color cargado antes.

Práctica 3.2: RGB LED Controlado
-

- 1 Objetivo de la practica:

Ahora necesitamos controlar el valor de los colores que quiero mostrar por cada ping.

- 2 Material y explicacion de cada componente:

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos tres de 220Ω.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-RGBLED: Consiste en múltiples combinaciones de tres colores primarios ópticos, rojo, verde y azul

- 3 Esquema del circuito:



- 4 Codigo explicado:

<img width="1438" height="735" alt="image" src="https://github.com/user-attachments/assets/ae403871-bb79-4322-9c2b-5dbbb2260306" />


- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/9ab97956-cd26-4f0f-9e24-2258bae313d5" />


- Preguntas

1) ¿Qué función tendría que dejar de utilizar para evitar el cambio aleatorio de los colores dentro
del ciclo infinito? Explique que hace dicha función.

La funcion lo que hace es generar valores aleatorios entre dos límites y tambien al usarse dentro de loop() provoca que el LED cambie de color todo el rato.

2) Utiliza al menos dos combinaciones de colores (RGB) no aleatorias, que más le guste y donde
se observen diferencias y argumente porque cree usted que se observa la tendencia hacia un
color determinado.

RGB(255, 0, 0) → Rojo intenso
Predomina el rojo porque solo ese canal tiene valor alto de todos.

3) ¿Qué sucedería si utilizamos la función aleatoria, pero regulamos los valores de la función
random y pasamos los rangos que queremos? ¿Sería una forma de regular la coloración del
LED RGB? Explique su respuesta brevemente.

Lo que hariamos seria lo siguiente:

-Limitamos los valores posibles.

-Evitamos colores extremos.

-Se obtiene una variación más suave y controlada.


Práctica 3.3: Luz de Color Degradado
-

- 1 Objetivo de la practica:

En el proyecto anterior, dominamos el uso de LED RGB, pero la visualización aleatoria de colores
es bastante rígida. Este proyecto realizará una luz moderna con suaves cambios de color, La lista de
componentes y el circuito son exactamente los mismos que los de la luz de color aleatorio.
Usando un modelo de color, el color cambia de 0 a 255.

- 2 Material y explicacion de cada componente:

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos tres de 220Ω.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-RGBLED: Consiste en múltiples combinaciones de tres colores primarios ópticos, rojo, verde y azul

- 3 Esquema del circuito:



- 4 Codigo explicado:

<img width="1429" height="735" alt="image" src="https://github.com/user-attachments/assets/3202fb5d-82f3-467a-9fe7-1830e8de9aa5" />


- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/e6aa3c4a-b3ee-44bd-8545-b662f590d408" />


- Preguntas

1) Que observa tras cargar y correr el código del programa con respecto a lo que vimos antes.
Explique la diferencia y argumente que es el gradiente y que es lo que hace (En el código)
que en este ejercicio se pueda observar.

Lo que pasa al ejecutar el codigo es que el color cambia de forma suave y no hay saltos bruscos como con el comando random.

2) Explique que es el tipo de dato long y su diferencia con el int y porque se utiliza en el ejercicio.

Se usa long para que los valores de color en formato hexadecimal pueden ser muy grandes y un int no podría almacenarlos correctamente.

3) Explique el funcionamiento de la función wheel de manera general.

Lo que hace el comando wheel es que recibe un valor entre 1 y 255 y luego devuelve un color RGB diferente según el valor que le han dado y por ultimo permite recorrer todo el espectro de colores de forma suave.
   
4) Busque en las referencias para que se utiliza la función ledcWrite() además indique cual es
la salida de esta función y qué significado tiene en el código.

La funcion lo que hace es envía un valor PWM a un canal configurado, el significado en el codigo es controlar la intensidad de cada color RGB y permite crear mezclas y transiciones suaves.


Práctica 4: LED BAR
-

- 1 Objetivo de la practica:

Un gráfico de barras LED tiene 10 LED integrados en un componente compacto. Las dos filas de
LEDs en su parte inferior están emparejadas para identificar cada LED como el único LED
utilizado anteriormente.

- 2 Material y explicacion de cada componente:

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper 10x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 10 para hacer un gráfico de barras LED. 

-Resistencia220Ω x10: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, i necesitaremos 10 resistencias para conectarlas al LED bad graph.

-LED bar graph: Es una matriz de LED que se utiliza para conectarse con un circuito electrónico o un microcontrolador.
  
- 3 Esquema del circuito:

<img width="588" height="422" alt="image" src="https://github.com/user-attachments/assets/30e0a102-3b1c-426a-9adf-d5e8af340793" />

- 4 Codigo explicado:

<img width="651" height="376" alt="image" src="https://github.com/user-attachments/assets/0897549a-a247-4984-b66a-96c508c6e680" />

- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/e2a263d7-8b79-4a0b-94ce-6ebe66653370" />

Práctica 5.1: Serial comunication
-

- 1 Objetivo de la practica:

Para esta práctica vamos simplemente a probar como funciona la comunicación de la placa con el
ordenador para, en próximas prácticas, explotar esta funcionalidad.

- 2 Material y explicacion de cada componente:

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Micro USB wire: Usado para energizar y conectar con la PC ciertas tarjetas Arduino.
  
- 3 Esquema del circuito:



- 4 Codigo explicado:



- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:


- Preguntas

1) ¿Que aparece en serial monitor?

Al pulsar BOOT + EN a la vez, la placa entra en modo programación, lo que permite cargar un nuevo programa desde el ordenador.
   
2) Pulsa los botones de boot+EN que hay en la placa de Arduino, ¿qué ocurre? Ahora pulsa solo en, ¿qué ha ocurrido? ¿para qué nos puede servir esto?

Al pulsar solo EN, la placa se reinicia, es decir, vuelve a empezar la ejecución del programa desde el inicio.

3) ¿Qué indica la linea de código “Serial.begin(115200);”?


   
4) Averigua que significa “%.1f s\n“.


Práctica 5.2: Panel LCD1602
-

- 1 Objetivo de la practica:

Una pantalla LCD1602 típica puede mostrar 2 líneas de caracteres en 16 columnas y es capaz de
mostrar números, letras, símbolos, código ASCII, etc.

- 2 Material y explicacion de cada componente:

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Pantalla LCD1602: Permite mostrar texto/números/caracteres, además hacer debugging o correcciones en nuestros proyectos sobretodo cuando se trabaja con sensores y procesamiento de datos.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y los utilizaremos para conectarlo a la Pantalla LCD1602.
 
- 3 Esquema del circuito:

<img width="612" height="441" alt="image" src="https://github.com/user-attachments/assets/ead64f05-27fa-4e6d-a12e-8afeb53703f6" />


- 4 Codigo explicado:



- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:   


- Preguntas:
  
1) Revisa las conexiones en el circuito eléctrico y explica para que se utiliza cada una:
   
SCL:

SDA:

VCC:

GND:


2) ¿Que hace la función “lcd.print()”? ¿Y “lcd.clear”?

   
3) Por último, busca como conseguir que el mensaje de la primera fila se desplace de izquierda
a derecha o a la inversa.


Práctica 5.3: Crear una estación meteorológica y recuperar los datos
-

- 1 Objetivo de la practica:



- 2 Material y explicacion de cada componente:

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Pantalla LCD1602: Permite mostrar texto/números/caracteres, además hacer debugging o correcciones en nuestros proyectos sobretodo cuando se trabaja con sensores y procesamiento de datos.

-Resistencia10kΩ x1: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, 
  
- 3 Esquema del circuito:

<img width="565" height="381" alt="image" src="https://github.com/user-attachments/assets/f7ee77dc-e40a-4f72-9f9b-deccf54fa1d4" />


- 4 Codigo explicado:



- 5 Video de la practica:



- 6 Imagen para la entrada del blog o proyecto:



</details>
