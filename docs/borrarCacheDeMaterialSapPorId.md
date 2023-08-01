## borrarCacheDeMaterialSapPorId

- Este procedimiento almacenado borra un registro de cache de material SAP en base de datos de aplicativo.
- El caso de uso es cuando se desincroniza la información de cache de sap que se tiene guardada en la base de datos de aplicativo, con la información que se tiene en sap.
- Utilizar con precaucion dado que este procedimiento almacenado elimina de manera explícita registros de la base de datos.
- El único parámetro que recibe este procedimiento almacenado debe de ser un id válido de un registro de cache. Este id se obtiene con la consulta de cache de material sap para una tienda en específico, utilizando el procedimiento almacenado `consultarCacheDeMaterialesSapParaTienda`.

### Firma

```sql
call borrarCacheDeMaterialSapPorId(IN cacheDeMaterialSapId INT);
```
