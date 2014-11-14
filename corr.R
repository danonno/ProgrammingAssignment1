corr <- function(directory, threshold = 0) {
        
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        
        fileNames <- list.files(path=directory, full.names = TRUE, pattern="*.csv")
        dat <- lapply(fileNames, read.csv)
        completedat <- complete(directory)
        thres <- completedat[completedat$nobs>threshold,]
        
        voc <- sapply(dat[thres$id], function(x) 
                cor(x$nitrate, x$sulfate, use='complete.obs'))
        return (voc)
}