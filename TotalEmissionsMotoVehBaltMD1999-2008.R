library(ggplot2) 
SCC <- readRDS("Source_Classification_Code.rds") 
## The summarySCC_PM25 file may take up to 2 minutes to read.
SummarySCC <- readRDS("summarySCC_PM25.rds") 
MrgSCCSummarySCC<- merge(SummarySCC, SCC, by="SCC") 
subsetSummarySCC <- SummarySCC[SummarySCC$fips=="24510" & SummarySCC$type=="ON-ROAD",  ] 
TotalByCalYear <- aggregate(Emissions ~ year, subsetSummarySCC, sum) 
png("TotalEmissionsMotoVehBaltMD1999-2008.png", width=840, height=480) 
graph <- ggplot(TotalByCalYear, aes(factor(year), Emissions)) 
graph <- graph + geom_bar(stat="identity", fill="#FF9999", colour="black") + xlab("Calander Year") + ylab(expression('Total PM'[2.5]*" Emissions")) + ggtitle('Total Emissions From On-Road Motor Vehicles in Baltimore MD from 1999 to 2008') 
print(graph) 
dev.off() 
