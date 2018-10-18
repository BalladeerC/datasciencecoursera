pollutantmean <- function(directory,pollutant,id=1:332){
  files_list <- list.files("specdata", full.names=TRUE)
  frame <- data.frame()
  for(j in id){
    frame <- rbind(frame,read.csv(files_list[j]))
  }
  mean(frame[,pollutant],na.rm=TRUE)
}