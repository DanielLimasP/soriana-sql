## borrarEmbarqueParaTienda

- Este procedimiento almacenado se utiliza cuando el usuario solicita de manera explicita que se borre cierta guía de cierto embarque, debido a varias razones, de entre las cuales se pueden encontrar que ya se recibió por sistema LOGIN o que el embarque simplemente nunca llegó (muy poco común).
- Dada la naturaleza crítica del flujo de recibo de CEDIS, utilizar este programa cuando ya se validó que el embarque existe y que el usuario nos solicitó explicitamente eliminarlo de la persecución.
- De manera interna, este procedimiento almacenado borra solo la guía del embarque solicitado. Esto lo hace debido a que el procedimiento almacenado toma como parámetro la tienda del usuario, así como el número de embarque.
- Una vez ejecutado el procedimiento almacenado, utilizar procedimiento almacenado de `consultarEmbarque` para validar que se borró la guía del embarque dado para la tienda del usuario.
- Usar con precaución dada la naturaleza de recibo de CEDIS.

### Firma

```sql
CALL borrarEmbarqueParaTienda(IN tienda INT, IN embarque VARCHAR(50));
```
