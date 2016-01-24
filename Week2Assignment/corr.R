      corr <- function(directory,threshold = 0) {
        setwd("C:/Users/Ryan/ProJECT/R/Week2Assignment")
        
            df = data.frame()
            corr_vecctor <- c()
                
            
            
for( fil in dir(directory)){
    
      file = paste(directory,fil,sep = '/')
      df1  = read.csv(file)
          COMPLETEcdf  <- df1[complete.cases(df1),]
          ROWSCOUNT <- nrow(COMPLETEcdf)
    
    if (ROWSCOUNT > threshold){
      cr <- cor(COMPLETEcdf[,'sulfate'],COMPLETEcdf[,'nitrate'])
      corr_vecctor <- c(corr_vecctor,cr)
    }
    
  }
  return(corr_vecctor)
}