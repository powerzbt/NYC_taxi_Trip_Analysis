
CREATE TABLE IF NOT EXISTS hourly_weather_data
(
    id INTEGER PRIMARY KEY,
    HourlyWindSpeed FLOAT,
    HourlyPrecipitation FLOAT,
    Date DATE,
    Record_Time TIMESTAMP,
    Year INTEGER,
    Month INTEGER,
    Day INTEGER,
    Hour INTEGER
);

CREATE TABLE IF NOT EXISTS daily_weather_data
(
    id INTEGER PRIMARY KEY,
    DailyPrecipitation FLOAT,
    DailySustainedWindSpeed FLOAT,
    DailyPeakWindSpeed FLOAT,
    DailyAverageWindSpeed FLOAT,
    Date DATE,
    Record_Time TIMESTAMP,
    Year INTEGER,
    Month INTEGER,
    Day INTEGER,
    Hour INTEGER
);

CREATE TABLE IF NOT EXISTS taxi_trips
(
    id INTEGER PRIMARY KEY,
    pickup_datetime TIMESTAMP,
    dropoff_datetime TIMESTAMP,
    start_lon FLOAT,
    start_lat FLOAT,
    end_lon FLOAT,
    end_lat FLOAT,
    fare_amt FLOAT,
    tip_amt FLOAT,
    real_distance FLOAT
);

CREATE TABLE IF NOT EXISTS uber_trips
(
    id INTEGER PRIMARY KEY,
    pickup_datetime TIMESTAMP,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    fare_amount FLOAT,
    day_of_week INTEGER,
    real_distance FLOAT
);

CREATE TABLE IF NOT EXISTS sunrise_sunset_data
(
    id INTEGER PRIMARY KEY,
    Sunrise TIME,
    Sunset TIME,
    Date DATE
);
