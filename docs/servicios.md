# Servicios

## Resumen

- Todo servicio always-on corre en Oracle Cloud (ARM64, Free Tier) — el lab nunca aloja servicios permanentes.
- Repartidos en dos instancias: `js-oraclevm-01` (métricas + NetBox) y `js-oraclevm-02` (publicación y DNS).
- Un Docker Compose por servicio, nada nativo salvo Tailscale.
- Publicación selectiva vía NPM + DuckDNS: solo lo que se decide exponer sale a internet, el resto queda Tailscale-only.

## Detalle técnico

### Servicios

| Servicio | Rol                         | Host           | Acceso                                              |
| -------- | --------------------------- | -------------- | --------------------------------------------------- |
| NPM      | Reverse proxy               | js-oraclevm-02 | Público (80/443) — admin (puerto 81) solo Tailscale |
| Pi-hole  | DNS / ad-block              | js-oraclevm-02 | Solo Tailscale                                      |
| Homer    | Dashboard de accesos        | js-oraclevm-02 | Solo Tailscale                                      |
| NetBox   | IPAM / documentación de red | js-oraclevm-01 | Acceso público                                      |

## Configuración

Compose separado por servicio para que cada uno tenga ciclo de vida independiente. Nada nativo salvo Tailscale porque es la única pieza que necesita estar siempre arriba incluso si Docker se reinicia; todo lo demás, al vivir en contenedores, es descartable y reproducible desde el compose file.

NPM corre en `js-oraclevm-02`, pero es quien publica Grafana, Uptime Kuma y Netbox, que viven en `js-oraclevm-01` cruza de una instancia a la otra por Tailscale, no por estar en la misma red local.