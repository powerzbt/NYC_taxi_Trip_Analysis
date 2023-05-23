

<h1 align="center">  Hired-Ride Trips Analysis in New York City </h1>
 

## Overview

![heatmap_static](https://github.com/powerzbt/NYC_taxi_Trip_Analysis/blob/main/heatmap_static.png)

This project serves as the final submission for the "Tools for Analytics" course, instructed by Erin Root at Columbia University. The goal is to investigate and illustrate the trends and patterns of hired-ride trips in New York City from January 2009 through June 2015, using data from Uber and NYC Yellow Taxi services, as well as local historical weather information. The analysis seeks to understand the factors affecting the popularity of Uber and Yellow Taxis, user preferences during various weather conditions, and the dynamics of trips across the city.

The project is divided into four sections: Data Preprocessing, Data Storage, Data Understanding, and Data Visualization. Python programming language, Jupyter Notebook, and SQL are used throughout these sections. Key Python libraries include pandas, geopandas, matplotlib, and SQLAlchemy.

<div align="center">
    <img src="https://github.com/powerzbt/NYC_taxi_Trip_Analysis/blob/main/heatmap_animation.gif" alt="heatmap_animation">
</div>

For a detailed description of each section, please refer to the [project structure](#project-structure).

## Getting Started

To run the analysis, set up and execute the [Final Project.ipynb](https://github.com/powerzbt/NYC_taxi_Trip_Analysis/blob/main/Final%20Project.ipynb) notebook.

## Dependencies

The following libraries are required to run the project:

- folium==0.14.0
- geopandas==0.10.2
- numpy==1.21.6
- pandas==1.3.5
- pyarrow==11.0.0
- requests==2.29.0
- seaborn==0.12.2
- sqlite3 (included in Python's standard library)
- BeautifulSoup4==4.12.0 (imported as bs4)
- matplotlib==3.2.0
- scipy==1.4.1
- sqlalchemy==1.3.4

For a complete list of dependencies, please refer to the [requirements.txt](https://github.com/powerzbt/NYC_taxi_Trip_Analysis/blob/main/requirements.txt) file.

## Authors

- Botao Zhang (bz2462@columbia.edu)
- Kelly Piao (yp2643@columbia.edu)


## Project Structure

The project is organized into four main sections, each playing a crucial role in the analysis of NYC taxi trip data:

### 1. Data Preprocessing

In this section, we download, clean, and preprocess datasets for Uber rides, Yellow Taxi trips, and historical weather data. The preprocessing steps involve filling in missing information, generating samples, and calculating distances between pickup and drop-off locations.

For weather data, we pay special attention to interpolation. We sort the data chronologically and use bi-directional linear interpolation to estimate missing values for variables such as 'HourlyWindSpeed', 'DailySustainedWindSpeed', 'DailyPeakWindSpeed', 'DailyAverageWindSpeed', 'SunriseTime', and 'SunsetTime'. We round the values of 'SunriseTime' and 'SunsetTime' to the nearest integer (nearest second) and convert them back to time values. We also generate random values for "HourlyPrecipitation" based on existing values and calculate "DailyPrecipitation" accordingly.

For taxi and Uber data, our primary focus after downloading and merging data files is filtering out routes outside the specified region, normalizing column names, and extracting data.

### 2. Data Storage

We create a SQLite database in this section and populate it with four tables: Yellow Taxi trips, Uber trips, hourly weather information, and daily weather information. We also develop a schema.sql file defining the schema for each table.

### 3. Data Understanding

In this section, we design SQL queries to answer specific questions related to hired-ride trip patterns, popular hours and days, distances traveled, and weather conditions. These queries help us gain a more comprehensive understanding of the data and its features.

### 4. Data Visualization

Finally, we generate ten visualizations embedded in the Jupyter Notebook using matplotlib and other visualization libraries. We also create an animation depicting the yearly change of heatmap for all hired trips over a map of the area. These visualizations provide insights into the popularity of hired rides during different hours and days, average distances traveled, drop-offs at major airports, spatial distribution of trips, and the relationship between tip amount and distance or precipitation.

## Conclusion

This project demonstrates the power of data analysis and visualization in providing valuable insights into the patterns and preferences of hired-ride trips in a large urban area like New York City. It showcases how various factors, such as time, weather, and location, can influence the demand and usage of hired rides, helping service providers better understand their customers and optimize their operations.
