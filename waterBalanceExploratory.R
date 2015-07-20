# install.packages("ggplot2")
library(reshape2)
setwd(file.path("L:","Hydro Eval", "Projects","MFLs","SWUCA Lakes Re-evaluations Model Group","Starr","Water Balance"))
wbData <- read.csv(file = "lakeStarrWaterBudgetResults20150716.csv", header = TRUE)
wbData$date <- as.Date(wbData$date, format = "%m/%d/%Y")
meltdf <- melt(wbData, id = "date", na.rm = TRUE)

# variableName = "evapStarrUSGS_ftday"
# ylabel = "test"
# variablePlot(variableName, ylabel)

variablePlot <- function(variableName, ylabel){
  df <- meltdf[meltdf$variable == c(variableName),]
  ggplot(df, aes(x = date, y = value, colour = variable, group = variable, linetype = variable)) + 
    geom_line(size = 0.25) +
    ylab(ylabel) +
    theme(legend.position = "bottom",  
    axis.text = element_text(size = 8),
    axis.title.x = element_blank(),
    axis.title.y = element_text(size = 8),
    legend.text = element_text(size = 8),
    legend.title=element_blank())
}