<div align="center">

<h1>Arduino</h1>

</div>

<details>
<summary><h1>Actividades Arduino</h1></summary>

Aqui todo el contenido y todas las actividades de Arduino:

<details>
<summary><h3>A0 - Preparación del entorno</h3></summary>

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
<summary><h4>Resumen acerca de arduino:</h2></summary>

Arduino es una pequeña placa electrónica que funciona como el "cerebro" de muchos proyectos. Sirve para controlar luces, motores, sensores y muchas otras cosas. Lo genial de Arduino es que cualquiera lo puede usar, incluso si no sabe mucho de electrónica, porque es fácil de entender y está pensado para aprender jugando y experimentando.

Arduino fue creado en el año 2005 en Italia por un grupo de profesores que querían ayudar a sus estudiantes a aprender tecnología sin gastar mucho dinero. Desde entonces, se ha hecho muy famoso en todo el mundo.

Una de las cosas más importantes de Arduino es que es abierto, lo que significa que puedes ver cómo está hecho, modificarlo y compartir tus ideas con otras personas. Además, funciona con un programa llamado Arduino IDE, que es donde escribimos las instrucciones para decirle a la placa qué hacer. Esas instrucciones se escriben en un lenguaje de programación llamado C o C++, que aunque suene complicado, se puede aprender poco a poco con práctica.

Hay varios modelos de Arduino, como el Uno, Mega, Nano o Leonardo, y cada uno tiene diferentes tamaños, memoria y cantidad de conexiones. Algunos tienen más espacio para guardar instrucciones, otros tienen más pines para conectar cables, y algunos son tan pequeños que caben en tu mano.

En resumen, Arduino es una herramienta útil para aprender a crear cosas electrónicas, como robots, juegos, alarmas o luces automáticas. Es como una caja de magia tecnológica para inventores jóvenes y curiosos.

</details>

</details>

#

<details>
<summary><h3>Práctica: LED</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica: SEMÁFORO</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 1: Button & Led</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 2: Mini table Lamp</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 3.1: Random Color Light</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 3.2: RGB LED Controlado</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 3.3: Luz de Color Degradado</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 4: LED BAR</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 5.1: Serial comunication</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 5.2: Panel LCD1602</h3></summary>

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

</details>

#

<details>
<summary><h3>Práctica 5.3: Crear una estación meteorológica y recuperar los datos</h3></summary>

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

</details>

#

<details>
<summary><h1>Proyecto Arduino</h1></summary>

Briefing proyecto:
-
  
<details>
<summary><h3>1.Presentación de la idea:</h3></summary> 

Principalmente nuestra idea principal es hacer que el arduino pueda reproducir musica, estos son los diferentes proyectos que podriamos hacer:

- Xylophone:
https://www.instructables.com/3D-Printed-Arduino-Xylophone/

- Play Music in the Air:
https://projecthub.arduino.cc/shmuel_rubin/play-music-in-the-air-arduino-air-piano-project-8e5a68

- Song Arduino Music Box with LCD and LED Light Show
https://projecthub.arduino.cc/jenny972/3-song-arduino-music-box-with-lcd-and-led-light-show-7bda6e

- Arduino Based Piano
https://projecthub.arduino.cc/RucksikaaR/arduino-based-piano-f9a995

- Building an Ultrasonic Radar using Arduino and Processing
https://projecthub.arduino.cc/diegogalvan_1294/building-an-ultrasonic-radar-using-arduino-and-processing-59053e

- Water Sensor
https://projecthub.arduino.cc/daryllqayyim/water-sensor-basic-13d33f

- Ultrasonic Radar with Arduino
https://projecthub.arduino.cc/nimishac/ultrasonic-radar-with-arduino-19baa3

Al final hemos decicido hacer un coche control remoto que se pueda manejar con facilidad y al final hemos decicido hacer este proyecto ya que no tendriamos que comprar ningun componente de Arduino que no tengamos y seria mas facil de hacer que todos los diferentes proyectos.

</details>

#

<details>
<summary><h3>2.Objetivos del Proyecto:</h3></summary> 

