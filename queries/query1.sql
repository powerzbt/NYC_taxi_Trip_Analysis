
    SELECT strftime('%Y-%m-%d', Pickup_Datetime) as Date, strftime('%H', Pickup_Datetime) as Hour, COUNT(*) as Trips
    FROM yellow_taxi_database
    WHERE strftime('%Y-%m-%d', Pickup_Datetime) BETWEEN '2009-01-01' AND '2015-06-30'
    GROUP BY Date, Hour
    ORDER BY Trips DESC;
    