select
    palletsproducts.id as "id",
    palletsproducts.xmlData as "datos xml cedis/sls",
    palletsproducts.createdAt as "fecha de creacion",
    palletsproducts.updatedAt as "fecha de modificacion",
    palletsproducts.deletedAt as "fecha de borrado",
    palletsproducts.quantitySent as "cant. enviada",
    palletsproducts.quantityReceived as "cant. recibida",
    palletsproducts.missingProductQuantity as "cant. faltante",
    palletsproducts.extraProductQuantity as "cant. sobrante",
from
    palletsproducts
    left join pallets on palletsproducts.palletId = pallets.id
    left join shipments on pallets.shipmentId = shipments.id
    left join shipmentslocations on shipmentslocations.shipmentId = shipments.id
    left join locations on shipmentslocations.locationToId = e.id
where
    palletsproducts.xmlData like "%2098422042%"
    and shipments.number in (12408)
    and e.externalId in (1001);