El principal objetivo seria hacer un coche de arduino capaz de desplazarse en distintas direcciones mediante control remoto, poniendo componentes y programación.

<h3>Estos serian los objetivos especificos:</h3>

- Diseñar la estructura del vehículo.

- Crear un chasis funcional que soporte los componentes electrónicos y mecánicos.

- Implementar el sistema de control.

- Programar el microcontrolador Arduino para controlar los motores del vehículo.

- Permitir el control remoto.

- Controlar el coche mediante un sistema inalámbrico.

- Controlar el movimiento del coche.

- Permitir movimientos básicos que seran: avanzar, retroceder, girar a la izquierda, girar a la derecha y pararse.

- Integrar sensores (opcional, aun no sabemos si ponerselo o no).

</details>

#

<details>
<summary><h3>3.Requisitos Técnicos:</h3></summary> 

Estos seran requisitos técnicos que necesitaremos:

<details>
<summary><h4>Sistema de movimiento:</h4></summary> 

- 2 o 4 motores DC

- Driver de motores

- Ruedas compatibles con los motores

- Chasis para el coche

</details>

<br>

<details>
<summary><h4>Sistema de alimentación:</h4></summary> 

- Batería

- Portabaterías

- Regulador de voltaje si es necesario

</details>

<br>

<details>
<summary><h4>Sistema de comunicación:</h4></summary> 

Uno de los siguientes:

- Bluetooth

- Módulo RF 433 MHz

- WiFi

</details>

<br>

<details>
<summary><h4>Otros componentes necesarios:</h4></summary> 

- Cables Dupont

- Protoboard o PCB

- Interruptor de encendido

- LEDs indicadores (opcional)

</details>

<br>

<details>
<summary><h4>Sensores opcionales:</h4></summary> 

- Sensor ultrasónico (para evitar obstáculos)

- Sensor de línea

- Sensor infrarrojo

</details>

</details>

#

<details>
<summary><h3>4.Metodología de Trabajo:</h3></summary> 

<h4>Investigación inicial:</h4>
Buscar información sobre coches teledirigidos con Arduino y los componentes necesarios.

<br>

<h4>Selección de componentes:</h4>
Elegir Arduino, driver de motores, motores, batería, módulo de comunicación y sensores.

<br>

<h4>Montaje del hardware:</h4>
Instalar motores, ruedas, driver y Arduino en el chasis.

<br>

<h4>Programación:</h4>
Programar Arduino para controlar los motores.

<br>

<h4>Pruebas del sistema:</h4>
Hacer que el coche avance, retroceda, gire y se pare correctamente.

<br>

<h4>Documentación del proyecto:</h4>
Mientras hacemos tendremos que ir documentando todas las cosas que hemos hecho como fallos o avances.

</details>

#

<details>
<summary><h3>5.Recursos Disponibles:</h3></summary> 

Durante el desarrollo del proyecto se utilizaremos diferentes recursos como:

<br>

<h4>Documentación y guías:</h4>

- Documentación oficial de Arduino

- Guías sobre control de motores con drivers L298N o L293D

- Tutoriales sobre comunicación Bluetooth con Arduino

<br>

<h4>Tutoriales y videotutoriales:</h4>

- Tutoriales de Arduino en YouTube

- Proyectos de coches Arduino en páginas de electrónica

- Guías paso a paso para el uso del módulo Bluetooth HC-05

</details>

#

<details>
<summary><h3>6.Desafíos y Soluciones Previstas:</h3></summary> 



</details>

<br>

#

<details>
<summary><h2>Todos los componentes y su uso:</h2></summary> 

<h4>Arduino Uno:</h4>

Es la placa principal que leera el control remoto y decidira qué motores mover.

<br>

<h4>Magic I/O Shield for Arduino:</h4>

Actúa como puente de conexión entre el módulo de bloques electrónicos y la placa UNO, tambien incorpora un controlador de motor similar al L293/L298, que proporciona potencia ajustable a cargas inductivas como relés, solenoides, motores de CC y motores paso a paso. Permite controlar dos canales de motores de CC con la placa Arduino, regulando la velocidad y la dirección de cada uno de forma independiente.

