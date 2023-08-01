select
    shipmentslocations.id as 'id de guia',
    shipments.id as 'id de embarque',
    shipments.number as 'embarque',
    shipmentslocations.externalId as 'guia',
    shipmentslocations.sapTransferMovements as 'transferencias',
    shipmentslocations.receiveType as 'tipo de recibo',
    cedis.externalId as 'cedis',
    det.externalId as 'det',
    shipmentslocations.day as 'fecha creacion',
    shipmentslocations.arrivedAt as 'fecha arribo',
    shipmentslocations.offloadingAt as 'fecha descarga',
    shipmentslocations.readyToLeaveAt as 'fecha marchamos',
    shipmentslocations.leftAt as 'fecha recibo a detalle',
    shipmentslocations.finishedAt as 'fecha conclusion',
    shipmentslocations.deletedAt as 'fecha borrado',
    shipmentslocations.claimMissingTrackingNumber as 'folio de reclamacion'
from
    shipments
    left join shipmentslocations on shipmentslocations.shipmentId = shipments.id
    left join locations as cedis on shipmentslocations.locationFromId = cedis.id
    left join locations as det on shipmentslocations.locationToId = det.id
where
-- Búsqueda de embarque por número de embarque
    -- shipments.number in (785351)
-- Búsqueda de embarque por folio de transferencia
    shipmentslocations.sapTransferMovements like "%3272311%" and
    shipmentslocations.createdAt > "2023-06-01 00:00:00";
