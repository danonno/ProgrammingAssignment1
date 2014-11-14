pollutantmean <- function(directory, pollutant, id = 1:332) {
        files_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for (index in id) {
                dat <- rbind(dat, read.csv(files_list[index]))
        }
        mean(dat[[pollutant]], na.rm = TRUE)
}