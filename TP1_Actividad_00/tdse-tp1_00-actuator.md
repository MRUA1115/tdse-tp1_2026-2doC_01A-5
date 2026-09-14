Descripción del Comportamiento (Modelo Actuator)
El modelo Actuator gestiona el comportamiento físico de una salida digital (un LED) a lo largo de una secuencia de arranque y parada. El LED transita por cuatro estados principales: apagado (ST_LED_OFF), parpadeo de arranque (ST_LED_BLINK_STARTING), encendido permanente (ST_LED_ON) y parpadeo de detención (ST_LED_BLINK_STOPPING).

Para lograr el parpadeo en las fases transitorias sin utilizar retardos bloqueantes (delay), el modelo escucha el evento tick generado en cada ciclo y utiliza una variable de temporización (timer) junto con los umbrales de tiempo (DEL_ACT_START y DEL_ACT_STOP) para conmutar el estado del LED mediante LED_Toggle() y notificar el avance de la secuencia al sistema.

Eventos (Triggers)
Los eventos que desencadenan respuestas o cambios de modo en el modelo Actuator provienen de las señales enviadas por el modelo System y del reloj temporizado:

1. EV_ACT_START (Signal / Trigger): Evento enviado por el modelo System para indicar al actuador que inicie la secuencia de arranque.
2. EV_ACT_STOP (Signal / Trigger): Evento enviado por el modelo System para indicar al actuador que inicie la secuencia de detención.
3. tick: Evento temporizado recibido periódicamente, utilizado para incrementar el contador de tiempo y controlar la alternancia del LED durante las fases de parpadeo.

Acciones (Effects) y Salidas
Las acciones del modelo Actuator ejecutan la manipulación directa de la salida digital del microcontrolador, modifican variables de control de tiempo o notifican estados al sistema principal:

Funciones / Salida física (Digital Output):

1. LED_Toggle(): Acción de bajo nivel que invierte / conmuta el estado lógico de la salida digital donde se conecta el LED (de encendido a apagado o viceversa).

Variables de control de tiempo (Convención timer):

1. timer = 0: Inicialización o reseteo de la variable temporizadora del actuador al cambiar de estado o finalizar una fase.
2. timer++: Incremento de la variable temporizadora en cada recepción del evento tick.
3. [timer < DEL_ACT_START] / [timer >= DEL_ACT_START]: Condición de guarda (guard) que verifica si transcurrió el tiempo necesario para completar la fase de arranque y pasar al estado encendido (ST_LED_ON).
4. [timer < DEL_ACT_STOP] / [timer >= DEL_ACT_STOP]: Condición de guarda (guard) que verifica si transcurrió el tiempo necesario para completar la fase de detención y pasar al estado apagado (ST_LED_OFF).

Notificaciones al Sistema (Out Events / Raise):

1. raise EV_SYS_STARTING: Evento emitido hacia el modelo System notificando que se inició la secuencia de arranque.
2. raise EV_SYS_STARTED: Evento emitido hacia el modelo System notificando que la secuencia de arranque finalizó con éxito.
3. raise EV_SYS_STOPPING: Evento emitido hacia el modelo System notificando que se inició la secuencia de parada.
4. raise EV_SYS_STOPPED: Evento emitido hacia el modelo System notificando que la secuencia de parada finalizó y el sistema está completamente detenido.

**Actuator Statechart - State Transition Table**

| Current State | Event | [Guard] | Next State | Actions | 
| :---: | :---: | :---: | :---: | :---: |
| **ST_LED_OFF** | EV_ACT_START | - | **ST_LED_BLINK_STARTING**| raise EV_SYS_STARTING | 
| **ST_LED_OFF** | tick | - | **ST_LED_OFF** | - | 
| **ST_LED_BLINK_STARTING** | tick | [timer < DEL_ACT_START] | **ST_LED_BLINK_STARTING** | timer++; LED_Toggle()|
| **ST_LED_BLINK_STARTING** | tick | [timer >= DEL_ACT_START] | **ST_LED_ON** | raise EV_SYS_STARTED; timer = 0 |
| **ST_LED_ON** | EV_ACT_STOP | - | **ST_LED_BLINK_STOPPING** | raise EV_SYS_STOPPING | 
| **ST_LED_ON** | tick | - | **ST_LED_ON** | - | 
| **ST_LED_BLINK_STOPPING** | tick | [timer < DEL_ACT_STOP] | **ST_LED_BLINK_STOPPING** | timer++; LED_Toggle()| 
| **ST_LED_BLINK_STOPPING** | tick | [timer >= DEL_ACT_STOP] | **ST_LED_OFF** | raise EV_SYS_STOPPED; timer = 0 |


