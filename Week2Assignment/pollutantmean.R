Ryapollutantmean <- function(directory, pollutant, id = 1:332) {
  
  setwd("C:/Users/Ryan/ProJECT/R/Week2Assignment")
  
    ###STEP 1 Loading of DATA based on Directory Folder
  filenamelist <-list.files(directory,full.names = TRUE)
  

  
#   ###Using alapply and read.csv to apply all data into pollution data
  pollutiondatatemp <- lapply(filenamelist, read.csv,header=T)
  
   ###Data is loaded in a list, i will combine them into 1 table
  pollutiondata <-ldply(pollutiondatatemp, rbind)
#     
  ## BASED ON THE DATA FRAME ONLY SELECT THOSE ID I AM INTERESTED IN
  
  cALCULATIONDATA <-pollutiondata[pollutiondata$ID %in% id,]

  

  #calculation of mean based on the selected data only
  

  mean(cALCULATIONDATA[[pollutant]], na.rm=TRUE)
  
  
 
}
  


  
