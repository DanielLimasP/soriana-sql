## corregirErrorDeKitEnEmbarqueParaOrdenDeCompra

-   Este procedimiento almacenado realiza dos cosas, corrige el error de destino en el xmlData, cambiándolo a "SO_ONLY" y además agrega un objeto JSON con los parámetros pedidos.
-   Usar con precaución, ya que si se ejecuta varias veces con los mismos parámetros, se pueden duplicar datos dentro del campo xmlData.
-   El caso de uso de este programa es para solucionar el destino dentro del campo xmlData, en caso de que no se presente como "SO_ONLY".

### Firma

```sql
CALL corregirErrorDeKitEnEmbarqueParaOrdenDeCompra(IN tienda INT, IN noDeEmbarque VARCHAR(45), IN ordenDeCompra VARCHAR(45), IN folioTransf VARCHAR(45), IN noMaterial VARCHAR(45), IN folioPedido VARCHAR(45), IN trackingNumber VARCHAR(45), IN noPosicion VARCHAR(45));
```
