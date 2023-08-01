## corregirErroresDeCambioDeMaterialParaEmbarques

-   Este procedimiento almacenado corrige el error en el que los campos dentro del xmlData Id_Num_SKU y Num_MaterialSAP no coinciden.
-   Devuelve el numero de campos modificados con éxito.
-   El caso de uso de este programa es para solucionar el destino dentro del campo xmlData.

### Firma

```sql
CALL corregirErroresDeCambioDeMaterialParaEmbarques();
```
