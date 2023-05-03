
    WITH 
        yellow_trips AS (
            SELECT 
                strftime('%Y-%m-%d', Pickup_Datetime) as Date, 
                COUNT(*) as Trips
            FROM yellow_taxi_database
            WHERE Date BETWEEN '2014-01-01' AND '2014-12-31'
            GROUP BY Date
        ),
        uber_trips AS (
            SELECT 
                strftime('%Y-%m-%d', Pickup_Datetime) as Date, 
                COUNT(*) as Trips
            FROM uber_database
            WHERE Date BETWEEN '2014-01-01' AND '2014-12-31'
            GROUP BY Date
        ),
        daily_stats AS (
            SELECT 
                Date, 
                AVG(DailyAverageWindSpeed) as Avg_Wind_Speed
            FROM daily_weather_database
            WHERE Date BETWEEN '2014-01-01' AND '2014-12-31'
            GROUP BY Date
        )
    SELECT 
        daily_stats.Date, 
        daily_stats.Avg_Wind_Speed, 
        COALESCE(yellow_trips.Trips, 0) + COALESCE(uber_trips.Trips, 0) AS Hired_Trips
    FROM 
        daily_stats 
        LEFT JOIN yellow_trips ON daily_stats.Date = yellow_trips.Date 
        LEFT JOIN uber_trips ON daily_stats.Date = uber_trips.Date
    ORDER BY 
        daily_stats.Avg_Wind_Speed DESC
    LIMIT 
        10;
    