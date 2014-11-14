pollutantmean2 <- function(directory, pollutant, id = 1:332) {
        print(directory)
        print(pollutant)
        files_list <- list.files(directory, full.names=TRUE)
        dano <- data.frame()
        dano <- rbind(dano, read.csv("specdata/001.csv"))
        dano <- rbind(dano, read.csv("specdata/003.csv"))
}