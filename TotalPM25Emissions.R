SCC <- readRDS("Source_Classification_Code.rds")
## The summarySCC_PM25 file may take up to 2 minutes to read.
SummarySCC <- readRDS("summarySCC_PM25.rds")
## The next command will take just as long as the summarySCC_PM25 read, it has to read the data frame created from the summarySCC_PM25.
CalYearTotals <- aggregate(Emissions ~ year, SummarySCC, sum)
## Divided the PM25 totals by 1000.  This reduced the scale by 1000 so the vertical axis would not show numbers like (1e+06).
MScale<-CalYearTotals$Emissions/1000
## Creates the *.png picture file in your working directory. Can not view it untill the last line (dev.off()).
png('TotalPM25Emissions.png')
## Fills in the *.png with a graph. If the above png(****) command is not used it will draw the graph to the R-studio console.
barplot(height=MScale, names.arg=CalYearTotals$year, xlab="Calendar Year", ylab=expression('Total PM'[2.5]*' Emissions    (x1000)'),main=expression('Total PM'[2.5]*' Emissions By Calendar Year'))
## The following 4 lines create variables for lables on the bars.
lbl1999<- CalYearTotals$Emissions[CalYearTotals$year==1999]/1000
lbl2002<- CalYearTotals$Emissions[CalYearTotals$year==2002]/1000
lbl2005<- CalYearTotals$Emissions[CalYearTotals$year==2005]/1000
lbl2008<- CalYearTotals$Emissions[CalYearTotals$year==2008]/1000
## The following 8 lines place lables on the bars.
text(.75, lbl1999-200, round(lbl1999,4),col="red")
text(.75, lbl1999-600, "x 1000",col="red")
text(2, lbl2002-200, round(lbl2002,4),col="red")
text(2, lbl2002-600, "x 1000",col="red")
text(3.2, lbl2005-200, round(lbl2005,4),col="red")
text(3.2, lbl2005-600, "x 1000",col="red")
text(4.25, lbl2008-200, round(lbl2008,4),col="red")
text(4.25, lbl2008-600, "x 1000",col="red")
## closes the output to the *.png file 
dev.off()
