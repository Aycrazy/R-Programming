
pollutantmean<- function(directory,pollutant, id=1:332){

  data<- list.files(directory,full.names=TRUE)

    mydata<- data.frame()

    for(i in id){
      mydata<-rbind(mydata,read.csv(data[i]))
    }

  result<- mean(mydata$pollutant, na.rm=TRUE)
  
  result
  
  }
  
