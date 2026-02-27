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
<summary><h1>1. Introducción</h1></summary>

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
<summary><h1>2. Briefing</h1></summary>

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
<summary><h1>3.Materiales físicos y lógicos</h1></summary>
Para este proyecto vamos a usar sobre todo dos ordenadores.
En uno de ellos tendremos montado un servidor Linux en  VirtualBox, que es donde vamos a usar FFmpeg para convertir música antes de subirla a nuestra web.
También instalaremos Docker Desktop porque nos va a hacer falta para levantar la web y otros servicios sin tener que instalarlos a mano uno por uno.

En el segundo ordenador trabajaremos todo lo relacionado con el diseño de la página web, y además vamos a montar Pi-hole, que lo usaremos como servidor DNS y DHCP para que toda la red del proyecto esté controlada y funcione como toca.

</details>

<details>
<summary><h1>4.Arquitectura del software</h1></summary>
La idea básica es estructurarlo de tal manera que cada parte del proyecto tenga su propio espacio y no esté todo mezclado.
Utilizaremos Visual Studio Code para la programación de la web, ya que es lo más práctico para nosotros.
Después, utilizaremos Pi-hole como servidor DNS y DHCP, ya que su configuración es sencilla y nos permite gestionar toda la red sin complicaciones.

Para la parte de los servicios y el backend, utilizaremos Docker Desktop, que es donde desplegaremos elementos como MySQL o Apache, entre otros, sin necesidad de instalar nada directamente en el ordenador.
Además, contaremos con un servidor Linux exclusivamente para FFmpeg, que nos permitirá cargar y administrar música en streaming en nuestro sitio web.
Además de todo esto, deseamos establecer una VPN con Cloudflare, emplear Nginx como proxy inverso e intentar instalar Proxmox para gestionar máquinas virtuales de manera más profesional.
</details>

<details>
<summary><h1>5.Tecnologías a utilizar</h1></summary>
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
<summary><h1>6.Red</h1></summary>
Aquí podemos ver cómo vamos a organizar la web y los servidores correspondientes:

a.Diagrama de la red:

<img width="905" height="749" alt="image" src="https://github.com/user-attachments/assets/82f3d9ba-9db0-4032-8da3-78f2baa8cc26" />

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

1. ¿Qué datos son necesarios para mi aplicación?

Para que mi app funcione bien necesitamos guardar varias cosas:
- Usuarios → toda la info de cada persona que se registre (nombre, email, contraseña…).

- Canciones → título, artista, archivo de música, duración, fecha de publicación…

- Playlists → nombre de la lista, quién la creó y qué canciones contiene.

- Comentarios → quién comenta, sobre qué canción, qué dice y cuándo lo hace.

- Valoraciones → quién da la nota a qué canción y qué puntuación le pone.

- Amigos → las relaciones entre usuarios, es decir, quién es amigo de quién.



2. ¿Qué datos voy a pedir al usuario y qué tipos de usuarios voy a tener?
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
<summary><strong>Estructura de Base de Datos</strong></summary>

Tabla de datos y tipos (Base de datos)

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


4. ¿Qué clave primaria voy a implantar en cada tabla y cómo las relacionaré?
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

<details>
<summary><h1>7.Web</h1></summary>

Este sería el mockup de nuestra web.

<details>
  
<summary><h4>Página principal:</h4></summary>

Esta es nuestra primera página, la homepage. Desde aquí podemos escuchar música y configurar un par de cosas. Todas las demás opciones, para tenerlas disponibles, el usuario tendrá que iniciar sesión. 
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/0cb4442b-076c-4e7e-9020-36a8b6a94b19" />

</details>

<details>
  
<summary><h4>Inicio de sesion:</h4></summary>

Esto será nuestro inicio de sesión y de fondo intentaremos poner un video de nuestra web; además, si no inicias sesión, no podrás publicar ni videos ni comentarios.
poner valoraciones a las canciones, solo podras escucharlas y hacer todas las acciones sobre retroceder o avanzar o ponerlo en bucle., una
vez hayas iniciado sesion podras hacer todo.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/657f6ad2-14e6-4589-833b-ca42ceea8b21" />

</details>

<details>
  
<summary><h4>Página principal luego del inicio de sesión:</h4></summary>

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
  
<summary><h4>Músicas:</h4></summary>

Esta opción también estará disponible sin iniciar sesión; desde aquí solo podrás escuchar la música y ver el nombre del artista.
Al ver su letra, las opciones de valoraciones solo estarán disponibles si inicias sesión.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/028edfcc-5c9d-4b27-9489-d2ef485d32d6" />

</details>

<details>
  
<summary><h4>Opiniones:</h4></summary>

Desde aquí podrás ver comentarios de gente debatiendo sobre músicas y sus opiniones; también podrás ver todas tus opiniones. 
Y valoraciones que has hecho. También podrás eliminar valoraciones u opiniones que hayas hecho.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/4de2ce40-07b0-48b0-9039-47c50c6370a7" />

</details>

<details>
  
<summary><h4>Amigos:</h4></summary>

Dentro de aquí podrás ver a todos tus amigos; también desde esa pestaña podrás ver el perfil de tus amigos. También tendrás un chat con cada uno. 
Amigo, y también podréis pasaros músicas.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/31656063-b799-4611-bcba-08e3f34a4911" />

</details>

<details>
  
<summary><h4>Listas de músicas:</h4></summary>

Aquí podrás ver las músicas que hayas almacenado. También podrás hacer listas de músicas de lo que tú quieras.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/33b7421b-3ec2-4d06-a578-8db2960ec105" />

</details>

<details>
  
<summary><h4>Buscador:</h4></summary>

También esta es otra opción que estará disponible sin tener que iniciar sesión y podrás buscar la música que tú prefieras o la que esté. 
Disponible en nuestra web; también podrás ver los artistas, el tipo de música y una valoración general de la música.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/1ba60730-1e27-4abb-9d32-daae5a2d67e6" />

</details>

<details>
  
<summary><h4>Tu perfil:</h4></summary>

