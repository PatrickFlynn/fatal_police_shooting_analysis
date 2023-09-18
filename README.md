# Fatal Police Shooting Data Processing and Dashboard
### *How can we reduce gun-related deaths between the police and public by 50% in the next 10 years?* ###

*Author*: Patrick S. Flynn  
*Prepared:* September, 2023

## Reducing Fatal Police Shootings by 50% in 10 Years
[Fatal Police Shooting Dasboard by Patrick Flynn](https://patrickflynngis.maps.arcgis.com/apps/dashboards/ffc402a7bd2b4a7fb9c0305da4a362a8)

Dashboard Preview  
[![Image](https://patrickflynngis.maps.arcgis.com/sharing/rest/content/items/ffc402a7bd2b4a7fb9c0305da4a362a8/info/thumbnail/thumbnail1694996440922.png)](https://patrickflynngis.maps.arcgis.com/apps/dashboards/ffc402a7bd2b4a7fb9c0305da4a362a8)

View the Shootings on a Map  
[Map](https://patrickflynngis.maps.arcgis.com/apps/mapviewer/index.html?webmap=496b36de78694c7d86dfd0d9c25206e9)

## Summary
The purpose of this repository and codebase is to document the source, methodology, and process used to create reproducible, transparent, and publicly available fatal shootings by the police from 2015 to 2023 (September 6th). The purpose of this data, analysis, and dashboard is to reduce fatal police shootings by 50%. 

> Officers aren’t trained to shoot to kill. They are trained to stop a threat. They use the tools they are given, and often have less than a second to make life-or-death decisions. Let’s give them better tools and put the toughest decisions in the hands of the courts.  - **Axon**

This data should aim to inspire policy makers, law enforcement, private corporations, and most importantly the public.


## Limitations
- Potentially missing data
    - This data is public/open-sourced by the Washington Post.  Additionally, the FBI UCR (Uniform Crime Report) / NIBRS (National Incident-Based Reporting System) does not provide easily attainable officer-involved-shooting data. Because of these factors this data should be recognized as an approximation of the true number of fatal shootings between the police and the public. Washington Post acknowledges this issue here: [Article](https://www.washingtonpost.com/investigations/interactive/2022/fatal-police-shootings-unreported/?itid=lk_inline_enhanced-template) 

- Approximated Geographic Location Information
    - While much of this dataset does have geocoordinates in the form of latitude/longitude. The precision is not exactly known. Further, many of the original datapoints provided by the Washington Post had no geolocation and therefore the city and state were used as an approximation of the incident's location. Any analysis performed in relation to geography should consider this when making any analytical judgements or estimations.

## Data Source
Repository
- [Washington Post Police Shooting Data Github Repository](https://github.com/washingtonpost/data-police-shootings/)  

CSV Data
- [Shooting Data CSV](https://github.com/washingtonpost/data-police-shootings/blob/master/v2/fatal-police-shootings-data.csv)
- [Agency Data CSV](https://github.com/washingtonpost/data-police-shootings/blob/master/v2/fatal-police-shootings-agencies.csv)

## Requirements:
- Docker
- Web Browser (Chrome, Firefox, etc.)
- *Optional* - ESRI ArcGIS Online Account

## Building and Running Container Image

### Install Docker
Docker Instructions: [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

### Build the Image  
```
docker build -t patrick_flynn_py_anaconda_img .
```
The contents of the build process can be located in the Dockerfile ([Link](https://github.com/PatrickFlynn/fatal_police_shooting_analysis/blob/main/Dockerfile))

### Run the Container
```
docker run -d -v "%cd%/Notebooks:/Notebooks" -v "%cd%/Data:/Data" -v "%cd%/:/Root" -p 8888:8888 --name fatal_police_shooting_analysis --rm patrick_flynn_py_anaconda_img
```
In addition to running the container, this command will :
- mount the repository's Notebooks/ folder as `/Notebooks`
- mount the repository's root as `/Root`
- mount the respotiory's Data/ folder as `/Data`
- Open port 8888 for use by Jupyter Notebook

### View the Jupyter Notebook Used to Process the Data
Click below or navigate to localhost:8888  
- [http://localhost:8888/](http://localhost:8888/)

### Stop the Container
```
docker stop fatal_police_shooting_analysis
```

## Future Improvements:
1. Automatic updates of new data to dashboard
2. Better aliases/feature names for non-familiar audiences