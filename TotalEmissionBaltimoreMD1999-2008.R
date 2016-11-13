## Loads ggplot2 for graphing
library(ggplot2)
SCC <- readRDS("Source_Classification_Code.rds") 
## The summarySCC_PM25 file may take up to 2 minutes to read.
SummarySCC <- readRDS("summarySCC_PM25.rds") 
## Creates a subset of the SummarySCC_PM25 data set (Baltimore MD).
subsetSummarySCC  <- SummarySCC[SummarySCC$fips=="24510", ] 
CalYearTotalsbyType <- aggregate(Emissions ~ year + type, subsetSummarySCC  , sum) 
## Creates the *.png picture file in your working directory. Can not view it untill the last line (dev.off()). 
png("TotalEmissionBaltimoreMD1999-2008.png", width=800, height=600)
## Starts the graph shell
graph <- ggplot(CalYearTotalsbyType, aes(year, Emissions, color = type))
## Fills in the graph with lines, labels, and ledgens.  
graph <- graph + geom_line() + xlab("Calender") + ylab(expression('Total PM'[2.5]*" Emissions")) + ggtitle('Total Emissions in Baltimore MD from 1999 to 2008')
## Completes graph
print(graph)
## closes the output to the *.png file
dev.off() 