<br>

<h4>Batería o Portapilas:</h4>

Los motores a la hora de utilizarse consumiran energía una pila de 9V común servira.

<br>

<h4>Interruptor:</h4>

Para no tener que desconectar los cables cada vez que quieras apagarlo.

<br>

<h4>Chasis de coche:</h4>

Es donde estara la estructura, las ruedas y los motores.

<br>

<h4>Controlador de Motores:</h4>

Es el componente más importante para el movimiento del coche y lo que hace es recibir órdenes de baja potencia del Arduino y las convierte en potencia real para los motores, eso nos permitira controlar la velocidad y el sentido de giro del coche.

<br>

<h4>Módulo Bluetooth:</h4>

Permite controlar el coche.

<br>

<h4>Módulo Infrarrojo:</h4>
  
Para que funcione línea de visión directa entre el mando y el coche.

<br>

<h4>Módulo de Radiofrecuencia:</h4>
  
Sirve para largo alcance, aunque requiere un segundo Arduino como mando.

<br>

<h4>Ultrasónic detector module:</h4>

Lo que hace es medir la distancia a los objetos enviando un pulso de sonido.

<br>

<h4>Micro servo motor:</h4>

Este servomotor lo utilizaremos para controlar o regular cargas pequeñas. Alimentado con 5 V, este pequeño servomotor tiene una velocidad de accionamiento máxima de hasta 0,1 segundos/60 grados. 

<br>

<h4>Universal wheel:</h4>

Una rueda conectada al coche que permite moverse en cualquier dirección (adelante, atrás, izquierda y derecha) sin girar primero, gracias a pequeños rodillos en su perímetro que hay en la parte frontal del coche.

<br>

<h4>LCD screen:</h4>

Una pantalla LCD lo que hace es mostrar imágenes y texto en dispositivos planos al controlar eléctricamente la luz que pasa a través de una capa de cristal líquido. Funciona bloqueando o permitiendo el paso de la luz de fondo a través de filtros, creando colores vibrantes sin emitir luz propia.

<br>

<h4>Infrared remote controller:</h4>

Envía señales de luz invisible, moduladas en pulsos, para controlar dispositivos electrónicos a corta distancia y nosotros lo utilizaremos como controlar el coche con control remoto.

<br>

<h4>Battery box:</h4>

Esto nos permitira que el coche se pueda mover a distancia con el Infrared remote controller.

<br>

<h4>IR receiver module:</h4>

Un módulo receptor IR recibe señales de luz infrarroja emitidas por un control remoto o emisor en nuestro caso seria el Infrared remote controller, y las convierte en señales eléctricas digitales que un microcontrolador puede procesar.

</details>

#

<br>

Diagrama de flujo
-

Este seria nuestro diagrama de flujo con todos los componentes que vamos a utilizar:

<img width="2090" height="1516" alt="mermaid-diagram" src="https://github.com/user-attachments/assets/49c734c8-eb91-45da-8dc3-c732ce930712" />

<br><br>

Código estructurado y funcional:
-

<details>
<summary><h3>Codigo del coche:</h3></summary> 

Lo que hace el codigo es configurar los botones de avanzar, retroceder, izquierda, derecha y parar.

```
#include <SoftwareSerial.h>

// Pines Bluetooth (RX, TX)
SoftwareSerial BT(10, 11);

// Pines del driver de motores
int IN1 = 2;
int IN2 = 3;
int IN3 = 4;
int IN4 = 5;

// Pines de velocidad (PWM)
int ENA = 6;
int ENB = 9;

char comando;

void setup() {
  // Configuración de pines
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);

  // Velocidad inicial
  analogWrite(ENA, 200);
  analogWrite(ENB, 200);

  // Iniciar Bluetooth
  BT.begin(9600);
}

void loop() {
  if (BT.available()) {
    comando = BT.read();

    switch (comando) {

      case 'F': // Avanzar
        adelante();
        break;

      case 'B': // Retroceder
        atras();
        break;

      case 'L': // Izquierda
        izquierda();
        break;

      case 'R': // Derecha
        derecha();
        break;

      case 'S': // Parar
        parar();
        break;
    }
  }
}

// FUNCIONES DE MOVIMIENTO

void adelante() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void atras() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void izquierda() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void derecha() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void parar() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, LOW);
}
```

