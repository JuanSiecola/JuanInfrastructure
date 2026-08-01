# ¡Bienvenido a Juane’s Home Lab! 👋

Documentación técnica de una red híbrida: laboratorio en GNS3 sobre Proxmox más
instancias en la nube. Incluye firewall (pfSense), routing multi-VLAN
(VyOS), switching L2 (Cisco IOS), monitoreo (Prometheus/Grafana/SNMP/Uptime Kuma) y despliegue
en Docker sobre Oracle Cloud Infrastructure.

---

## Resumen

- Una red híbrida, completa y funcional: routers, switches, firewall, servers locales y en la nube.
- Corre sobre GNS3 en Proxmox (lab de red) + Oracle Cloud para los servicios always-on, unidos por Tailscale (mesh VPN).
- Cada servicio en Oracle Cloud corre en su contenedor Docker.

---

## Stack Utilizado

| Área                            | Tecnologías                                                           |
| ------------------------------- | --------------------------------------------------------------------- |
| **Virtualización**              | Proxmox VE, GNS3                                                      |
| **Sistemas Operativos (hosts)** | Debian, Ubuntu Server                                                 |
| **Sistemas Operativos de Red**  | Cisco IOS / IOSvL2, VyOS, pfSense                                     |
| **Networking & Protocolos**     | VLANs 802.1Q, trunking dot1q, routing estático, NAT, SSH, SNMPv3, DNS |
| **Conectividad (VPN)**          | Tailscale                                                             |
| **DNS & Publicación**           | Nginx Proxy Manager, DuckDNS                                          |
| **Monitoreo & Observabilidad**  | Prometheus, Grafana, snmp_exporter, Uptime Kuma                       |
| **Documentación de Red**        | NetBox (IPAM/DCIM)                                                    |
| **Cloud & Contenedores**        | Oracle Cloud (ARM64), Docker / Docker Compose                         |
| **Herramientas de Trabajo**     | Git / GitHub, MkDocs Material, Markdown                               |

---

## Sobre mí

<div class="about-card" markdown>

<div class="about-avatar">JS</div>

<div class="about-text" markdown>

### Juan Siécola
<p class="about-role">Tecnólogo en Informática · UTEC Paysandú, Uruguay</p>

Soy Juan Siécola, estudiante de último año de Tecnólogo en Informática en UTEC Paysandú, Uruguay.

Este lab es mi manera de meterle mano a infraestructura y redes para poder ir aplicando los conocimientos y teoria que voy aprendiendo durante el proceso de aprendizaje.

Busco mi primera oportunidad en el área de Infraestructura y Soporte, en roles junior o entry-level.

En mi pasantía diseñé un dashboard en Python (Shiny) que procesaba archivos CSV de sensores industriales, para monitorear temperatura de calderas y tiempo de operación de los equipos.

[:fontawesome-brands-github: GitHub](https://github.com/juansiecola){ .md-button }
[:fontawesome-brands-linkedin: LinkedIn](https://www.linkedin.com/in/juan-siecola){ .md-button }
[:fontawesome-solid-envelope: Escribime](mailto:juanesiecola@gmail.com){ .md-button .md-button--primary }

</div>