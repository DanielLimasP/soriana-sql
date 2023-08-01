## cambiarTipoDeDevolucionASetDeCargosFedex

- El procedimiento almacenado de `cambiarTipoDeDevolucionASetDeCargosFedex` se utiliza en el flujo de devoluciones, cuando la tienda sube un ticket de soporte indicando que un folio de devolución por transportista ya capturado y aprobado no puede irse por FEDEX. Este procedimiento almacenado cambia el tipo/esquema de devolución a proveedor de un una cantidad n de folios para una tienda dada. El procedimiento almacenado también cambia el estatus de los cargos dados a `POR ENTREGAR EN MANO` y valida que antes de realizar el cambio, los cargos ya estén aprobados. Utilizar cuando el usuario solicita explicitamente se cambie el método de entrega de los folios solicitados a `POR ENTREGAR EN MANO`. Adicionalmente, solicitar vobo de comercial por escrito para dar fe del cambio.
- Toma los mismos parámetros que `consultarFoliosDeDevolucion`.
- Usar con discreción y validar que los cambios que se están haciendo son los correctos utilizando `consultarFoliosDeDevolucion`. El incorrecto uso de este procedimiento almacenado podría llevar a la perdida de información y alteración del flujo natural de un folio de devolución.
- Para poder utilizar este procedimiento almacenado es necesario que los folios en cuestión ya hayan sido aprobados (vobo gerencia o vobo gerencia + vobo comercial).

### Firma

```sql
CALL cambiarTipoDeDevolucionASetDeCargosFedex(IN tienda INT, IN folios VARCHAR(5000));
```
