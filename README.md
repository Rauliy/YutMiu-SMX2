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

<details>
<summary><h2>1. Introducción</h2></summary>

Nuestra web va a tratar sobre música en streaming y donde los usuarios puedan ir comentando y recomendando sus canciones preferidas y dar sus opiniones respecto a la música que han escuchado. 
o que les han recomendado. Va a tener un extenso catálogo de canciones de diferentes estilos para satisfacer a las personas que utilicen nuestra página. 
Queremos que nuestros usuarios disfruten compartiendo sus canciones favoritas, opiniones y debates entre ellos y leer opiniones sobre otras músicas.

Somos un equipo de dos estudiantes que queremos hacer una web de música y hemos estado buscando webs y aplicaciones con este tipo de contenido para inspirarnos. Contenidos del tipo: música, opiniones y valoraciones de las canciones disponibles en la web.

¿Qué funcionalidades ofrecerá a los usuarios?

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

¿Cómo se relacionan unas entidades con otras?
En nuestra web implementaremos una función para poder hablar y compartir músicas. Para tener esta función lo que tendremos que hacer es registrarse, luego de eso podrás buscar el nombre de todos los usuarios, luego en un apartado podrás aceptar la solicitud o rechazarla, si aceptas la solicitud podrás hablar con el usuario, enviarle músicas y también listas de música que él tenga. También se pueden poner opiniones en cada música y todos los usuarios podrán verlos y comentar.

Incluye un ejemplo de cada entidad con datos ficticios pero realistas.
Ejemplo de registro en la tabla Usuario:
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

Objetivos del Proyecto.
Nuestro objetivo es hacer la web funcionable sin errores y que la gente pueda disfrutar y gaudir de este proyecto, ya que lo que buscamos es que la gente la utilice y no solo ara que sea para un proyecto sino que queremos que se utilice de verdad, yo creo que si le ponemos empeño lo podremos lograr.
Objetivo del Publico.

Nosotros queremos llegar a un público específico que le encante la música, le gusta mucho opinar y debatir e/o crear debates entre ellos y leer opiniones sobre otras músicas que no han escuchado o/e han escuchado pero no sabían que otra gente sabía de la existencia de esa música, también esperamos llegar a un público que quiera ser músico y le guste hacer su propia música, publicarla y que los usuarios la escuchen.

Material Necesario.
Vamos a utilizar una app externa que funciona mediante comandos que se llama FFMpeg
También necesitaremos una base de datos, un docker, y máquinas virtuales que hagan de servidores para dar seguridad y estabilidad a nuestra web.

</details>


</details>

<details>
<summary><h2>3.Materiales físicos y lógicos</h2></summary>
Lo que vamos a utilizar son dos ordenadores, dos ordenadores con tres máquinas virtuales: un Windows Server y otra máquina virtual con el TrueNAS configurado, además de tener o Cobian u otra aplicación en ese ordenador para cada día hacer copias de seguridad con un disco duro externo que tendremos conectado para así evitar problemas y, sobre todo, la tercera máquina virtual, tener un Ubuntu o un Linux Server con el FFmpeg para las canciones en streaming e inconvenientes, además de tenerlo guardado en el disco D del ordenador. En el otro ordenador tendremos la web, los registros... todo lo que tenga que ver con la web.

</details>

<details>
<summary><h2>4.Arquitectura del software</h2></summary>
Nosotros, en nuestro caso, utilizaremos VSC (Visual Studio Code) para nuestra página web; luego utilizaremos VirtualBox para tener nuestro servidor de DHCP, de DNS... También utilizaremos Docker Desktop para poder hacer backups de nuestras cosas y levantar desde ahí servicios como MYSQL o APACHE; ADEMÁS, vamos a introducir un servidor de Linux para poder utilizar FFMPEG para escuchar y poder subir música a nuestra web en streaming.

</details>

<details>
<summary><h2>5.Tecnologías a utilizar</h2></summary>


</details>

<details>
<summary><h2>6.Red</h2></summary>
Aquí podemos ver cómo vamos a montar:
a.Diagrama de la red:
<img width="1259" height="648" alt="image" src="https://github.com/user-attachments/assets/86ae68fd-3d0f-4f9b-9e12-5af40a4fd466" />






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
g.DNS:



h.DHCP:



i.Apache:



j.Firewall:



k.Copias de seguridad:
</details>

<details>
<summary><h2>9.Conclusiones</h2></summary>
</details>

<details>
<summary><h2>10.Webgrafia</h2></summary>
</details>


<details>
<summary><h2>11.Bibliografía</h2></summary>
Hemos utilizado estas webs:
  
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

