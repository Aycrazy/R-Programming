#Best

best<- function(state, outcome){
    
    setwd("~/HospitalData")
    
    careMeasures <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    careMeasures[,11]<-as.numeric(careMeasures[,11])
    careMeasures[,17]<-as.numeric(careMeasures[,17])
    careMeasures[,23]<-as.numeric(careMeasures[,23])
    outcomeMeasures<-c("heart attack","heart failure","pneumonia")
   
    
    if(!state %in% careMeasures$State){
        stop("Invalid state")
    }
    else if(!outcome %in% outcomeMeasures){
        stop("Invalid outcome")
    }
    else{
    
        #rename necessary columns--> type of health complication
    
        stateChoice<-subset(careMeasures,careMeasures$State == state,)
        lowDeath<- stateChoice$outcome
        min<- min(stateChoice$outcome, na.rm=T)
        lowDeath_index<- which(lowDeath == min)
        hosp_name<-stateChoice[lowDeath_index, 2]

        if(outcome == "heart attack") {
            hosp_name <- helper(data, 11, state)
        } else if(outcome == "heart failure") {
            hosp_name <- helper(data, 17, state)
        } else {
            hosp_name <- helper(data, 23, state)
        }
        result <- hosp_name
        return(result)
    }
}

