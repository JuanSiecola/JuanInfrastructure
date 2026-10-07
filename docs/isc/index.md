# Dashboard SCADA Sistemas de Control

## Resumen

Proyecto de equipo en el que armamos un sistema de monitoreo y control en tiempo real, similar a los que se usan en plantas industriales (SCADA). Simulamos un circuito electrónico con sensores y motores, y lo manejamos desde un panel web con acceso solo para usuarios registrados.

---

## Stack Utilizado

| Área | Tecnologías |
| --- | --- |
| **Simulación y hardware** | <span class="tag">:material-chip: SimulIDE</span> <span class="tag" style="--tag-color:#00878F;">:simple-arduino: Arduino</span> <span class="tag" style="--tag-color:#E7352C;">:simple-espressif: ESP32</span> |
| **Backend** | <span class="tag" style="--tag-color:#5FA04E;">:simple-nodedotjs: Node.js</span> |
| **Comunicación en tiempo real** | <span class="tag" style="--tag-color:#660066;--tag-color-dark:#C06CC0;">:simple-mqtt: MQTT</span> <span class="tag">:material-swap-horizontal: WebSockets</span> |
| **Autenticación** | <span class="tag" style="--tag-color:#4D4D4D;--tag-color-dark:#B0B0B0;">:simple-keycloak: Keycloak (OIDC)</span> |
| **Frontend** | <span class="tag" style="--tag-color:#E34F26;">:simple-html5: HTML</span> <span class="tag" style="--tag-color:#1572B6;">:fontawesome-brands-css3-alt: CSS</span> <span class="tag" style="--tag-color:#F7DF1E;">:simple-javascript: JavaScript</span> |
| **Despliegue y herramientas** | <span class="tag" style="--tag-color:#2496ED;">:simple-docker: Docker</span> <span class="tag" style="--tag-color:#F05032;">:simple-git: Git</span> <span class="tag" style="--tag-color:#FC6D26;">:simple-gitlab: GitLab</span> |

---

## Diagrama

![Diagrama Scada Simulide](../assets/circuito-topologia/diagrama-scada-simulide.svg)

- **Backend Serial↔MQTT**: lee eventos del circuito por el puerto serie virtual y los publica al broker, también puede escribir comandos de vuelta al circuito.
- **Backend MQTT↔WebSocket**: se suscribe al broker y los reenvía al frontend por WebSocket, también recibe acciones del usuario desde el frontend y las publica al broker.
- **Autenticacion**: Keycloak con acceso limitado a usuarios registrados de la materia.

---

## Capturas

![Keycloak SCADA](../assets/isc/keycloak_utec.jpeg)

![Dashboard SCADA](../assets/isc/scada_web.png)

![Circuito en SimulIDE](../assets/isc/circuito_simulide.png)