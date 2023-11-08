CREATE OR REPLACE TABLE mystic-stack-404411.uber_dataset.analytics AS (
SELECT
f.record_id,
dv.vendor_name,
dd.tpep_pickup_datetime,
dd.tpep_dropoff_datetime,
dr.rate_code_name,
dp.payment_type_name,
f.store_and_fwd_flag,
f.passenger_count,
f.trip_distance,
f.fare_amount,
f.extra,
f.mta_tax,
f.improvement_surcharge,
f.tip_amount,
f.tolls_amount,
f.total_amount,
f.congestion_surcharge,
f.airport_fee
FROM mystic-stack-404411.uber_dataset.fact_yellow_taxi_trip_record f
INNER JOIN mystic-stack-404411.uber_dataset.dim_vendor dv ON f.vendor_id = dv.vendor_id
INNER JOIN mystic-stack-404411.uber_dataset.dim_datetime dd ON f.datetime_id = dd.datetime_id
INNER JOIN mystic-stack-404411.uber_dataset.dim_rate_code dr ON f.rate_code_id = dr.rate_code_id
INNER JOIN mystic-stack-404411.uber_dataset.dim_payment_type dp ON f.payment_type_id = dp.payment_type_id);