Aqui podras ver bastantes cosas como:

- Tus músicas.

- Tus amigos.

- Tus listas de música.

- Tambien un boton que te lleve a la privacidad de la cuenta.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/a83cf8df-3fdc-43aa-b3d6-549731cd5316" />

</details>

<details>
  
<summary><h4>Perfil de amigos:</h4></summary>

Aquí podrás ver el perfil de los amigos que tengas y podrás ver:

- Amigos que tengan tus amigos.

- Músicas gustadas. 

- Listas de músicas que tenga.

- Comentarios y valoraciones que haya puesto.
<img width="1125" height="628" alt="image" src="https://github.com/user-attachments/assets/d844342d-d264-4ca9-98e7-670c661e145c" />

</details>

<details>
  
<summary><h4>Configuración:</h4></summary>

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
  
<summary><h4>Mapa de navegabilidad:</h4></summary>

-Aquí tenemos el diagrama de flujo de la interfaz web.

<img width="528" height="852" alt="image" src="https://github.com/user-attachments/assets/980bccd8-7082-4ea4-acad-ed31662ee8ca" />
</details>
</details>

<details>
<summary><h1>8.Servicios</h1></summary>

¿Qué función cumple exactamente este servicio dentro de la red?
-

<details>
  
<summary><h4>1. DNS y pi-hole:</h4></summary>

  
Primero de todo el DNS es un sistema que traduce nombres de dominio (google.com) a direcciones IP i lo necesitamos por que sin DNS, los usuarios tendrían que recordar IPs de máquinas. Para poder gestion el DNS i el DHCP lo que hemos hecho a sido instalar y configurar el pi-hole dentro de un ubuntu server. 

Pi-hole es un bloqueador de anuncios de uso general que cubre toda la red y la protege de los anuncios y los rastreadores sin que sea necesario configurar cada uno de los dispositivos, ahora dentro de el ubuntu server 
el primer comando que tenemos que ejetar es "sudo apt update && sudo apt upgrade -y" que esto lo que ara sera actualizar el sistema para poder instalar el pihole, luego lo que tendremos que hacer sera 
configurar la ip statica y lo haremos poniendo el comando "sudo nano /etc/netplan/00-installer-config.yaml" i esto lo que hace es editar el archivo netplan y la tendremos que configurar aqui una captura de como lo tenemos configurado.
<img width="794" height="680" alt="image" src="https://github.com/user-attachments/assets/f7c6eb1b-0479-4f30-abb0-25ef1abfd5be" />

Ahora luego de haber configurado correctamente el archivo netplat solo tenemos que hacer "sudo netplan apply" para aplicar los cambios y "ip a" para verificar que funcione. Despues de hacer los anteriores pasos tendremos que instalar el 
pi-hole con "curl -sSL https://install.pi-hole.net | bash" si no funciona el comando significa que el ubuntu no tiene instalado el curl, si es asi solo instalamos el curl con "sudo apt install curl -y". Ahora en la instalacion saldran las 
siguientes opciones: seleccionar la interfaz de red, elegir el DNS upstream, seleccionar interfaz web  y seleccionar servidor web.

Despues de completar la instalacion del pi-hole y haber seleccionado cada apartado al final tendremos que seleccionar una contraseña para el pi-hole y sera necesaria para abrir el pi-hole dentro de el navegador. Ahola despues de hacer todos
los anteriores passos tenemos que escribir des de un nevegador http://IP_DEL_SERVIDOR/admin y se nos abrira la pagina de pi-hole, lo que tendremos que hacer ahora es poner el usuario que tengamos en el ubuntu server y tambien poner la contraseña
que habia hablado anteriormente i despues de eso ya podremos gestionar el DNS.
<img width="1163" height="839" alt="image" src="https://github.com/user-attachments/assets/7638eb0b-e414-40ed-bd85-08757c5488ef" />

Una incidencia que teniamos era que el pi-hole estaba todo correctamente configurado y estabamos todo el rato intentando conseguir la ip de la maquina virtual con "ip a" pero no salia la ip, y sin la ip no podriamos acceder a la pagina web de nuetro Pi-hole. Al final el error era que nuestra maquina virtual de ubuntu server no estaba con el adaptador puente activado y eso hacia que por mucho que lo intentaramos no nos saliera la ip. Luego de activar el adaptador fuente ya todo funciono 
correctamente.

</details>

<details>
  
<summary><h4>2. DHCP y Dnsmasq :</h4></summary>

El DHCP es un servicio que asigna automáticamente IP, puerta de enlace y DNS a los clientes tambien es necesario para evita configurar manualmente cada equipo y reduce errores. Y el Dnsmasq proporcionar servicios de red esenciales y uno de los motivos que vamos a utilizar es porque permite la configuración de un servidor DHCP básico para asignar direcciones IP automáticamente.

Dnsmasq es una herramienta sencilla pero poderosa, diseñada para proporcionar servicios de red esenciales. Entre sus características más destacadas encontramos: Resolución de nombres DNS rápida y eficiente. Configuración de un servidor DHCP básico para asignar direcciones IP automáticamente.

</details>

<details>
  
<summary><h4>3. Docker:</h4></summary>

Docker Desktop es un sistema operativo para contenedores, Docker se instala en cada servidor en el que deseemos ejecutar contenedores y proporciona un conjunto sencillo de comandos que puede utilizar para crear, iniciar o detener contenedores. Configuramos el docker a partir de Portaner.io que es como el Docker Desktop pero con una interdaz mas entendible y tambien permite gestionar fácilmente los diferentes entornos Docker. 

Su principal diferencia es que Docker Desktop por sí solo proporciona una base sólida, pero carece de la seguridad, escalabilidad y usabilidad necesarias para implementaciones reales, Portainer cubre estas carencias, haciendo que los entornos contenedorizados sean prácticos, seguros y fáciles de gestionar para equipos de todos los niveles. En nuestro proyecto dentro del Docker vamos a implementar pi-hole(bloqueador de anuncios) y Nginx(software de servidor web de código abierto). 

