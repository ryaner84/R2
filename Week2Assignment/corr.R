corr <- function(directory, threshold =0) {
  
  ###STEP 1 Loading of DATA based on Directory Folder
  filenamelist <-list.files(directory,full.names = TRUE)
  
  #   ###Using alapply and read.csv to apply all data into pollution data
  pollutiondatatemp <- lapply(filenamelist, read.csv,header=T)
  
  ###Data is loaded in a list, i will combine them into 1 table
  pollutiondata <-ldply(pollutiondatatemp, rbind)
  
  
  ##keeping only data that is complete
  
 COMPLETEDATA<-na.omit(pollutiondata)
  
  ##counting based on ID
 IDGROUP <-sqldf('SELECT count(*), ID from COMPLETEDATA Group BY ID')
 IDLIMIT <-IDGROUP[(IDGROUP$`count(*)`> threshold),]
  
 return(IDLIMIT)
  ###selecting only those with complete cases more than certain count
  
  
  
  
  
}