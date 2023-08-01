## cambiarEstatusADestruidoPorVencimientoASetDeCargos

- El procedimiento almacenado `cambiarEstatusADestruidoPorVencimientoASetDeCargos` realizar la misma acción que `cambiarTipoDeDevolucionASetDeCargosFedex` y se comporta de la misma manera, con la diferencia de que en lugar de cambiar el estatus a `POR ENTREGAR EN MANO` directamente cambia el estatus de los cargos a `DESTRUIDO POR VENCIMIENTO`. Tomar las mismas precauciones que con `cambiarTipoDeDevolucionASetDeCargosFedex`.
- Este procedimiento almacenado se utiliza cuando el usuario final pide explicitamente que los folios sean cambiados al estatus de `DESTRUIDO POR VENCIMIENTO`.
- Toma los mismos parámetros que `consultarFoliosDeDevolucion`.
- Usar con discreción y validar que los cambios que se están haciendo son los correctos utilizando `consultarFoliosDeDevolucion`. El incorrecto uso de este procedimiento almacenado podría llevar a la perdida de información y alteración del flujo natural de un folio de devolución.
- Para poder utilizar este procedimiento almacenado es necesario que los folios en cuestión ya hayan sido aprobados (vobo gerencia o vobo gerencia + vobo comercial).

### Firma

```sql
CALL cambiarEstatusADestruidoPorVencimientoASetDeCargos(IN tienda INT, IN folios VARCHAR(5000));
```
