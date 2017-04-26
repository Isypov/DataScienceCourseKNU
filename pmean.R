```r
pmean <- function(directory, pollutant, id=1:332){
  filenames <- sprintf("%03d.csv", id)
  filenames <- file.path(directory, filenames)
  ldf <- lapply(filenames, read.csv)
    big_frame <- do.call("rbind", ldf)
    mean(big_frame[[pollutant]], na.rm = TRUE)
}

complete <- function(directory, id){
    filenames <- sprintf("%03d.csv", id)
    filenames <- file.path(directory, filenames)
    ldf <- lapply(filenames, read.csv)
    cc <- lapply(ldf, complete.cases)
    cc_sum <- lapply(cc, sum)
    data.frame(id = id, nobs = I(cc_sum))
}

corr <- function(directory, threshold=0){
    filenames <- list.files(directory, pattern="*.csv", full.names=TRUE)
    ldf <- lapply(filenames, read.csv)
    res <- c()
    for (df in ldf){
      if (sum(complete.cases(df)) > threshold){
        res<-c(res, cor(df[['sulfate']], df[['nitrate']], use='pairwise.complete.obs'))
    }
  }
  return(res)
}
```
