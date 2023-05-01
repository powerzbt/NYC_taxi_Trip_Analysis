<h1 align="center"> NYC_taxi_Trip_Analysis </h1>
 
## **Overview**:
This is the Final Project for the course "Tools for Analytics" instructed by Erin Root at Columbia University.
 
This project aims to analyze and visualize the trends and patterns of hired-ride trips in New York City from January 2009 through June 2015, using Uber and NYC Yellow Taxi data, along with local historical weather data. The purpose is to understand the factors affecting the popularity of Uber and Yellow Taxis, their preferences during different weather conditions, and the dynamics of trips around the city.

The project is divided into four parts: Data Preprocessing, Storing Data, Understanding Data, and Visualizing Data. Throughout these parts, we use Python programming language, Jupyter Notebook as the development environment, and SQL for querying data. The utilized Python libraries include pandas, geopandas, matplotlib, and SQLAlchemy, among others.

In the Data Preprocessing part, we download and clean datasets for Uber rides, Yellow Taxi trips, and historical weather data. We then preprocess the data by filling in missing information, generating samples, and calculating distances between pickup and dropoff locations.

For the Storing Data part, we create a SQLite database and populate it with four tables: Yellow Taxi trips, Uber trips, hourly weather information, and daily weather information. We also create a schema.sql file defining each table's schema.

In the Understanding Data part, we craft SQL queries to answer specific questions related to hired-ride trip patterns, popular hours and days, distances traveled, and weather conditions. These queries help us develop a better understanding of the data and its characteristics.

Finally, in the Visualizing Data part, we create six visualizations embedded in the Jupyter Notebook using matplotlib and other visualization libraries. These visualizations provide insights into the popularity of hired rides during different hours and days, average distances traveled, drop-offs at major airports, spatial distribution of trips, and the relationship between tip amount and distance or precipitation.

This project showcases the power of data analysis and visualization in providing valuable insights into the patterns and preferences of hired-ride trips in a large urban area like New York City. It demonstrates how various factors, such as time, weather, and location, can affect the demand and usage of hired rides, helping service providers better understand their customers and optimize their operations.

## **To run**:

Set up and run **[Final Project.ipynb](https://github.com/powerzbt/NYC_taxi_Trip_Analysis/blob/main/Final%20Project.ipynb)** 
 
## **Dependencies**:
folium==0.14.0
geopandas==0.10.2
numpy==1.21.6
pandas==1.3.5
pyarrow==11.0.0
requests==2.29.0
seaborn==0.12.2
sqlite3 (part of Python's standard library, no separate version)
BeautifulSoup4==4.12.0 (imported as bs4)
matplotlib==3.2.0
scipy==1.4.1
sqlalchemy==1.3.4





## **Presentation**:

[NYC taxi Trip Analysis](https://github.com/powerzbt/NYC_taxi_Trip_Analysis/blob/main/Final%20Project.pdf) 

  

## **Author**:
* Botao Zhang (bz2462@columbia.edu) * Kelly Piao (yp2643@columbia.edu)

