corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!
}

c#corr

corr<- function(directory, threshold = 0){
    
    cd ~Desktop/directory
    
    getwd()
    
    dat<-list.files(getwd())
    
    cr<- numeric()

    complete_cases<- data.frame()
    
    for(i in 1:322){
        my_ids<-read.csv(dat[[i]])
        complete_cases<- my_ids[complete.cases(my_ids),]
        nobs<- c(nobs, nrow(complete_cases))
        if(nobs > threshold){
            cr<-c(cr, cor(complete_case$sulfate, complete_case$nitrate))
        }

        return(cr)
    }

}