</details>

<br>

<details>
<summary><h3>Codigo del Radar(.ino):</h3></summary> 

Los archivos con extensión .ino son archivos de código utilizados principalmente en el entorno de desarrollo Arduino IDE, contienen instrucciones escritas en C/C++ que definen 
el comportamiento de placas microcontroladoras, como encender luces o como en nuestro caso leer sensores y mover motores.

```
#include<Servo.h>

#define trigPin 8
#define echoPin 9

long duration;
int distance ;

Servo myservo;

int calculateDistance()
{
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin,LOW);
  duration = pulseIn(echoPin, HIGH);
  distance = duration*0.034/2;
  return distance;
}

void setup()
{
  pinMode(trigPin , OUTPUT);
  pinMode(echoPin, INPUT);
  myservo.attach(11);
  Serial.begin(9600);
}

void loop()
{
 int i ;
 for (i=15; i<=165; i++)
 {
  myservo.write(i);
  delay(15);
  calculateDistance();
  Serial.print(i);
  Serial.print(",");
  Serial.print(distance);
  Serial.print(".");
 }
 for(i=165; i>=15; i--)
 {
  myservo.write(i);
  delay(15);
  calculateDistance();
  Serial.print(i);
  Serial.print(",");
  Serial.print(distance);
  Serial.print(".");
  
 }
}
```

</details>

<br>

<details>
<summary><h3>Codigo del Radar(.pde):</h3></summary> 

Los archivos .pde eran la extensión original para los sketches de Arduino, utilizados en versiones antiguas del IDE. Actualmente, se utiliza .ino para los archivos de Arduino, mientras que .pde se asocia principalmente con el software de programación Processing.

