
    WITH combined_trips AS (
        SELECT Real_Distance, 
               CASE
                   WHEN Pickup_Datetime IS NOT NULL THEN strftime('%Y-%m-%d', Pickup_Datetime)
                   ELSE strftime('%Y-%m-%d', Pickup_Date)
               END as Trip_Date
        FROM (
            SELECT Real_Distance, Pickup_Datetime, NULL as Pickup_Date 
            FROM yellow_taxi_database 
            WHERE Pickup_Datetime BETWEEN '2013-07-01' AND '2013-07-31'
            UNION ALL
            SELECT Real_Distance, NULL as Pickup_Datetime, Pickup_Datetime
            FROM uber_database 
            WHERE Pickup_Datetime BETWEEN '2013-07-01' AND '2013-07-31'
        )
    ),
    ordered_trips AS (
        SELECT Real_Distance, 
               ROW_NUMBER() OVER (ORDER BY Real_Distance) AS row_num,
               (SELECT COUNT(*) FROM combined_trips) AS total_count
        FROM combined_trips
    )
    SELECT Real_Distance
    FROM ordered_trips
    WHERE row_num = ROUND(total_count * 0.95);
    