library(ggplot2) 
SCC <- readRDS("Source_Classification_Code.rds") 
## The summarySCC_PM25 file may take up to 2 minutes to read.
SummarySCC <- readRDS("summarySCC_PM25.rds") 
MrgSCCSummarySCC<- merge(SummarySCC, SCC, by="SCC") 
subsetSummarySCC <- SummarySCC[(SummarySCC$fips=="24510" | SummarySCC$fips=="06037") & SummarySCC$type=="ON-ROAD",  ]
TotalByCalYearAndFips <- aggregate(Emissions ~ year + fips, subsetSummarySCC, sum) 
TotalByCalYearAndFips$fips[TotalByCalYearAndFips$fips=="24510"] <- "Baltimore, MD" 
TotalByCalYearAndFips$fips[TotalByCalYearAndFips$fips=="06037"] <- "Los Angeles, CA"
png("TotalEmissionsMotoVehBaltMDvsLosAng1999-2008.png", width=1040, height=480)  
graph <- ggplot(TotalByCalYearAndFips, aes(factor(year), Emissions))  
graph <- graph + facet_grid(. ~ fips)  
graph <- graph + geom_bar(stat="identity", fill="#FF9999", colour="black")  + xlab("Calendar Year") + ylab(expression('Total PM'[2.5]*" Emissions")) + ggtitle('Total Emissions From On-Road Motor Vehicles in Baltimore MD vs Los Angeles CA 1999-2008')  
print(graph)  
dev.off() 