```
import processing.serial.*; // imports library for serial communication
import java.awt.event.KeyEvent; // imports library for reading the data from the serial port
import java.io.IOException;
Serial myPort; // defines Object Serial
// defubes variables
String angle="";
String distance="";
String data="";
String noObject;
float pixsDistance;
int iAngle, iDistance;
int index1=0;
int index2=0;
PFont orcFont;
void setup() {

  size (1200, 700); // ***CHANGE THIS TO YOUR SCREEN RESOLUTION***
  smooth();
  myPort = new Serial(this, "COM7", 9600); // starts the serial communication
  myPort.bufferUntil('.'); // reads the data from the serial port up to the character '.'. So actually it reads this: angle,distance.
}
void draw() {

  fill(98, 245, 31);
  // simulating motion blur and slow fade of the moving line
  noStroke();
  fill(0, 4); 
  rect(0, 0, width, height-height*0.065); 

  fill(98, 245, 31); // green color
  // calls the functions for drawing the radar
  drawRadar(); 
  drawLine();
  drawObject();
  drawText();
}
void serialEvent (Serial myPort) { // starts reading data from the Serial Port
  // reads the data from the Serial Port up to the character '.' and puts it into the String variable "data".
  data = myPort.readStringUntil('.');
  data = data.substring(0, data.length()-1);

  index1 = data.indexOf(","); // find the character ',' and puts it into the variable "index1"
  angle= data.substring(0, index1); // read the data from position "0" to position of the variable index1 or thats the value of the angle the Arduino Board sent into the Serial Port
  distance= data.substring(index1+1, data.length()); // read the data from position "index1" to the end of the data pr thats the value of the distance

  // converts the String variables into Integer
  iAngle = int(angle);
  iDistance = int(distance);
}
void drawRadar() {
  pushMatrix();
  translate(width/2, height-height*0.074); // moves the starting coordinats to new location
  noFill();
  strokeWeight(2);
  stroke(98, 245, 31);
  // draws the arc lines
  arc(0, 0, (width-width*0.0625), (width-width*0.0625), PI, TWO_PI);
  arc(0, 0, (width-width*0.27), (width-width*0.27), PI, TWO_PI);
  arc(0, 0, (width-width*0.479), (width-width*0.479), PI, TWO_PI);
  arc(0, 0, (width-width*0.687), (width-width*0.687), PI, TWO_PI);
  // draws the angle lines
  line(-width/2, 0, width/2, 0);
  line(0, 0, (-width/2)*cos(radians(30)), (-width/2)*sin(radians(30)));
  line(0, 0, (-width/2)*cos(radians(60)), (-width/2)*sin(radians(60)));
  line(0, 0, (-width/2)*cos(radians(90)), (-width/2)*sin(radians(90)));
  line(0, 0, (-width/2)*cos(radians(120)), (-width/2)*sin(radians(120)));
  line(0, 0, (-width/2)*cos(radians(150)), (-width/2)*sin(radians(150)));
  line((-width/2)*cos(radians(30)), 0, width/2, 0);
  popMatrix();
}
void drawObject() {
  pushMatrix();
  translate(width/2, height-height*0.074); // moves the starting coordinats to new location
  strokeWeight(9);
  stroke(255, 10, 10); // red color
  pixsDistance = iDistance*((height-height*0.1666)*0.025); // covers the distance from the sensor from cm to pixels
  // limiting the range to 40 cms
  if (iDistance<40) {
    // draws the object according to the angle and the distance
    line(pixsDistance*cos(radians(iAngle)), -pixsDistance*sin(radians(iAngle)), (width-width*0.505)*cos(radians(iAngle)), -(width-width*0.505)*sin(radians(iAngle)));
  }
  popMatrix();
}
void drawLine() {
  pushMatrix();
  strokeWeight(9);
  stroke(30, 250, 60);
  translate(width/2, height-height*0.074); // moves the starting coordinats to new location
  line(0, 0, (height-height*0.12)*cos(radians(iAngle)), -(height-height*0.12)*sin(radians(iAngle))); // draws the line according to the angle
  popMatrix();
}
void drawText() { // draws the texts on the screen

  pushMatrix();
  if (iDistance>40) {
    noObject = "Out of Range";
  } else {
    noObject = "In Range";
  }
  fill(0, 0, 0);
  noStroke();
  rect(0, height-height*0.0648, width, height);
  fill(98, 245, 31);
  textSize(25);

  text("10cm", width-width*0.3854, height-height*0.0833);
  text("20cm", width-width*0.281, height-height*0.0833);
  text("30cm", width-width*0.177, height-height*0.0833);
  text("40cm", width-width*0.0729, height-height*0.0833);
  textSize(40);
  text("N_Tech ", width-width*0.875, height-height*0.0277);
  text("Angle: " + iAngle +" ", width-width*0.48, height-height*0.0277);
  text("Distance: ", width-width*0.26, height-height*0.0277);
  if (iDistance<40) {
    text("        " + iDistance +" cm", width-width*0.225, height-height*0.0277);
  }
  textSize(25);
  fill(98, 245, 60);
  translate((width-width*0.4994)+width/2*cos(radians(30)), (height-height*0.0907)-width/2*sin(radians(30)));
  rotate(-radians(-60));
  text("30", 0, 0);
  resetMatrix();
  translate((width-width*0.503)+width/2*cos(radians(60)), (height-height*0.0888)-width/2*sin(radians(60)));
  rotate(-radians(-30));
  text("60", 0, 0);
  resetMatrix();
  translate((width-width*0.507)+width/2*cos(radians(90)), (height-height*0.0833)-width/2*sin(radians(90)));
  rotate(radians(0));
  text("90", 0, 0);
  resetMatrix();
  translate(width-width*0.513+width/2*cos(radians(120)), (height-height*0.07129)-width/2*sin(radians(120)));
  rotate(radians(-30));
  text("120", 0, 0);
  resetMatrix();
  translate((width-width*0.5104)+width/2*cos(radians(150)), (height-height*0.0574)-width/2*sin(radians(150)));
  rotate(radians(-60));
  text("150", 0, 0);
  popMatrix();
}
```
</details>

#

</details>
