For this first assignment I have created a processing sketch that draws a world map scanner simulation displaying nuclear bombs alerts and the epicentre of eartquakes in different coordenates of the map. Therefor, this sketch will be loading coordinates (longitude,latitude) from a file called country-capitals.csv in the data folder.
https://www.youtube.com/watch?v=dDWYZTuMcGo&feature=youtu.be
The file is in CSV format and is structured as follows:

CountryName,CapitalName,CapitalLatitude,CapitalLongitude,Status,Magnitude
0	Spain Madrid 40.4 -3.683333 EQ 1.5
1 United States Washington 38.883333 -77.000000 Nuclear
2 China Beijing 39.916666666666664 116.383333 Nuclear

The user can display nuclear and earthquake threats by clicking in the corresponding button.
There are different engines such as waves, intensity and life of the seismic that performs changes depending on the magnitude of the earthquake. By selecting a point in the world map the sketch is modified and carries out different animations.

I have used for and if statements to control the map boundries.the Map function has been to scale the world map coordinates and in order to place point into the map. Trigonometry (sin and cos) are used to represent waves and draw circle animations. I have also used time functions, image, shape, translate and rotate functions. 

This is just a simple simulation of the world threats loading data from a csv file using these values to create animations in order to achieve a sci-fi screen.
