<div align="center">

<h1>Plan de Contingencia</h1>

</div>

<details>
<summary><h2>Truenas</h2></summary>

El TrueNAS es un sistema operativo de almacenamiento conectado a la red (NAS) de código abierto, diseñado para convertir ordenadores en servidores de almacenamiento seguros y centralizados.

Principales características las principales caracteristicas por lo que utilizamos TrueNAS son:

- Reducido tamaño en disco 
  
- Fácil instalación
  
- Fácil administración remota, mediante páginas web accesibles desde cualquier computadora en red con un navegador
  
- No es necesario tener conectado monitor ni teclado para su operación

Dentro de el TrueNAS sera donde gestionaremos toda las cosas importantes como maquinas virtuales, archivos, etc... para poder hacer copias de seguridad y asi tener todo el trabajo guardado ante algun fallo.

</details>

<details>
<summary><h2>1.Datos generales</h2></summary>

• Nombre del proyecto: YutMiu

<br>

• Alumno(s): Raul Reyes y Ignasi Merino

<br>

• Fecha: 20/03/2026

<br>

• Versión del documento: 1.0

<br>

• Descripción breve del sistema: Infraestructura web con contenedores Docker, gestionada con Portainer, 
que incluye servicios de red con el Pi-hole y DNSmasq, un servidor web Nginx y un PHP con base de datos MySQL.

</details>

  

<details>
<summary><h2>2.Objetivo del plan</h2></summary>

<h3>¿Para qué sirve este plan?</h3>

Sirve para guardar los archivos importantes por si ocurre un error y se pierde todo.

<br>

<h3>¿Qué se pretende garantizar?</h3>

Se pretende garantizar la seguridad de los avanzes que hemos hecho y evitar que perdamos parte del trabajo por accidente.

</details>

  

<details>
<summary><h2>3.Alcance</h2></summary>

<h3>Indica qué cubre este plan</h3>

<h4>Sistemas incluidos(servidores, red, equipos…)</h4>

• Maquinas virtuales: Tendriamos que guardar principalmente las maquinas virtuales donde esta el pi-hole y el DNSmasq.

<br>

<h4>Servicios críticos</h4> 

• Pagina web: Si no guardaramos la pagina web tendriamos que tendriamos que volver a hacer toda la estructura de nuevo.

• Base de datos: Seria necesario hacerle una copia de seguridad porque sin la base de datos el PHP no podria funcionar dentro de nuestra web.

</details>

  

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

  

<details>
<summary><h2>6.Escenarios de contingencia</h2></summary>

Descripcion de situaciones reales que podrian suceder y afectar a los servicios de nuestra web:

<h3>Caída del servidor</h3> 

Los contenedores dejan de responder o Portainer se bloquea.

<br>

<h3>Pérdida de conexión a internet</h3> 

El DNS (Pi-hole) o DHCP fallan, dejando a los clientes sin conexión.

<br>

<h3>Fallo de hardware</h3>

Ante un fallo de hardware nos podria afectar dentro de las maquinas virtuales ya que se podrian abortar las maquinas virtuales importantes que tenemos como el que contiene el docker.

<br>

<h3>Error humano</h3> 

Sobrescritura de archivos PHP/CSS críticos sin tener una copia.

<br>

<h3>Ataque (malware, ransomware)</h3> 

Infección que encripte o afecte a los archivos del servidor web.

</details>

  

<details>
<summary><h2>7.Plan de respuesta</h2></summary>

<h3>Qué hacer en cada caso</h3>

<h4>Caída de servicios (Nginx/Pi-hole)</h4>

   1.Acceder a Portainer y revisar el estado de los contenedores.

   2.Reiniciar los contenedores afectados.

   3.Verificar logs de Docker para identificar la causa.

<br>

<h4>Fallo de VM o Hardware</h4>

   1.Notificar al compañero y tutores.

   2.Recuperar la última exportación/snapshot de la VM.

   3.Intentar restaurar archivos desde el disco duro de respaldo o nube.

</details>

  

<details>
<summary><h2>Plan de recuperación</h2></summary>

<h3>Cómo volver a la normalidad</h3>

<h4>Restauración de sistemas</h4>

Tendriamos que volver a instalar nuevamente todas las maquinas virtuales volver a configurar todo nuevamente.

<br>

<h4>Reconfiguración de servicios</h4>

Por cada servicio que tendriamos que volver a configurar todo como lo habiamos hecho anteriormente y aplicar los parámetros de IP estáticas y puertos guardados en la documentación de Portainer.

<br>

<h4>Verificación del funcionamiento</h4>

A la hora de verificar que todo vuelva a la normalidad tendriamos que entrar dentro del Portainer y ver que todos los servicios esten en running.

