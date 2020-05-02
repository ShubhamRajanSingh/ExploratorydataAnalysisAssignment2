summary <- readRDS("E:\\RWorkplace\\ExploratorydataAnalysisAssignment2\\summarySCC_PM25.rds")
SCC <- readRDS("E:\\RWorkplace\\ExploratorydataAnalysisAssignment2\\Source_Classification_Code.rds")


summary_sampling <- summary[sample(nrow(NEI), size=5000, replace=F), ]

# Subset data and append two years in one data frame
Z <- subset(summary, fips=='24510')



# Generate the graph in the same directory as the source code
png(filename='E:\\RWorkplace\\ExploratorydataAnalysisAssignment2\\plot2.png')

barplot(tapply(X=Z$Emissions, INDEX=Z$year, FUN=sum), 
        main='Emission in Baltimore City', 
        xlab='Year', ylab=expression('PM 2.5'))

dev.off()