## consultarEmbarque

- Este procedimiento almacenado se utiliza para obtener y validar información relacionada a un embarque y sus respectivas guías. Se utiliza de manera general en el flujo de recibo de CEDIS para conocer el estatus de un embarque en cualquier momento (si ya concluyó, transferencias integradas a SAP, folio de reclamación, etc.).
- Como parámetro toma el número de embarque.

### Firma

```sql
CALL consultarEmbarque(IN embarque VARCHAR(50));
```