<img width="1618" height="538" alt="image" src="https://github.com/user-attachments/assets/5e007514-da9f-44e5-9111-b05703d40f56" />

</details>

<details>
  
<summary><h4>4. MySQL:</h4></summary>

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

<details>
  
<summary><h4>5. Nginx:</h4></summary>

NGINX es un software de código abierto que se utiliza para servidores web, proxy inverso, almacenamiento en caché, balanceo de carga, streaming multimedia, tambien ofrece funciones de servidor HTTPS y está diseñado principalmente para maximizar el rendimiento y la estabilidad. También funciona como servidor proxy para protocolos de comunicación por correo electrónico como IMAP, POP3 y SMTP. En este caso Nginx lo utilizaremos en nuestro proyecto para publicar nustra web a internet para que cualquier persona pueda verla.

</details>

<details>
  
<summary><h4>6. PHP:</h4></summary>

PHP es un lenguaje de programación de código abierto diseñado para el desarrollo web que se ejecuta en el servidor, permitiendo crear sitios web dinámicos, interactivos y con conexión a bases de datos.

Qué hace PHP?

Genera contenido dinámico: Crea páginas web que cambian según la interacción del usuario.

Interactúa con bases de datos: Se conecta y gestiona fácilmente bases de datos como MySQL, PostgreSQL o MariaDB.

Gestiona archivos en el servidor: Puede crear, abrir, leer, escribir y cerrar archivos.

Maneja formularios: Recopila, valida y procesa datos enviados desde formularios HTML.

Controla accesos y cookies: Maneja la autenticación de usuarios (inicios de sesión) y puede establecer o acceder a cookies.

Envía correos y gestiona archivos: Permite subir archivos al servidor y enviar correos electrónicos automáticamente. 

</details>

<details>
  
<summary><h4>7. Ffmpeg:</h4></summary>

Ffmpeg se trata de una herramienta de línea de comandos que permite realizar multitud de tareas relacionadas con video, audio o incluso imágenes, en nuestro caso ffmpeg lo utilizaremos para poner la musica dentro de nuestra pagina web tambien el ffmpeg es multiplataforma, por lo que puede instalarse en cualquier sistema, ya sea GNU/Linux, Windows o Mac, nosotros lo haremos des de un ubuntu. Para proceder a instalar el Ffmpeg lo primero que tenemos que hacer es abrir el cmd i poner 
este comando "$ sudo apt-get install ffmpeg", solo con ese comando ya tendremos el Ffmpeg instalado dentro del ubuntu. 

<img width="878" height="449" alt="image" src="https://github.com/user-attachments/assets/41cc369e-e5df-4756-a902-d48963fa1e56" />

Ffmpeg para como tanto para obtener información de un archivo multimedia, como para convertirlo a otro formato. Tambien uno de los motivos de por que estamos utilizamos FFmpeg es compatible con prácticamente todos los formatos de vídeo, audio e imagen existentes, incluyendo contenedores, formatos de audio y soporta cientos de códecs y formatos multimedia.

</details>

¿En qué equipo se instala y qué requisitos necesita?
-

<details>
  
<summary><h4>Sistema operativo:</h4></summary>

El equipo donde vamos a tener todo va a ser un Ubuntu Server, dentro de el Ubuntu Server vamos a tener instalado el DCHP, el dnasmasq y el pi-hole. Tambien tenemos otra maquina virtual con un Ubuntu con el Ffmpeg para exportar musicas para la pagina web.

</details>

<details>
  
<summary><h4>IP del servidor:</h4></summary>

La ip de nuestro del Ubuntu Server es la 192.168.135.xx por que es dinamica. Y la ip estatica de nuestro Ubuntu Server 192.168.6.62.

</details>

<details>
  
<summary><h4>Recursos mínimos (CPU, RAM, disco):</h4></summary>

Estas son las configuraciones que hemos puesto para nuestra maquina virtual.
<img width="1411" height="735" alt="image" src="https://github.com/user-attachments/assets/373ca196-3988-41ca-a84f-94466c0dc6b4" />

</details>

¿Qué parámetros básicos debo configurar?
-

<details>
  
<summary><h4>Puertos:</h4></summary>

Aqui estan todos los servicios conectados al Portainer con sus respectivos puertos:

-Mysql: Tiene el puerto 3306:3306 y 32768:33060.

-Ngingx: Tiene el puerto 80:80.

-Phpmyadmin-web: Tiene el puerto 8081:80.

-Pihole: Tiene el puerto 53:53 y 8080:80.

-Portainer: Tiene el puerto 8000:8000 y 9443:9443.

<img width="1618" height="538" alt="image" src="https://github.com/user-attachments/assets/b6ee57d9-3709-40e1-8d2c-a8a875235bdb" />

</details>

<details>
  
<summary><h4>Directorios de trabajo:</h4></summary>



</details>


<details>
  
<summary><h4>Archivos de configuración principales:</h4></summary>



</details>

<details>
  
<summary><h4>Rango DHCP / zonas DNS / virtual hosts:</h4></summary>



</details>


¿Cómo verifico que funciona correctamente?
-

<details>
  
<summary><h4>Comando de estado:</h4></summary>



</details>


<details>
  
<summary><h4>Prueba desde cliente:</h4></summary>



</details>

<details>
  
<summary><h4>Logs:</h4></summary>



</details>

<details>
  
<summary><h4>Acceso vía navegador / ping / nslookup / etc:</h4></summary>



</details>

¿Qué aspectos de seguridad debo revisar?
-

<details>
  
<summary><h4>Firewall abierto solo en puertos necesarios</h4></summary>



</details>

<details>
  
<summary><h4>Permisos de archivos:</h4></summary>



</details>

<details>
  
<summary><h4>Usuario del servicio:</h4></summary>



</details>


<details>
  
<summary><h4>Acceso remoto:</h4></summary>



</details>

<details>
  
<summary><h4>Actualizaciones:</h4></summary>


</details>
</details>

</details>

