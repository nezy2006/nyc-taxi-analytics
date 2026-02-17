CREATE TABLE zones (
    zone_id INT PRIMARY KEY,
    borough VARCHAR(50),
    zone_name VARCHAR(100),
    service_zone VARCHAR(50)
);

CREATE TABLE trips (
    trip_id SERIAL PRIMARY KEY,
    vendor_id INT,
    pickup_datetime TIMESTAMP,
    dropoff_datetime TIMESTAMP,
    passenger_count INT,
    trip_distance FLOAT,
    ratecode_id INT,
    store_and_fwd_flag CHAR(1),
    pickup_zone_id INT REFERENCES zones(zone_id),
    dropoff_zone_id INT REFERENCES zones(zone_id),
    payment_type INT,
    fare_amount FLOAT,
    extra FLOAT,
    mta_tax FLOAT,
    tip_amount FLOAT,
    tolls_amount FLOAT,
    improvement_surcharge FLOAT,
    total_amount FLOAT,
    congestion_surcharge FLOAT,
    airport_fee FLOAT,
    cbd_congestion_fee FLOAT,
    duration_minutes FLOAT,
    avg_speed_mph FLOAT,
    fare_per_mile FLOAT,
    rush_hour_flag BOOLEAN
);

CREATE TABLE excluded_records (
    record_id SERIAL PRIMARY KEY,
    reason VARCHAR(255),
    raw_data TEXT
);
