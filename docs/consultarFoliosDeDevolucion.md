## consultarFoliosDeDevolucion

- Para el flujo de devoluciones en general, se utiliza el procedimiento almacenado `consultarFoliosDeDevolucion`. Como su nombre lo indica. Este procedimiento almacenado nos ayuda a consultar folios de devolución para una tienda dada. La información que regresa nos es de utilidad para conocer el estatus en general de un folio de devolución. El procedimiento almacenado toma dos parámetros. El número de la tienda y una cadena de caracteres que viene a representar el set de folios que vamos a consultar para esa tienda. Nótese que los folios dentro de la cadena de caracteres están separados únicamente por comas. Esto es importante, ya que de otra manera, el procedimiento almacenado no va a detectar más que el primer folio.
- El caso de uso de este programa es para devoluciones en general, ya que es meramente una consulta que se puede utilizar para obtener o validar información.

### Firma

```sql
-- Ejemplo de cadena de caracteres de folios: IN folios VARCHAR('44206,44207, 44255,44353,44400')
CALL consultarFoliosDeDevolucion(IN tienda INT, IN folios VARCHAR(5000));
```
