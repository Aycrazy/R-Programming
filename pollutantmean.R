##pollutantmean.R

pollutantmean<- function(directory,pollutant="sulfate", id=1:332){
    
    cd ~Desktop/directory
    
    getwd()
    
    dat<-list.files(getwd())
    
    dat
    
    mydata<- data.frame()
    
    for(i in id){
        mydata<-rbind(mydata,read.csv(dat[i], head=TRUE))
    }
    
    mydata
        
    result<- mean(mydata[[pollutant]], na.rm=TRUE)
  
    result

}

