select
    locations.externalId as "Determinante",
    locations.name as "Nombre de determinante",
    suppliers.number as "Proveedor",
    suppliers.name as "Nombre de proveedor",
    purchaseordersgroups.trackingNumber as "Folio de acuse",
    purchaseordersgroups.discardedProductsTrackingNumber as "Folio de ficha de salida",
    purchaseorders.name as "Factura",
    purchaseorders.status as "Estado",
    purchaseordersgroups.createdAt as "Fecha de creacion",
    purchaseorders.updatedAt as "Fecha de modificacion"
from
    purchaseordersgroups 
    left join purchaseorders on purchaseorders.purchaseOrderGroupId = purchaseordersgroups.id
    left join locations on purchaseordersgroups.locationId = locations.id
    left join suppliers on purchaseordersgroups.supplierId = suppliers.id
where
-- La búsqueda se hace por número de proveedor
    suppliers.number in (392811)
    and purchaseorders.status = "RECEIVING"
    and purchaseorders.createdAt > "2023-05-01 00:00:00"
order by
    purchaseorders.id desc;