complete <- function(directory, id = 1:332) {
   ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
}

##complete.R

complete <- function(directory, id = 1:332) {
    
    cd ~Desktop/directory
    
    getwd()
    
    dat<-list.files(getwd())

    nobs<- data.frame()
    
    result<- data.frame()
    
    for(i in id){
        my_ids[[i]]<-read.csv(dat[[i]], header=TRUE)
        nobs[[i]]<- nrow(na.omit(my_ids[[i]]))
        str(nobs)
    } 
    
    output<- do.call(rbind, nobs)
    
    str(output)

    data.frame(cbind(id,output))
}

