# Laboratorio de Infraestructura 

Documentación técnica de una red híbrida que combina dos entornos con propósitos distintos. Un **laboratorio de red**
en GNS3 sobre Proxmox, donde practico firewall con pfSense, routing multi-VLAN con VyOS y switching L2 con Cisco IOS,
y una capa de **servicios siempre disponibles** en Oracle Cloud, con monitoreo (Prometheus, Grafana, Uptime Kuma)
desplegado en Docker. Tailscale une ambos entornos.

---

## Resumen

- Una red híbrida, completa y funcional: routers, switches, firewall, servers locales y en la nube.
- Corre sobre GNS3 en Proxmox (lab de red) + Oracle Cloud para los servicios always-on, unidos por Tailscale (mesh VPN).
- Cada servicio en Oracle Cloud corre en su contenedor Docker.

---

## Stack Utilizado

| Área | Tecnologías |
| --- | --- |
| **Virtualización** | <span class="tag" style="--tag-color:#E57000;">:simple-proxmox: Proxmox VE</span> <span class="tag">:material-lan: GNS3</span> |
| **Sistemas Operativos (hosts)** | <span class="tag" style="--tag-color:#A81D33;--tag-color-dark:#E0405A;">:simple-debian: Debian</span> <span class="tag" style="--tag-color:#E95420;">:simple-ubuntu: Ubuntu Server</span> |
| **Sistemas Operativos de Red** | <span class="tag" style="--tag-color:#049FD9;">:simple-cisco: Cisco IOS / IOSvL2</span> <span class="tag">:material-router-network: VyOS</span> <span class="tag" style="--tag-color:#212121;--tag-color-dark:#9AA0A6;">:simple-pfsense: pfSense</span> |
| **Networking & Protocolos** | <span class="tag">:material-lan-connect: VLANs 802.1Q</span> <span class="tag">:material-vector-polyline: trunking dot1q</span> <span class="tag">:material-routes: routing estático</span> <span class="tag">:material-swap-horizontal: NAT</span> <span class="tag">:material-console: SSH</span> <span class="tag">:material-chart-timeline-variant: SNMPv3</span> <span class="tag">:material-dns: DNS</span> |
| **Conectividad (VPN)** | <span class="tag" style="--tag-color:#242424;--tag-color-dark:#D0D0D0;">:simple-tailscale: Tailscale</span> |
| **DNS & Publicación** | <span class="tag" style="--tag-color:#F15833;">:simple-nginxproxymanager: Nginx Proxy Manager</span> <span class="tag" style="--tag-color:#FFB300;">:material-duck: DuckDNS</span> |
| **Monitoreo & Observabilidad** | <span class="tag" style="--tag-color:#E6522C;">:simple-prometheus: Prometheus</span> <span class="tag" style="--tag-color:#F46800;">:simple-grafana: Grafana</span> <span class="tag" style="--tag-color:#E6522C;">:simple-prometheus: snmp_exporter</span> <span class="tag" style="--tag-color:#5CDD8B;">:simple-uptimekuma: Uptime Kuma</span> |
| **Documentación de Red** | <span class="tag" style="--tag-color:#00857D;">:custom-netbox: NetBox (IPAM/DCIM)</span> |
| **Cloud & Contenedores** | <span class="tag" style="--tag-color:#F80000;">:custom-oracle: Oracle Cloud (ARM64)</span> <span class="tag" style="--tag-color:#2496ED;">:simple-docker: Docker / Docker Compose</span> |
| **Herramientas de Trabajo** | <span class="tag" style="--tag-color:#F05032;">:simple-git: Git</span> <span class="tag" style="--tag-color:#181717;--tag-color-dark:#E6EDF3;">:simple-github: GitHub</span> <span class="tag" style="--tag-color:#FC6D26;">:simple-gitlab: GitLab</span> <span class="tag" style="--tag-color:#526CFE;">:simple-materialformkdocs: MkDocs Material</span> <span class="tag" style="--tag-color:#083FA1;--tag-color-dark:#6FA2F5;">:simple-markdown: Markdown</span> |

---

## Seguí explorando

<div class="grid cards" markdown>

- :material-lan:{ .lg .middle } **[Red](../red.md)**

    ---

    Topología, direccionamiento, VLANs y routing del laboratorio.

- :material-bridge:{ .lg .middle } **[Arquitectura](../arquitectura.md)**

    ---

    Cómo se conectan el laboratorio y la nube, y por qué se diseñó así.

- :material-server:{ .lg .middle } **[Servicios](../servicios/index.md)**

    ---

    Monitoreo, IPAM y reverse proxy corriendo en Docker sobre Oracle Cloud.

</div>
