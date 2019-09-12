## R Script for Assignment 1 Machine Learning

#Downloaded the dataset from Web
#Source: https://vincentarelbundock.github.io/Rdatasets/datasets.html
#File: worldRecords.csv

#Import the dataset
WorldRecords <- read.csv(file="C://Users/Raahitha/Desktop/worldRecords.csv", header = T)

#View the data
WorldRecords

#Summary of the complete data
summary(WorldRecords)

#Descriptive statistics of the Distance travelled
summary(WorldRecords$Distance)

#Import Place column values into separate object
Place1 <- WorldRecords[4]
Place1

#Descriptive statistics of the Place Column
summary(Place1)

#Descriptive Statistics of the Time Taken
summary(WorldRecords$Time)

#Descriptive Statistics of roadORtrack
summary(WorldRecords$roadORtrack)

#Data Transformation
#Transform the Distance column by taking the squareroot of the values
Record1 <- sqrt(WorldRecords$Distance)
Record1

#Transform the Time Column by rasing the power to 3
Record2 <- (WorldRecords$Time)^3
Record2

#Transform the Distance column by taking the base 10 logarithm of Distance
Record3 <- log10(WorldRecords$Distance)
Record3

#Conversion from one data type to another
is.numeric(WorldRecords$Distance)
DisChar <- as.character(WorldRecords$Distance)
is.character(DisChar)

#Plot the Data for Distance Travelled
barplot(table(WorldRecords$Distance), ylab='Frequency', main='Distribution of Distance Travelled')

#Plot the data for RoadORTrack
barplot(table(WorldRecords$roadORtrack), ylab='Frequency', main='Barplot of roadORtrack')

#Scatterplot the data for Distance travelled by Time taken
plot(WorldRecords$Distance, WorldRecords$Time, xlab='Distance Travelled', ylab='Time Taken', main='Distance travelled by time', xlim=c(0,60), ylim=c(0,100), pch=10, col='blue')
points(WorldRecords$Distance[WorldRecords$Place=='Christchurch'], WorldRecords$Time[WorldRecords$Place=='Christchurch'], pch=20, col='red')
