# Load Air Passengers Data Set
data(AirPassengers)

#Verify the Dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

#Convert the Dataset to dataframe
ap_df <- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

#Dataframe with Years and months seperately
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

#Basic Plot
plot(AirPassengers)

#Plot with title, axis labels and color
plot(AirPassengers,
     type = 'l',
     lwd = 1.5,
     main = "Air Passengers Trend  Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "blue"
)
points(AirPassengers,
       type = 'o',
       pch = 16,
       col = "red"
)
grid()


# Using GGPLOT2 Library
#Importing the library ggplot2
library(ggplot2)

# A Basic Grid with x,y axes
ggplot(ap_df,
       aes(x=year,y=passengers))+
  geom_line(color='violet',linewidth=0.7)+
  labs(title = 'Trend Analysis of Air Passengers',
       subtitle = 'From 1949-1960',
       caption = 'Using Built-in Air Passengers Dataset',
       x = 'Months',
       y = 'No. of Passengers')+
  geom_point(color='black',size=0.6)+
  geom_smooth(se=FALSE,color='orange')+
  theme_minimal()+
  theme(
    plot.title=element_text(face="bold",size=14),
    plot.subtitle=element_text(size=10))
