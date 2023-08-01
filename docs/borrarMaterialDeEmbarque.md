## borrarMaterialDeEmbarque

- Este procedimiento almacenado borra un solo material de un embarque dado.
- El caso de uso general de este programa es cuando la tienda no puede concluir un recibo de CEDIS por material con bloqueo total, material en proceso de creación, entre otros casos.
- Utilizar con suma precaución ya que el mal uso de este programa puede generar inconsitencias graves en el inventario de una tienda.
- Dada la naturaleza crítica de recibo de CEDIS analizar la situación y determinar si realmente es necesario borrar el material para continuar con el embarque.
- Utilizar en conjunto con el procedimiento almacenado de `consultarMaterialEnEmbarque` para validar primero si el material que se quiere borrar existe en el embarque y para validar que después de haber sido borrado el material, se haya puesto un valor en la columna de `fecha de borrado`.

### Firma

```sql
CALL borrarMaterialDeEmbarque(IN embarque VARCHAR(50), IN material VARCHAR(50));
```
