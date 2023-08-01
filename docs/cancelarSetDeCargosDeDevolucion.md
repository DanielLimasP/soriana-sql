## cancelarSetDeCargosDeDevolucion

- El procedimiento almacenado `cancelarSetDeCargosDeDevolucion` aplica una cancelación ligera a los cargos dados de una tienda. Por cancelación ligera podemos entender que simplemente se cambia el estatus. Ver el siguiente punto.
- Este procedimiento almacenado se utiliza cuando el usuario final pide explicitamente que los folios sean `CANCELADOS`. Validar de lado de SAP que los folios a cancelar no cuentan con el movimiento 311. De contar con el movimiento 311 no se podrá realizar una simple cancelación de lado de la app, ya que se tiene que aplicar la reversión del movimiento en cuestión para poder sacar la mercancía del almacén 006.
- Este procedimiento almacenado se utiliza comúnmente cuando se trata de un error de `util. libre por debajo de n` por tema de que el folio capturado por el usuario ya existe en SAP.
- Una vez que se cancelaron los cargos del usuario, comentar que deberá volver a capturar los cargos con un nuevo folio (comenzar desde 0 la devolución).
- Toma los mismos parámetros que `consultarFoliosDeDevolucion`.
- Utilizar con discreción y precaución ya que puede crear conflictos e inconsistencias en temas de inventarios. Tener en cuenta que es necesario validar que los cambios que se están haciendo son los correctos utilizando `consultarFoliosDeDevolucion`. El incorrecto uso de este procedimiento almacenado podría llevar a la perdida de información y alteración del flujo natural de un folio de devolución.
- Para poder utilizar este procedimiento almacenado es totalmente necesario validar que los folios a cancelar no cuenten con el movimiento 311.

### Firma

```sql
CALL cancelarSetDeCargosDeDevolucion(IN tienda INT, IN folios VARCHAR(5000));
```
