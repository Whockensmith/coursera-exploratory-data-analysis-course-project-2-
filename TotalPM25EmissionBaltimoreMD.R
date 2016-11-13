SCC <- readRDS("Source_Classification_Code.rds")
## The summarySCC_PM25 file may take up to 2 minutes to read.
## Creates a subset of the SummarySCC_PM25 data set (Baltimore MD).
subsetSummarySCC  <- SummarySCC[SummarySCC$fips=="24510", ]
CalYearTotals  <- aggregate(Emissions ~ year, subsetSummarySCC, sum)
## Creates the *.png picture file in your working directory. Can not view it untill the last line (dev.off()).
png('TotlaPM25EmissionBaltimoreMD.png') 
## Fills in the *.png with a graph. If the above png(****) command is not used it will draw the graph to the R-studio console.
barplot(height=CalYearTotals$Emissions, names.arg=CalYearTotals$year, xlab="Calendar Year", ylab=expression('Total PM'[2.5]*' Emissions'),main=expression('Total PM'[2.5]*' Emissions for Baltimore City, MD by Year'))
## The following 4 lines create variables for lables on the bars.
lbl1999<- CalYearTotals$Emissions[CalYearTotals$year==1999]
lbl2002<- CalYearTotals$Emissions[CalYearTotals$year==2002]
lbl2005<- CalYearTotals$Emissions[CalYearTotals$year==2005]
lbl2008<- CalYearTotals$Emissions[CalYearTotals$year==2008]
## The following 4 lines place lables on the bars.
text(.75, lbl1999-200, round(lbl1999,4),col="red")
text(2, lbl2002-200, round(lbl2002,4),col="red")
text(3.2, lbl2005-200, round(lbl2005,4),col="red")
text(4.25, lbl2008-200, round(lbl2008,4),col="red")
## closes the output to the *.png file 
dev.off()
