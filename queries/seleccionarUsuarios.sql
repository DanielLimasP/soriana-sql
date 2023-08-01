select
    locations.externalId as 'Det',
    locations.name as 'Nombre de determinante',
    users.id as 'ID de usuario',
    users.firstName as 'Nombre',
    users.lastName as 'Apellidos',
    users.position as 'Puesto',
    users.type as 'Tipo',
    users.employeeNumber as 'No. de empleado',
    users.createdAt as 'Fecha de creacion',
    users.deletedAt as 'Fecha de modificacion'
FROM
    users
    left join locations on users.locationId = locations.id
where
-- La búsqueda de los usuarios se hace en base a su número de usuario
    users.employeeNumber in (1500020936);