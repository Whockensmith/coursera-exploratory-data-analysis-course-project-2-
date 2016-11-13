# coursera-exploratory-data-analysis-course-project-2-
Exploring the National Emissions Inventory database to see what it says about fine particulate matter pollution in the United states over the 10-year period 1999–2008; focusing on Baltimore MD.
# Questions
## You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing    the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

# Answers
1. Yes.  The total emissions from PM2.5 decreased from 73329667 in 1999 to 34642058 in 2008.
   https://github.com/Whockensmith/coursera-exploratory-data-analysis-course-project-2-/blob/master/TotalPM25Emissions.png
2. Yes, the emissions have decreased in Baltimore from 3274.18 in 1999 to 1862.2815 in 2008.
  https://github.com/Whockensmith/coursera-exploratory-data-analysis-course-project-2-/blob/master/TotalPM25EmissionBaltimoreMD.png
3. Betwween 1999 and 2008 NON-Road, On-Road, and NON-Point has decreased.  Point has increased but is in a siqnificant decline.  One more year of data is needed to validate a continuing decline.
  https://github.com/Whockensmith/coursera-exploratory-data-analysis-course-project-2-/blob/master/TotalEmissionBaltimoreMD1999-2008.png
4. Between 1999 and 2005 little change had happened.  But by 2008 the emissions have decreased by almost 50% since 1999.
  https://github.com/Whockensmith/coursera-exploratory-data-analysis-course-project-2-/blob/master/TotalcoalEmissions1999-2008.png
5. Between 1999 and 2008 emissions from vehichles (on road) in Baltimore MD have decreased by approximatly 75%.
  https://github.com/Whockensmith/coursera-exploratory-data-analysis-course-project-2-/blob/master/TotalcoalEmissions1999-2008.png
6. Baltimore has seen a greater reduction between 1999 and 2008 with a steady decrease each year.  LA has had a greater swing in change, but this change has a steady increase from 1999 to 2005.  The drop from 2005 to 2008 was higher then Baltimore's 1999 to 2008 drop.  
  https://github.com/Whockensmith/coursera-exploratory-data-analysis-course-project-2-/blob/master/TotalEmissionsMotoVehBaltMDvsLosAng1999-2008.png
