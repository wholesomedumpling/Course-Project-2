## Have total emissions from PM2.5 decreased in the United States 
## from 1999 to 2008? Using the base plotting system, make a plot showing the 
## total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#summarise the data for plotting by using aggregate
library(dplyr)
sumNEI <- aggregate(NEI$Emissions, by=list(year=NEI$year),FUN=sum)

plot(sumNEI, xlab = "Year", ylab = "Total Emissions (tons)", main = "Total Emissions for the US from 1999 
     to 2008", pch=8)
