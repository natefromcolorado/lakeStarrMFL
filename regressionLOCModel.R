locModel <- read.csv(file = "L:/Hydro Eval/Projects/MFLs/SWUCA Lakes Re-evaluations Model Group/Starr/Rainfall Model/LOC_model_Starr_final.csv")
locModel$date <- as.Date(locModel$date, format = "%m/%d/%Y")
