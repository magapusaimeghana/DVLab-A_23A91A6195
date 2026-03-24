#Install the required packages:
install.packages("maps")
install.packages("mapdata")
install.packages("mapproj")
#Load the libraries:
library(maps)
library(mapdata)
library(mapproj)
#Basic World Map (Base R)
map("world")
#Map with Title and Colors
map("world",
    col="lightblue",
    fill=TRUE,
    bg="white",
    main="World Map Visualization")
#Map of a Specific Country(#example: India)
map("world",
    regions = "India",
    fill = TRUE,
    col = "green",
    main = "Map of India"
)

#Map with Points (Locations)
# Example: major cities in India
map("world",fill = TRUE, col = "lightgreen")
points(
  x=c(77.2090,72.8777,80.2707),
  y=c(28.6139,19.0760,13.0827),
  col="red",
  pch=19
)
#Cities plotter
#   |   cities   |  Coordinates        |
#   |------------|---------------------|
#   | Delhi      | (77.2090,28.6139)   |
#   | Mumbai     | (72.8777,19.0760)   |
#   | Chennai    | (80.2707,13.0827)    |

# Labeling Locations
map("world",fill=TRUE,col="lightyellow")
points(77.2090,28.6139,pch=19,col="red")
text(
  77.2090,
  28.6139,
  labels = "Delhi",
  pos = 4
)