<details>
<summary><h1>9.Diagrama Gantt</h1></summary>
Aqui podeis ver como lo hemos organizado y separado el Diagrama:
<img width="1919" height="417" alt="image" src="https://github.com/user-attachments/assets/ee66626d-ab31-4546-bf3f-8af53b429077" />
Y aqui os voy a dejar el enlace al Excel para que lo vayais viendo como se va actualizando a diario: https://alumnoifp-my.sharepoint.com/:x:/g/personal/rreyesf_student_ifp_es/EWDiyoYtqXtNhg-YJbDrquoBVqxon1pBstPxaSgkpy9Yhg?e=22Y8uM
</details>

<details>
<summary><h1>10.Conclusiones</h1></summary>
</details>


<details>
<summary><h1>11.Bibliografía</h1></summary>
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
<summary><h1>12.Arduino</h1></summary>

Aqui todo el contenido de Arduino:

A0 - Preparación del entorno
-

<details>
<summary><h4>1.1  ¿Qué es Arduino?</h4></summary>

Arduino es una plataforma de desarrollo basada en una placa electrónica de hardware libre que incorpora un microcontrolador re-programable y una serie de pines hembra.

<img width="272" height="185" alt="image" src="https://github.com/user-attachments/assets/5e6d88be-25ce-46bc-8691-48e56818d974" />

</details>

<details>
<summary><h4>1.2 ¿Cuáles son sus características más importantes?</h4></summary>

Las características más importantes de Arduino son su simplicidad, flexibilidad y facilidad de uso, tanto en hardware como en software. Es una plataforma de prototipado electrónico de código abierto, diseñada para facilitar la interacción entre el mundo físico y digital. 

</details>

<details>
<summary><h4>1.3 ¿Cuál es el origen de Arduino?</h4></summary>

Arduino nació en el año 2005 el Instituto de Diseño Interactivo de Ivrea, apareció por la necesidad de contar con un dispositivo para utilizar en las aulas que fuera de bajo coste.

</details>

<details>
<summary><h4>1.4 ¿Qué modelos de Arduino hay?</h4></summary>

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

</details>

<details>
<summary><h4>1.5 ¿Para qué sirve un Arduino?</h4></summary>

Se utiliza como un microcontrolador reprogramable con una serie de pines que permiten establecer conexiones entre el controlador y los diferentes sensores, es decir el «cerebro» de algún circuito o maquinaria.

</details>

<details>
<summary><h4>1.6 ¿Qué lenguaje utiliza?</h4></summary>

Usa C y C++, el llenguatge de programació C, llenguatge C o llenguatge de programació de sistemes, va ser creat per Dennis Ritchie i Ken Thompson als Laboratoris Bell d'AT&T, a principis de la dècada dels 70 i el C++ es un lenguaje de programación que fue creado, como su predecesor C , en los laboratorios Bell (no confundir con Graham Bell) de AT&T . El autor principal es Bjarne Stroustrup.

</details>

<details>
<summary><h4>1.7 ¿Qué es el Arduino IDE?</h4></summary>

Es el entorno de desarrollo donde se escribe, compila y sube el código a la placa Arduino. Basicamente es donde puedes hacer todas las funciones de el arduino.

</details>

<details>
<summary><h4>Resumen acerca de arduino:</h4></summary>

Arduino es una pequeña placa electrónica que funciona como el "cerebro" de muchos proyectos. Sirve para controlar luces, motores, sensores y muchas otras cosas. Lo genial de Arduino es que cualquiera lo puede usar, incluso si no sabe mucho de electrónica, porque es fácil de entender y está pensado para aprender jugando y experimentando.

Arduino fue creado en el año 2005 en Italia por un grupo de profesores que querían ayudar a sus estudiantes a aprender tecnología sin gastar mucho dinero. Desde entonces, se ha hecho muy famoso en todo el mundo.

Una de las cosas más importantes de Arduino es que es abierto, lo que significa que puedes ver cómo está hecho, modificarlo y compartir tus ideas con otras personas. Además, funciona con un programa llamado Arduino IDE, que es donde escribimos las instrucciones para decirle a la placa qué hacer. Esas instrucciones se escriben en un lenguaje de programación llamado C o C++, que aunque suene complicado, se puede aprender poco a poco con práctica.

Hay varios modelos de Arduino, como el Uno, Mega, Nano o Leonardo, y cada uno tiene diferentes tamaños, memoria y cantidad de conexiones. Algunos tienen más espacio para guardar instrucciones, otros tienen más pines para conectar cables, y algunos son tan pequeños que caben en tu mano.

En resumen, Arduino es una herramienta súper útil para aprender a crear cosas electrónicas, como robots, juegos, alarmas o luces automáticas. Es como una caja de magia tecnológica para inventores jóvenes y curiosos.

</details>

Práctica: LED
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

Según el circuito funciona si el nivel de salida GPIO2 del ESP32-S3 WROOM es alto, el LED se enciende y cuando el nivel de
salida es bajo, el LED se apaga. Por lo tanto, podemos dejar que el GPIO2 emita circularmente niveles altos y bajos
para hacer que el LED parpadee.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

Los componentes son:
- Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

- GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

- Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

- Jumper: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto. 

- LED: El LED sirve para proporcionar luz al arduino.

- Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>



</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Para emprezar "#define LED_BUILTIN 2" sirve para definir el LED que tenemos en el Breadboard, luego el comando "void setup(){" lo que hace es estableces cuales serán 
los pines de entrada o salida, configurar parámetros como velocidad o frecuencias i "pinMode(LED_BUILTIN, OUTPUT);" permite configurar a cada pin, de forma individual, como entrada o como salida.
Tambien "void loop(){" es una función que permite el ciclo repetido de un bloque de código y "digitalWrite" establecer un valor de HIGH o LOW en un pin digital de Arduino siempre 
y cuando se haya configurado como salida y "delay" lo que hace es simplemente esperar.

