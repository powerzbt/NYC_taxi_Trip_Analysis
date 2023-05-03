
    SELECT Pickup_Datetime as Weekday, COUNT(*) as Trips
    FROM uber_database
    WHERE Pickup_Datetime BETWEEN '2009-01-01' AND '2015-06-30'
    GROUP BY Weekday
    ORDER BY Trips DESC;