<br>

<h4>Añadir tiempos</h4>

• Tiempo máximo de recuperación(RTO): Máximo 4 horas.

• Pérdida de datos aceptable(RPO): Máximo 24 horas

</details>

  

<details>
<summary><h2>9.Copias de seguridad</h2></summary>

<h3>Detallar</h3>

<h4>Tipo de backup</h4> 

Copia completa de archivos y Snapshots de las VMs.

<br>

<h4>Frecuencia</h4>

Semanal (o por cada avance que hagamos).

<br>

<h4>Ubicación</h4>

Disco local D o una copia externa

<br>

<h4>Herramientas utilizadas</h4>

Exportación de configuraciones de Portainer, copiado manual de archivos y snapshots de VirtualBox/VMware.

</details>

  

<details>
<summary><h2>10.Medidas preventivas</h2></summary>

<h3>Para evitar problemas</h3>

<h4>Antivirus / Firewall</h4> 

Configuración básica para permitir solo el tráfico necesario (80, 443, 53).

<br>

<h4>Actualizaciones</h4> 

Mantener las imágenes de Docker actualizadas.

<br>

<h4>Control de accesos</h4>

Uso de contraseñas seguras en Portainer y MySQL.

<br>

<h4>Monitorización</h4>

Revisión periódica de los recursos consumidos por los contenedores.

</details>

  

<details>
<summary><h2>11.Responsables</h2></summary>

| Rol | Persona | Función |
| :--- | :--- | :--- |
| **Administrador de Sistemas** | Raul Reyes | Gestión de VMs, Docker y Backups y Nginx. |
| **Técnico de Soporte y Web** | Ignasi Merino | Resolución de incidencias web y red. |

</details>

  

<details>
<summary><h2>12.Plan de comunicación</h2></summary>

<h3>En caso de fallo</h3>

<h4>A quién avisar</h4>

Primero tedriamos que avisar a nuestro compañero de trabajo y luego avisar a los nuestros tutores para preguntarles que hacer con este problema que a surjido.

<br>

<h4>Cómo</h4>

Si estamos en classe simplemente avisarle que hemos tenido un problema grave y preguntarle como solucionarlo y si no fuera en classe le mandariamos un email con nuestro problema.

<br>

<h4>Tiempo de respuesta</h4>

Si estamos en classe intentar hacer que venga lo antes posible para que diga que hacer ante nuestro problema y si no lo estamos seria enviarle un correo i intentar que conteste lo antes posible.

</details>

  

<details>
<summary><h2>13.Pruebas del plan</h2></summary>

<h3>Validar el plan</h3>

<h4>Simulación</h4> 

Apagado forzado de la VM para verificar el tiempo de arranque y recuperación de contenedores.

<br>

<h4>Verificación de Backup</h4> 

Intentar restaurar una copia de los archivos PHP en una carpeta distinta para confirmar que no están corruptos.

</details>

  

<details>
<summary><h2>14.Mantenimiento del plan</h2></summary>

<h3>Indicar</h3>

<h4>Cada cuánto se revisa</h4>

Todo el plan de contingencia lo revisariamos cada 2 semanas o 1 semana, depende de cuando avanzemos en el trabajo.

<br>

<h4>Quién lo actualiza</h4>

Hasta que no pase algo muy grave o algo parecido creo que no haria falta actualizarla, mientras todo este seguro correctamente no haria falta preocuparse. Los dos nos encargamos de actualizarlo.

</details>

  

<details>
<summary><h2>15.Mejoras futuras</h2></summary>

<h3>Proximas mejoras que implementaremos</h3>

• Implementar un sistema de backups automatizado mediante scripts.

<br>

• Configurar un segundo servidor Nginx por si acaso.

<br>

• Uso de GitHub para un control de versiones más estricto del código.

</details>

  

<details>
<summary><h2>16.Conclusiones</h2></summary>

<h3>Reflexión</h3>

<h4>Importancia del plan</h4>

El motivo principal de este plan y la importancia de tenerlo es principalmente para evitar perdidas de horas de trabajo en pequeños errores y garantizar la seguridad de nuestro trabajo en caso de fallo.

<br>

<h4>Qué han aprendido</h4>

Gestionar cuales fallos podriamos prevenir y que podrian suceder a la hora de trabajar en el proyecto y garantizar la seguridad de nuestro proyecto.

<br>

<h4>Cómo mejora el proyecto</h4>

Lo que podriamos hacer a la hora de mejorar el proyecto es apuntar todos los avances que hacemos cada dia y cada cierto tiempo aplicarle el plan de contingencia.

</details>
