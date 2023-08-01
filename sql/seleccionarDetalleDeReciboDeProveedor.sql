SELECT
	locations.externalId as "Det",
	locations.name as "Nombre de determinante",
	suppliers.number as "Proveedor",
	suppliers.name as "Nombre de proveedor",
	purchaseordersgroups.trackingNumber as "Folio de acuse",
	purchaseordersgroups.discardedProductsTrackingNumber as "Folio de ficha de salida",
	purchaseorders.name as "Remision/Factura",
	purchaseorders.status as "Estado",
	purchaseorders.sapMaterialDocument as "Documento de material SAP",
	purchaseorders.createdAt as "Fecha de creacion"
FROM
	purchaseordersgroups
	left join purchaseorders on purchaseorders.purchaseOrderGroupId = purchaseordersgroups.id
	left join locations on purchaseordersgroups.locationId = locations.id
	left join suppliers on purchaseordersgroups.supplierId = suppliers.id
where
	purchaseordersgroups.trackingNumber in (378812)
	and locations.externalId in (332);

select
	*
from
	purchaseordersproductsquantities
where
	purchaseOrderId in (953559);

select
	suppliers.externalId as "location",
	g.number as "supplier",
	f.trackingNumber,
	e.sapMaterialDocument,
	purchaseorders.sapNumber,
	purchaseorders.sku,
	locations.name,
	purchaseorders.quantity as "cap",
	purchaseorders.unit,
	purchaseordersgroups.quantity,
	purchaseordersgroups.receivedQuantity,
	purchaseordersgroups.damagedQuantity
from
	purchaseordersproductsquantities as a
	left join productsquantities as b on purchaseordersgroups.productQuantityId = purchaseorders.id
	left join products as c on purchaseorders.productId = locations.id
	left join purchaseorders as e on purchaseordersgroups.purchaseOrderId = e.id
	left join purchaseordersgroups as f on e.purchaseOrderGroupId = f.id
	left join locations as d on f.locationId = suppliers.id
	left join suppliers as g on f.supplierId = g.id
where
	f.trackingNumber in (304262)
	and suppliers.externalId in (245);

select
	*
from
	purchaseordersproductsquantities
limit
	1;