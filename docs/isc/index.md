# Dashboard SCADA sobre SimulIDE — Sistemas de Control

> **Asignatura:** Introducción a los Sistemas de Control — UTEC
> **Modalidad:** trabajo en equipo entre 3 personas

---

## Resumen

Circuito simulado en **SimulIDE** (Arduino, motores paso a paso, LEDs y sensores de temperatura),
monitoreado en tiempo real desde un dashboard web tipo SCADA. El sistema se divide en dos backends
Node.js desacoplados por un broker MQTT, con autenticación centralizada en Keycloak.

---

## Stack Utilizado

<div class="tags" markdown>
<span class="tag" style="--tag-color:#5FA04E;" markdown>:simple-nodedotjs: Node.js</span>
<span class="tag" style="--tag-color:#660066;--tag-color-dark:#C06CC0;" markdown>:simple-mqtt: MQTT</span>
<span class="tag" markdown>:material-swap-horizontal: WebSockets</span>
<span class="tag" style="--tag-color:#4D4D4D;--tag-color-dark:#B0B0B0;" markdown>:simple-keycloak: Keycloak (OIDC)</span>
<span class="tag" markdown>:material-chip: SimulIDE</span>
<span class="tag" style="--tag-color:#00878F;" markdown>:simple-arduino: Arduino</span>
<span class="tag" style="--tag-color:#E7352C;" markdown>:simple-espressif: ESP32</span>
<span class="tag" style="--tag-color:#2496ED;" markdown>:simple-docker: Docker</span>
<span class="tag" style="--tag-color:#FC6D26;" markdown>:simple-gitlab: GitLab</span>
<span class="tag" style="--tag-color:#E34F26;" markdown>:simple-html5: HTML</span>
<span class="tag" style="--tag-color:#1572B6;" markdown>:fontawesome-brands-css3-alt: CSS</span>
<span class="tag" style="--tag-color:#F7DF1E;" markdown>:simple-javascript: JavaScript</span>
</div>

---

## Diagrama

![Diagrama Scada Simulide](../assets/circuito-topologia/diagrama-scada-simulide.svg)

- **Backend Serial↔MQTT**: lee eventos del circuito por el puerto serie virtual y los publica al broker; también puede escribir comandos de vuelta al circuito.
- **Backend MQTT↔WebSocket**: se suscribe al broker y los reenvía al frontend por WebSocket; también recibe acciones del usuario desde el frontend y las publica al broker.
- **Auth**: Keycloak (OIDC), con acceso limitado a usuarios registrados de la materia.

### Por qué esta arquitectura

El broker MQTT es el único punto en común: ningún backend conoce al otro, solo hablan con el broker.
Así se puede agregar otro cliente (otra pantalla, otro simulador) sin tocar el resto del sistema,
y cada parte se puede probar por separado.

---

## Capturas

<!-- TODO: subir imágenes a docs/assets/proyectos-carrera/ y descomentar -->
<!-- ![Dashboard SCADA](../assets/proyectos-carrera/scada-dashboard-1.png) -->
<!-- *Dashboard web mostrando el estado del circuito en tiempo real.* -->

<!-- ![Circuito en SimulIDE](../assets/proyectos-carrera/simulide-circuito-1.png) -->
<!-- *Circuito armado en SimulIDE: Arduino, motores paso a paso y LEDs.* -->
