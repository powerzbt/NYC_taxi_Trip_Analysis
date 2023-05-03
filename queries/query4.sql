
    WITH Combined_Trips AS (
        SELECT strftime('%Y-%m-%d', Pickup_Datetime) as Date, Real_Distance
        FROM yellow_taxi_database
        WHERE strftime('%Y', Date) = '2009'
        UNION ALL
        SELECT strftime('%Y-%m-%d', Pickup_Datetime) as Date, Real_Distance
        FROM uber_database
        WHERE strftime('%Y', Date) = '2009'
    )
    SELECT Date, COUNT(*) as Rides, AVG(Real_Distance) as Avg_Distance
    FROM Combined_Trips
    GROUP BY Date
    ORDER BY Rides DESC
    LIMIT 10;
    