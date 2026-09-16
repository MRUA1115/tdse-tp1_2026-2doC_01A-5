# TP1 - Actividad 03 - System Statechart

Statechart del modelo **System**, modelado en Itemis Create, con los 3 estados
principales: `ST_SYS_IDLE`, `ST_SYS_WAIT_RELEASE` y `ST_SYS_ACTIVE`.

Contenido:
- `system_statechart_Export.scm` — modelo exportado de Itemis Create.
- `system_statechart_Export.png` — captura del diagrama.

> **Nota:** este statechart actualmente presenta 7 problemas reportados por
> Itemis Create (transiciones de completado múltiples/duplicadas en
> `ST_SYS_IDLE`, ciclos infinitos y transiciones muertas), originados por una
> transición `tick` mal definida como self-loop en `ST_SYS_IDLE`. Pendiente de
> corrección — ver seguimiento en el chat del grupo.
