select
    locationsstocks.id as "id",
    locations.externalId as "centro",
    locationsstocks.sapInfo as "stock",
    locationsstocks.createdAt as "creacion",
    locationsstocks.updatedAt as "modificacion"
from
    locationsstocks
    left join productsquantities on locationsstocks.productQuantityId = productsquantities.id
    left join locations on locationsstocks.locationId = locations.id
where
    locations.externalId in (centro)
    -- and productsquantities.sapNumber in (material);
    and productsquantities.sku in (codigo);

