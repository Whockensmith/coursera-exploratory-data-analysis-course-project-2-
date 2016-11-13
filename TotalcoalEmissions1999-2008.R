library(ggplot2) 
SCC <- readRDS("Source_Classification_Code.rds") 
## The summarySCC_PM25 file may take up to 2 minutes to read.
SummarySCC <- readRDS("summarySCC_PM25.rds")
## The merge takes what seems for ever, 5 minutes.
MrgSCCSummarySCC<- merge(SummarySCC, SCC, by="SCC") 
coal <- grepl("coal", MrgSCCSummarySCC$Short.Name, ignore.case=TRUE) 
subsetMrgSCCSummarySCC <- MrgSCCSummarySCC[coal,] 
TotalByCalYear <- aggregate(Emissions ~ year, subsetMrgSCCSummarySCC, sum) 
png("TotalcoalEmissions1999-2008.png", width=800, height=600)
graph <- ggplot(TotalByCalYear, aes(factor(year), Emissions)) 
graph <- graph + geom_bar(stat="identity") + xlab("Calendar Year") + ylab(expression('Total PM'[2.5]*" Emissions")) + ggtitle('Total Coal Source Emissions from 1999 to 2008') + geom_bar(stat="identity", fill="#FF9999", colour="black")
print(graph) 
dev.off() 