<img width="454" height="209" alt="image" src="https://github.com/user-attachments/assets/dff9cb1a-6511-4a30-a063-7b0f944a4e8b" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/37430081-c8bb-4d6b-9985-093da97b96de

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="976" height="735" alt="image" src="https://github.com/user-attachments/assets/49af2129-00ef-448b-b2d0-dffe26ebe046" />

</details>

Práctica: SEMÁFORO
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

A partir de los conocimientos adquiridos en la anterior práctica hay que construir un prototipo de un semáforo
en el que las luces parpadeen de forma intermitente pero nunca a la vez.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-LED: El LED sirve para proporcionar luz al arduino y utilizaremos 3 para simular los colores de un semaforo, los colores son rojo, verde y rojo.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>



</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Primero los tres "#include" se utilizan para identificar los 3 LEDS, luego el comando "void setup(){" lo que hace es estableces cuales serán 
los pines de entrada o salida, configurar parámetros como velocidad o frecuencias i "pinMode(LED_BUILTIN, OUTPUT);" permite configurar a cada pin, de forma individual por eso esta el mismo comando repetido 3 veces,
i "void loop(){" es una función que permite el ciclo repetido de un bloque de código y "digitalWrite" establecer un valor de HIGH o LOW en un pin digital de Arduino siempre 
y cuando se haya configurado como salida y configuraremos el mismo comando 3 veces por cada Led  "delay" lo que hace es simplemente esperar y lo configuraremos depende de cada LED.

<img width="650" height="654" alt="image" src="https://github.com/user-attachments/assets/8c524e65-edd8-4e5a-8cd0-f4f531bab3cc" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/e8b27595-ab34-4ec5-981f-f1d319e4666e

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="976" height="735" alt="image" src="https://github.com/user-attachments/assets/c6c688ee-8961-43aa-b9c8-6c2740634f5c" />

</details>

Práctica 1: Button & Led
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

En esta práctica vamos a controlar el estado del led a través de un botón. Esto es, cuando se
presiona el botón, se enciende el led y, cuando se suelte, se apagará.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos uno de 220Ω i uno de 10kΩ.

-LED: El LED sirve para proporcionar luz al arduino y solo utilizaremos 1 LED.

-Push button: Simplemente es un pulsador que en esta actividad nos va a servir para encender el LED.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>

<img width="488" height="370" alt="image" src="https://github.com/user-attachments/assets/9071a546-c93d-4cfa-b9d1-ec2e1bba7bbd" />

