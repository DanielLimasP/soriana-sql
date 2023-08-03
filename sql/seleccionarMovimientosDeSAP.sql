select * from sapmovementsmaterialdocuments limit 100;
select 
	locationExternalId as 'centro',
	movement as 'movimiento',
	trackingNumber as 'folio',
	materialDoc as 'documentoMaterial',	
	createdAt as 'creacion',
	JSON_UNQUOTE(JSON_EXTRACT(sapResponse, '$.Year_MATDOCUMENTYEAR')) as 'periodo'
from
	sapmovementsmaterialdocuments
where 
	locationExternalId in (363)
	and movement in (311)
	and trackingNumber in (25681, 25944, 26073, 26419);

	