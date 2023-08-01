select 
	shipments.number as "Embarque",
    shipmentslocations.externalId as "Guia",
    shipmentslocations.receiveType as "Tipo de recibo",
	destination.externalId as "Tienda",
	origin.externalId as "CEDIS",
	productsquantities.sapNumber as "Material",
	productsquantities.sku as "Codigo",
	products.name as "Producto",
	productsquantities.unit as "Unidad de medida", 
	productsquantities.quantity as "Cap. de empaque",
	JSON_UNQUOTE(JSON_EXTRACT(palletsproducts.xmlData, '$[0].Cap_Empaque')) as "Cap. empaque cedis",
	JSON_UNQUOTE(JSON_EXTRACT(palletsproducts.xmlData, '$[0].Id_Fol_Trsf')) as "Transferencia",
	palletsproducts.quantitySent as "Cantidad enviada",
	palletsproducts.quantityReceived as "Cantidad recibida"
from palletsproducts
	left join productsquantities
		on palletsproducts.productQuantityId = productsquantities.id
	left join products
		on productsquantities.productId = products.id
	left join pallets
		on palletsproducts.palletId = pallets.id
	left join shipments
		on pallets.shipmentId = shipments.id
	left join shipmentslocations
		on  shipmentslocations.shipmentId = shipments.id
	left join locations as destination
		on  shipmentslocations.locationToId = destination.id
	left join locations as origin
		on  shipmentslocations.locationFromId = origin.id
where 
    shipmentslocations.createdAt > "2023-06-01 00:00:00" and
    shipmentslocations.receiveType in ('TRUSTED')
limit 1000;