</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Primero de todo utilizamos dos "include", uno para identificar el LED i el otro para identificar el push botton, luego de identificarlos tenemos que utilizar 
el comando "void setup(){" lo que hace es estableces cuales serán los pines de entrada o salida y dentro de el void setup ponemos "pinMode" permite configurar a cada pin i en nuestro
caso pondremos dos para configurar el LED(pinMode(PIN_LED, OUTPUT) i el push button(PIN_BUTTON, INPUT). Despues de poner el void setup i el pinmode 
ponemos "void loop(){" es una función que permite el ciclo repetido de un bloque de código i ponemos  If que sirve para que tu programa haga una cosa o otra 
dependiendo de cada situación, i dentro de else ponemos "digitalread" sirve para leer un valor de un pin y "digitalWrite" permite escribir valores lógicos digitales 
en un pin de salida de una tarjeta Arduino, if hace poder encender el LED si lo mantenemos presionado. Tambien "else" se utiliza para definir un bloque de código que 
se ejecutará si no se cumple la condición if y en este caso pondriamos "digitalWrite" i poner LOW para que no se encienda.
<img width="964" height="658" alt="image" src="https://github.com/user-attachments/assets/d952f2e9-9e5b-4acf-a176-e8e9508030cd" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/eb9f9faa-8668-4f20-9b96-64c839b879c0

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="1026" height="756" alt="image" src="https://github.com/user-attachments/assets/9d153aeb-3fc8-46c4-bf70-eab4f7803fe0" />

</details>


Práctica 2: Mini table Lamp
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

Para esta práctica también usaremos un interruptor de botón, un LED para hacer una lámpara de
mesa MINI, pero de manera diferente, esto es: al presionar el botón, el LED se encenderá y, al
presionar el botón nuevamente, el LED se apagará.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

Los componentes que se utilizan en este ejercicio son los mismos que se utilizan en el ejercicio 3 Button & Led.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos uno de 220Ω i uno de 10kΩ.

-LED: El LED sirve para proporcionar luz al arduino y solo utilizaremos 1 LED.

-Push button: Simplemente es un pulsador que en esta actividad nos va a servir para encender el LED

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>

<img width="488" height="370" alt="image" src="https://github.com/user-attachments/assets/9071a546-c93d-4cfa-b9d1-ec2e1bba7bbd" />

</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Primero de todo ponemos "bool LedOn" que se utilizan para almacenar un estado de entre esos dos posibles, y así hacer que el código reaccione según
detecte verdadero o falso, luego de eso ponemos "void setup(){" lo que hace es estableces cuales serán los pines de entrada o salida, dentro del void setup ponemos "pinMode" permite configurar a cada pin i en nuestrocaso pondremos dos para configurar el LED(pinMode(2, OUTPUT) i el push button(13, INPUT_PULLUP). Luego "void loop()" i "if "(digitalRead(13) == LOW){" que esto lo que hace es detectar si el botón está presionado, despues "delay(50);" que hara una pequeña espera, ledOn = !ledOn; lo que hace es cabiar el estado del LED de apagado a encendido o al reves, "digitalWrite(2, ledOn ? HIGH : LOW);" que hace apagar o encender el LED segun el estado de ledon, "while (digitalRead(13) == LOW);" espera a que el boton deje de estar pulsado para apagar el LED y para finalizar un "delay(50);"

<img width="800" height="551" alt="image" src="https://github.com/user-attachments/assets/000593d5-8440-4da3-b455-2c07f8b59e27" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/c30af521-2161-436e-b5e3-c2a8d5fd31c2

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="939" height="696" alt="image" src="https://github.com/user-attachments/assets/467d0a96-b3b2-472f-8557-f9b4ce525f8d" />

</details>


Práctica 3.1: Random Color Light
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

Haremos un LED multicolor, controlando el LED RGB para cambiar entre diferentes colores
automáticamente. El LED RGB tiene integrados 3 LED que pueden emitir luz roja, verde y azul respectivamente. Y
tiene 4 pines.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos tres de 220Ω.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-RGBLED: Consiste en múltiples combinaciones de tres colores primarios ópticos, rojo, verde y azul

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>

<img width="381" height="409" alt="image" src="https://github.com/user-attachments/assets/1f09e0af-9af8-4f62-8e26-8b138b2ce65c" />

</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Primero de todo ponermos "const byte ledPins[] = {4, 0, 2};" y "const byte chns[] = {0, 1, 2};"  que lo utilizamos para guardar los pines donde está conectado el LED RGB, el pin 4 será el color rojo, el pin 0 el verde y el pin 2 el azul y despues de eso 
ponemos un "void setup() {" para comenzar a comenzar a poner el codigo que vamos a ejecutar, dentro del void setup ponemos "for (int i = 0; i < 3; i++) {" que sirve para repetir el mismo proceso tres veces, luego ponemos "ledcAttach(ledPins[i], 1000, 8);" que permite controlar el brillo de cada color con valores entre 0 y 255. Mas tarde ponemos otro void para ejecutar mas codigo i ponemos "for (int i = 0; i < 256; i++) {" que hace que la variable i vaya aumentando desde 0 hasta 255 y tambien ponemos "setColor(wheel(i));" que lo que hace es generar un color RGB según el valor de i, i ponemos un delay de un segundo despues. Ahora un "void setColor(long rgb) {" que lo que hace esta función que se encarga de separar el color RGB y enviarlo al LED, ahora tenemos que configurar el color del LED con "ledcWrite(ledPins[0], 255 - ((rgb >> 16) & 0xFF));" que extrae el color rojo del valor RGB y lo envía al pin correspondiente, usando 255 -, i ponemos el mismo codigo para los otros dos LEDS mas. Ahora ponemos "long wheel(int pos) {" que es la función que genera los colores del arcoíris i para finalizar ponemos "pos = pos % 256;" para asegurarnos de que el valor esté entre 0 y 255 y luego tenemos un if que divide el arcoíris en tres partes.
<img width="1426" height="730" alt="image" src="https://github.com/user-attachments/assets/0b07053c-e444-4a0c-af23-43decdeb09b9" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/5ebae02b-cfd8-4261-890e-417272ad1473

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/26643b1a-120a-4156-b895-13f8c33e676e" />

</details>

<details>
<summary><h4>Preguntas:</h4></summary>

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

</details>

Práctica 3.2: RGB LED Controlado
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

Ahora necesitamos controlar el valor de los colores que quiero mostrar por cada ping.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos tres de 220Ω.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-RGBLED: Consiste en múltiples combinaciones de tres colores primarios ópticos, rojo, verde y azul

</details>

<details>
<summary><h4>3Esquema del circuito:</h4></summary>



</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Para comenzar ponemos "const uint8_t PIN_R = 4;" "const uint8_t PIN_G = 0;" y "const uint8_t PIN_B = 2;" que se utilizan para definir los pines donde está conectado cada color del LED RGB, siendo el pin 4 el rojo, el pin 0 el verde y el pin 2 el azul. Luego ponemos un "void setup" que dentro pondremos "ledcAttach(PIN_R, 1000, 8);", "ledcAttach(PIN_G, 1000, 8);" y "ledcAttach(PIN_B, 1000, 8);" que permite controlar el brillo de cada color con valores entre 0 y 255. Con esto dejamos preparado el LED para poder cambiar de color correctamente. Despues un "void loop() {" que pondremos "setRGB(50, 50, 255);" para encender el LED con un color azul y a continuacion ponemos "delay(3000);" que hace que ese color se mantenga encendido durante 3 segundos, i repetimos el mismo proceso procedo pero en vez del azul con el color verde. Mas abajo ponemos "void setRGB(uint8_t r, uint8_t g, uint8_t b) {" que es la función encargada de controlar el color del LED RGB. Esta función recibe tres valores, uno para el rojo, uno para el verde y uno para el azul. Dentro de esta función usamos "ledcWrite(PIN_R, 255 - r);" "ledcWrite(PIN_G, 255 - g);" y "ledcWrite(PIN_B, 255 - b);" lo que hace es enviar el valor de brillo a cada pin del LED, pero restándolo a 255.

<img width="1438" height="735" alt="image" src="https://github.com/user-attachments/assets/ae403871-bb79-4322-9c2b-5dbbb2260306" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/fe8dd13a-963a-4ff6-95ae-4ee4c79a1de6

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/9ab97956-cd26-4f0f-9e24-2258bae313d5" />

</details>

<details>
<summary><h4>Preguntas:</h4></summary>
Preguntas

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

</details>

Práctica 3.3: Luz de Color Degradado
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

En el proyecto anterior, dominamos el uso de LED RGB, pero la visualización aleatoria de colores
es bastante rígida. Este proyecto realizará una luz moderna con suaves cambios de color, La lista de
componentes y el circuito son exactamente los mismos que los de la luz de color aleatorio.
Usando un modelo de color, el color cambia de 0 a 255.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-Resistencia: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, necesitaremos tres de 220Ω.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 3 para simular un semaforo. 

-RGBLED: Consiste en múltiples combinaciones de tres colores primarios ópticos, rojo, verde y azul.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>



</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

  Primero de todo en "setup()" configuramos tres canales PWM (rojo, verde y azul) con una frecuencia de 1000 Hz y resolución de 8 bits, y los junta a los pines PIN_R, PIN_G y PIN_B.

Luego el "loop()" utiliza un contador de 0 a 255. En cada iteración calcula un color usando la función "wheel(i)", lo envía a "setColor()" y hace un "delay(20)", lo que produce una transición de colores. Cuando termina en 255, vuelve a empezar.

La función "setColor(long rgb)" separa el valor de 24 bits recibido en sus componentes rojo, verde y azul. Luego escribe esos valores en los canales PWM con "ledWrite()". Como el LED invierte los valores para que el brillo funcione correctamente.

La función "wheel(int pos)" genera los colores del arcoíris en tres fases:

- De 0 a 84: transición de rojo a azul.

- De 85 a 169: transición de azul a verde.

- De 170 a 255: transición de verde a rojo.
<img width="1429" height="735" alt="image" src="https://github.com/user-attachments/assets/3202fb5d-82f3-467a-9fe7-1830e8de9aa5" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/ad8c4fc4-1efa-49ba-a02e-dc796ab2e8c4

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/e6aa3c4a-b3ee-44bd-8545-b662f590d408" />

</details>

<details>
<summary><h4>Preguntas:</h4></summary>

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

</details>

Práctica 4: LED BAR
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

Un gráfico de barras LED tiene 10 LED integrados en un componente compacto. Las dos filas de
LEDs en su parte inferior están emparejadas para identificar cada LED como el único LED
utilizado anteriormente.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Jumper 10x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y utilizaremos 10 para hacer un gráfico de barras LED. 

-Resistencia220Ω x10: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico, i necesitaremos 10 resistencias para conectarlas al LED bad graph.

-LED bar graph: Es una matriz de LED que se utiliza para conectarse con un circuito electrónico o un microcontrolador.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>

<img width="588" height="422" alt="image" src="https://github.com/user-attachments/assets/30e0a102-3b1c-426a-9adf-d5e8af340793" />

</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary>

Primero definimos un arreglo "ledPins[]" con los pines donde están conectados los "LEDs: {15, 2, 0, 4, 5, 18, 19, 21, 22, 23}". Luego calcula automáticamente cuántos LEDs hay usando "sizeof(ledPins)" y guarda ese valor en "ledCounts".

En "setup()" configuramos cada uno de esos pines como salida (OUTPUT) usando un bucle "for", preparándolos para controlar los LEDs.

En loop() se ejecutan dos secuencias:

- 1.Recorrido hacia adelante:
Recorre el arreglo desde el primer pin hasta el último. En cada paso:

Enciende el LED (digitalWrite(..., HIGH)), hace un "delay(100);", lo apaga (digitalWrite(..., LOW)) y esto produce el efecto de una luz que avanza por la fila de LEDs.

- 2.Recorrido hacia atrás:
Recorre el arreglo en sentido inverso haciendo lo mismo, esto genera el efecto de regreso y al terminar ambas secuencias, el "loop()" vuelve a empezar, creando un movimiento continuo de ida y vuelta.

<img width="651" height="376" alt="image" src="https://github.com/user-attachments/assets/0897549a-a247-4984-b66a-96c508c6e680" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary>

https://github.com/user-attachments/assets/5b61667a-1ab5-4608-b1c2-1975e4977088

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary>

<img width="1114" height="839" alt="image" src="https://github.com/user-attachments/assets/e2a263d7-8b79-4a0b-94ce-6ebe66653370" />

</details>

Práctica 5.1: Serial comunication
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary>

Para esta práctica vamos simplemente a probar como funciona la comunicación de la placa con el
ordenador para, en próximas prácticas, explotar esta funcionalidad.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary>

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Micro USB wire: Usado para energizar y conectar con la PC ciertas tarjetas Arduino.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary>  



</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary> 

En "setup()" se inicializa la comunicación serie a 115200 baudios y se envía un mensaje de arranque indicando que la ESP32-S3 se ha iniciado correctamente.

En el "loop()" se ejecuta continuamente una impresión por el monitor serie usando "Serial.printf()". En cada iteración se calcula el tiempo transcurrido desde el inicio del programa con millis(), que devuelve los milisegundos desde el arranque, y se convierte a segundos dividiéndolo entre 1000.0. El formato %.1f hace que el tiempo se muestre con un decimal.

Después de imprimir el tiempo, el programa espera 1 segundo "(delay(1000))", por lo que el mensaje se actualiza aproximadamente una vez por segundo.

<img width="987" height="590" alt="image" src="https://github.com/user-attachments/assets/12c4ad76-2202-4668-ae8d-e756619f8771" />

</details>


<details>
<summary><h4>Preguntas:</h4></summary> 

1) ¿Que aparece en serial monitor?

Al pulsar BOOT + EN a la vez, la placa entra en modo programación, lo que permite cargar un nuevo programa desde el ordenador.
   
2) Pulsa los botones de boot+EN que hay en la placa de Arduino, ¿qué ocurre? Ahora pulsa solo en, ¿qué ha ocurrido? ¿para qué nos puede servir esto?

Al pulsar solo EN, la placa se reinicia, es decir, vuelve a empezar la ejecución del programa desde el inicio.

3) ¿Qué indica la linea de código “Serial.begin(115200);”?

