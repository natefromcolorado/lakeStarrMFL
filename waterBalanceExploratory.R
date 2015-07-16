# install.packages("ggplot2")
setwd(file.path("L:","Hydro Eval", "Projects","MFLs","SWUCA Lakes Re-evaluations Model Group","Starr","Water Balance"))
wbData <- read.csv(file = "lakeStarrWaterBudgetResults20150716.csv", header = TRUE)
wbData$date <- as.Date(wbData$date, format = "%m/%d/%Y")
lakeStarrPlot <- ggplot(wbData, aes(date,levelLakeStarrOrig)) +
  geom_point() +
  geom_point(aes(date, levelUFAHartFilled4Feet), color = "blue") +
  ylab("level") +
  xlab("date") +
  labs(color = "Legend text") +
  theme_bw()