# Fatal Police Shooting Analysis
*How can we reduce gun-related deaths between the police and public by 50% in the next 10 years?*

## Summary
This is a test

## Methodology

## Limitations

## Data Source
Repository
- [Washington Post Police Shooting Data Github Repository](https://github.com/washingtonpost/data-police-shootings/)  

CSV Data
- [Shooting Data CSV](https://github.com/washingtonpost/data-police-shootings/blob/master/v2/fatal-police-shootings-data.csv)
- [Agency Data CSV](https://github.com/washingtonpost/data-police-shootings/blob/master/v2/fatal-police-shootings-agencies.csv)

## Requirements:
- Docker

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
