
summary <- readRDS("E:\\RWorkplace\\ExploratorydataAnalysisAssignment2\\summarySCC_PM25.rds")
SCC <- readRDS("E:\\RWorkplace\\ExploratorydataAnalysisAssignment2\\Source_Classification_Code.rds")
summary_sampling <- summary[sample(nrow(NEI), size=2000, replace=F), ]
Emissions <- aggregate(summary[, 'Emissions'], by=list(summary$year), FUN=sum)
Emissions$PM <- round(Emissions[,2]/1000,2)
png(filename='E:\\RWorkplace\\ExploratorydataAnalysisAssignment2\\plot1.png')

barplot(Emissions$PM, names.arg=Emissions$Group.1, 
        main=expression('Emission of PM'),
        xlab='Year', ylab=expression(paste('PM2.5', ' in Kilotons')))

dev.off()