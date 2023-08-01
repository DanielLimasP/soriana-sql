## consultarEmbarquesConIncidencia

- Este procedimiento almacenado se utiliza para consultar todos los embarques que actualmente tienen incidencia. Esto es, que siguen en estatus de arribo, sin haber pasado al estatus de descarga.
- El resultado de este procedimiento almacenado puede ser utilizado para generar un reporte que brinde visibilidad de todos los que tienen incidencia. Para esto, es necesario pasarlo por un script de procesamiento que formatee los `jsons` de la columna de `xmlData` y los muestre de una manera más legible.

### Firma

```sql
CALL consultarEmbarquesConIncidencia();
```
