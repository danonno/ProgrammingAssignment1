complete <- function(directory, id = 1:332) {
        
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        ##       
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        ##        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        fileNames <- list.files(directory, full.names = TRUE)
        
        completedat <- data.frame()
        for (index in id) {
                filedat <- data.frame()
                idval <- index
                filedat <- rbind(filedat, read.csv(fileNames[index]))
                cc <- (filedat[complete.cases(filedat),])
                newrow <- data.frame(id=idval, nobs=(nrow(cc)))
                completedat <- rbind(completedat, newrow)
        }
        print(completedat)
}