-- TODO: Document these two stored procedures

-- corregirErroresDeCambioDeMaterialParaEmbarques();
select id, JSON_UNQUOTE(JSON_EXTRACT(xmlData, '$[0].Id_Num_SKU')) AS numSKU, JSON_UNQUOTE(JSON_EXTRACT(xmlData, '$[0].Num_MaterialSAP')) AS numMaterialSAP, updatedAt from palletsproducts where id in (48104001, 48103999, 47331645, 47331639, 47331638, 47326064);
select * from palletsproducts where id in (47326064, 47331638, 47331639, 47331645, 48103999, 48104001);
call corregirErroresDeCambioDeMaterialParaEmbarques();

-- corregirErrorDeKitEnEmbarqueParaOrdenDeCompra();
select b.id as 'shipmentLocationId', a.id as 'shipmentId', a.number as 'shipment', b.externalId as 'trackingNumber', a.type, b.sapTransferMovements, c.externalId, d.externalId, b.day, b.arrivedAt, b.offloadingAt, b.readyToLeaveAt, b.leftAt, b.finishedAt, b.deletedAt, b.claimMissingTrackingNumber from shipments as a left join shipmentslocations as b on b.shipmentId = a.id left join locations as c on b.locationFromId = c.id left join locations as d on b.locationToId = d.id where a.number in (2012328);
select a.id, e.externalId as "location", c.number as "shipment", d.externalId, a.xmlData, a.deletedAt, a.quantitySent, a.quantityReceived, a.missingProductQuantity, a.damagedProductQuantity, a.extraProductQuantity, a.palletId, a.productQuantityId, a.createdAt, a.updatedAt from palletsproducts as a left join pallets as b on a.palletId = b.id left join shipments as c on b.shipmentId = c.id left join shipmentslocations as d on d.shipmentId = c.id left join locations as e on d.locationToId = e.id where c.number in (2012328) and e.externalId in (591) and a.xmlData like "%2096920384%";
select * from palletsproducts where id in (46496271, 46496272, 46496275, 46496276, 46496279, 46496282, 46496284, 46496286);
call corregirErrorDeKitEnEmbarqueParaOrdenDeCompra(
		-- tienda
		"591",
		-- no de embarque
		"2012328",
		-- order de compra (STO)
		"2096920384",
		-- folio de transferencia
		"3623923", 
		-- material sap
		"11693585", 
		-- folio de pedido
		"108535960", 
		-- posicion
		"172");