Indica que se inicia la comunicación serie entre la placa y el ordenador a una velocidad de 115200.
Esta velocidad debe coincidir con la configurada en el Monitor Serie, o de lo contrario los datos no se verán correctamente.
   
4) Averigua que significa “%.1f s\n“.

% es un número decimal 

.1f muestra un decimal

s texto literal (segundos)

\n → salto de línea

</details>

Práctica 5.2: Panel LCD1602
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary> 

Una pantalla LCD1602 típica puede mostrar 2 líneas de caracteres en 16 columnas y es capaz de
mostrar números, letras, símbolos, código ASCII, etc.

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary> 

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Pantalla LCD1602: Permite mostrar texto/números/caracteres, además hacer debugging o correcciones en nuestros proyectos sobretodo cuando se trabaja con sensores y procesamiento de datos.

-Jumper 4x: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y los utilizaremos para conectarlo a la Pantalla LCD1602.

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary> 

<img width="612" height="441" alt="image" src="https://github.com/user-attachments/assets/ead64f05-27fa-4e6d-a12e-8afeb53703f6" />

</details>

<details>
<summary><h4>4.Codigo explicado:</h4></summary> 

<img width="1872" height="722" alt="image" src="https://github.com/user-attachments/assets/42d500bc-80ed-45b5-ba4e-0d3f5ce229dc" />

