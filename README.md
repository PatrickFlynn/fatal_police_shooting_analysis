# fatal_police_shooting_analysis
How can we reduce gun-related deaths between the police and public by 50% in the next 10 years?


```
docker build -t patrick_flynn_py_anaconda_img .

docker run -d -v "%cd%/Notebooks:/Notebooks" -v "%cd%/Data:/Data" -p 8888:8888 --name fatal_police_shooting_analysis --rm patrick_flynn_py_anaconda_img

docker stop fatal_police_shooting_analysis
```


`https://github.com/washingtonpost/data-police-shootings/blob/master/v2/fatal-police-shootings-data.csv`