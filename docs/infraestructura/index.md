# Infraestructura — Home Lab

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
