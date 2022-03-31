select 
    f.value:station_id::int as station_id,
    f.value:rental_uris::string as rental_uris,
    f.value:lat::int as lat,
    f.value:region_id::int as region_id,
--blir fel efter denna rad
    f.value:external_id::int as external_id,
    f.value:eightd_station_services::string as eightd_station_services,
    f.value:short_name::int as short_name, 
    f.value:capacity::int as capacity,
    f.value:station_type::string as station_type,
    f.value:has_kiosk::string as has_kiosk,
    f.value:name::string as name,
    f.value:eightd_has_key_dispenser::string as eightd_has_key_dispenser,
    f.value:rental_methods::string as rental_methods,
    f.value:electric_bike_surcharge_waiver::string as electric_bike_surcharge_waiver,
    f.value:legacy_id::int as legacy_id, 
    f.value:lon::int as lon
    

from CITIBIKES_EMMA.RAW.LANDING_TABLE_STATION_INFO, table(flatten(v:data.stations)) f






