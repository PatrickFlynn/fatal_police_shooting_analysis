# Fatal Police Shooting Analysis
### *How can we reduce gun-related deaths between the police and public by 50% in the next 10 years?* ###

*Author*: Patrick S. Flynn  
*Prepared:* September, 2023

## Reducing Fatal Police Shootings by 50% in 10 Years
[An Interactive Geo-Powered Analysis by Patrick Flynn](https://link.com)

Placeholder  
![Image](https://patrickflynngis.maps.arcgis.com/sharing/rest/content/items/8c645ec3844a41e2b55d2b1ee30d34b9/info/thumbnail/thumbnail.jpeg?token=d7mWnQJD2i7bRDG4J6-Au4LQitTC-ItQJ_Ph214V9n5T8JnQpMmOgWPAoTvgpuS3R318GxNPRZV_ZNmktQUxi5dTfouS0MCbOAYxU4BVGeLIQIWBUZurW407MwEORXyybr59K-Q59OW9jgVupXW6Ds5bNYALYfxgD39E44IVFwAcLrOuipGRicivpxwqPHFLNBxKy1kgVIhqA4Hz5kOYm8nT9nm_APQpt2kwJ5scMAY)

## Summary
## Methodology

## Limitations
- Potentially missing data
    - This data is public/open-sourced by the Washington Post.  Additionally the FBI UCR (Uniform Crime Report) / NIBRS (National Incident-Based Reporting System) does not provide easily attainable officer-involved-shooting data. Because of these factors this data should be recognized as an approximation of the true number of fatal shootings between the police and the public.  

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
- *Optional* - ESRI ArcGIS Online Account

## Building and Running Container Image


Build the Image  
```
docker build -t patrick_flynn_py_anaconda_img .
```

Run the Container
```
docker run -d -v "%cd%/Notebooks:/Notebooks" -v "%cd%/Data:/Data" -v "%cd%/:/Root" -p 8888:8888 --name fatal_police_shooting_analysis --rm patrick_flynn_py_anaconda_img
```

Stop the Container
```
docker stop fatal_police_shooting_analysis
```
