## consultarCacheDeMaterialesSapParaTienda

- Este procedimiento almacenado consulta la informacion de sap de un grupo de materiales en específico, para una tienda. Esta información es de naturaleza de cache para minimizar el número de llamadas que se hacen a sap desde la aplicación, por lo cual es información volatil que se puede regenerar con facilidad. 
- El caso de uso de este procedimiento almacenado consiste en, previo al borrado del cache de los materiales, visualizar aquellos datos que serán borrados explícitamente de la base de datos, además de consultar el id en concreto de cada registro a borrar.
- Se utiliza la salida de este sp (especificamente el campo id) como parámetro del sp `borrarCacheDeMaterialSap`.

### Firma

```sql
call consultarCacheDeMaterialesSapParaTienda(IN tienda INT, IN materiales TEXT);
```
