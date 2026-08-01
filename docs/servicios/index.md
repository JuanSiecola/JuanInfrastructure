# Servicios

## Resumen

- Todo servicio always-on corre en Oracle Cloud (ARM64), nunca en el lab local. Esto es para que el lab pueda apagarse y encenderse sin afectar la disponibilidad de los servicios.
- Un Docker Compose por servicio, nada nativo salvo Tailscale.
- Repartidos en dos instancias: `js-oraclevm-01` (todo el stack de monitoreo + NetBox) y `js-oraclevm-02` (NPM).
- Publicación selectiva vía NPM + DuckDNS: solo lo que se decide exponer sale a internet.

## Detalle de servicios

### Despliegue en instancias

| Instancia      | Servicios                 | Página                           |
| -------------- | ------------------------- | -------------------------------- |
| js-oraclevm-02 | Nginx Proxy Manager       | [Nginx Proxy Manager](npm.md)    |
| js-oraclevm-01 | Grafana                   | [Grafana](monitoreo/grafana.md)  |
| js-oraclevm-01 | Uptime Kuma               | [Uptime Kuma](monitoreo/kuma.md) |
| js-oraclevm-01 | NetBox                    | [NetBox](netbox.md)              |

### Detalle de despliegue

Docker Compose separado por servicio para que cada uno tenga ciclo de vida independiente: reiniciar uno no debería afectar a los demás. Nada nativo salvo Tailscale porque es la única pieza que necesita estar siempre arriba incluso si Docker se reinicia, todo lo demás al vivir en contenedores, es descartable y reproducible desde el compose file.