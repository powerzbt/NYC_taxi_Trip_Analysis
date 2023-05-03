
    SELECT 
      AVG(DailyAverageWindSpeed) AS avg_wind_speed, 
      Sunrise, Sunset 
    FROM 
      daily_weather_database
      JOIN daily_sun_database
        ON daily_weather_database.Date = daily_sun_database.Date 
    GROUP BY 
      Sunrise, Sunset 
    ORDER BY 
      avg_wind_speed DESC
