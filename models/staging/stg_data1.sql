
select
    f.value:legacy_id::int as legacy_id,
    f.value:num_docks_available::int as num_docks_available,
    f.value:num_ebikes_available::int as num_ebikes_available,
    f.value:num_bikes_available::int as num_bikes_available,
    f.value:station_status::string as station_status,
    f.value:num_bikes_disabled::int as num_bikes_disabled,
    f.value:is_installed::int as is_installed,
    f.value:eightd_has_available_keys::string as eightd_has_available_keys,
    f.value:station_id::int as station_id,
    f.value:is_renting::int as is_renting,
    f.value:num_docks_disabled::string as num_docks_disabled,
    f.value:last_reported::int as last_reported,
    f.value:is_returning::int as is_returning

from CITIBIKES_EMMA.RAW.LANDING_TABLE, table(flatten(v:data.stations)) f