</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary> 

https://github.com/user-attachments/assets/6e1ea8d4-727c-4a6a-a7a1-7edf8aceb1b0

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary> 

<img width="553" height="734" alt="image" src="https://github.com/user-attachments/assets/189cf307-f071-42f6-af09-d06142cc2edf" />


</details>

<details>
<summary><h4>Preguntas:</h4></summary> 

1) Revisa las conexiones en el circuito eléctrico y explica para que se utiliza cada una:
   
SCL:

SDA:

VCC:

GND:


2) ¿Que hace la función “lcd.print()”? ¿Y “lcd.clear”?

   
3) Por último, busca como conseguir que el mensaje de la primera fila se desplace de izquierda
a derecha o a la inversa.


</details>

Práctica 5.3: Crear una estación meteorológica y recuperar los datos
-

<details>
<summary><h4>1.Objetivo de la practica:</h4></summary> 

Un higrotermógrafo es un instrumento de medición utilizado para registrar y monitorizar las variaciones de temperatura y humedad relativa en el tiempo. Su diseño combina las funciones de un termógrafo (para medir la temperatura) y un higrógrafo (para medir la
humedad relativa).

</details>

<details>
<summary><h4>2.Material y explicacion de cada componente:</h4></summary> 

-Placa ESP32: Es un microcontrolador potente y versátil que ofrece una serie de características, incluyendo conectividad WiFi y Bluetooth, procesamiento de doble núcleo, y una gama de periféricos.

-GPIO extension board: Es una placa de expansión que permite separar todos los pines y la alimentación de la a través de dos vías.

-Breadboard: Es una herramienta simple que se usa en proyectos de robótica que permite conectar fácilmente componentes electrónicos entre sí, sin necesidad de realizar una soldadura.

-Pantalla LCD1602: Permite mostrar texto/números/caracteres, además hacer debugging o correcciones en nuestros proyectos sobretodo cuando se trabaja con sensores y procesamiento de datos.

-Resistencia10kΩ x1: Una resistencia sirve para limitar la corriente que circula por una rama de un circuito eléctrico.

-Jumper F/M X4: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y en nuestro caso utilizaremos 4 Jumpers femeninos.

-Jumper M/M x4: Es un pequeño dispositivo que puede conectarse o desconectarse para cambiar los ajustes o la configuración de un componente concreto y en nuestro caso utilizaremos 4 Jumpers masculinos.

-DHT11: El DHT11 es un sensor digital básico y económico diseñado para medir la temperatura y la humedad ambiental y lo vamos a utilizar para registrar y monitorizar las variaciones de temperatura y humedad relativa

</details>

<details>
<summary><h4>3.Esquema del circuito:</h4></summary> 

<img width="565" height="381" alt="image" src="https://github.com/user-attachments/assets/f7ee77dc-e40a-4f72-9f9b-deccf54fa1d4" />

</details>


<details>
<summary><h4>4.Codigo explicado:</h4></summary> 



</details>

<details>
<summary><h4>5.Video de la practica:</h4></summary> 

https://github.com/user-attachments/assets/900eed5b-a2d4-4188-b585-5f3b4a0768d1


https://github.com/user-attachments/assets/399427cc-7a5d-4bc7-8a0c-a9e9a064f943

</details>

<details>
<summary><h4>6.Imagen para la entrada del blog o proyecto:</h4></summary> 

<img width="4080" height="3072" alt="image" src="https://github.com/user-attachments/assets/77496a66-cabb-40ca-b2e8-4e83827fd8cd" />

</details>

<details>
<summary><h4>Preguntas:</h4></summary> 

  1) Primero prueba que el código funciona por monitor serial. Prueba a soplar sobre el sensor
para modificar los valores de humedad.



2) Ahora prueba a mostrar los valores en la pantalla LCD.


   
3) Busca que hace esta linea “DHTesp dht; “ al principio del código. ¿Que es un objeto en
programación y que es lo que hace?



4) Prueba a codificar los valores para que muestre en la primera fila la temperatura en grados
Kelvin y en la segunda fila en grados Farenheit.
Programalo de tal forma que se muestre algo así:

Temp: 303,15ºK
Temp: 86ºF

</details>

</details>

<details>
<summary><h1>Proyecto Arudino</h1></summary>
  
<details>
<summary><h4>1.Presentación de la idea:</h4></summary> 

Principalmente nuestra idea principal es hacer que el arduino pueda reproducir musica, estos son los diferentes opciones que tenemos:

Xylophone:
https://www.instructables.com/3D-Printed-Arduino-Xylophone/

Play Music in the Air:
https://projecthub.arduino.cc/shmuel_rubin/play-music-in-the-air-arduino-air-piano-project-8e5a68

Song Arduino Music Box with LCD and LED Light Show
https://projecthub.arduino.cc/jenny972/3-song-arduino-music-box-with-lcd-and-led-light-show-7bda6e

Arduino Based Piano
https://projecthub.arduino.cc/RucksikaaR/arduino-based-piano-f9a995

Building an Ultrasonic Radar using Arduino and Processing
https://projecthub.arduino.cc/diegogalvan_1294/building-an-ultrasonic-radar-using-arduino-and-processing-59053e

Water Sensor
https://projecthub.arduino.cc/daryllqayyim/water-sensor-basic-13d33f


</details>


<details>
<summary><h4>2.Objetivos del Proyecto:</h4></summary> 



</details>


<details>
<summary><h4>3.Requisitos Técnicos:</h4></summary> 



</details>


<details>
<summary><h4>4.Metodología de Trabajo:</h4></summary> 



</details>


<details>
<summary><h4>5.Recursos Disponibles::</h4></summary> 



</details>


<details>
<summary><h4>6.Desafíos y Soluciones Previstas:</h4></summary> 



</details>



</details>

</details>
