#批量合并csv文件的方式
#1.using for loop
getwd()
list.files()
files_full <- list.files(,full.names = TRUE)
dat <- data.frame()
for (i in 1:300) {
  dat <- rbind(dat, read.csv(files_full[i]))
  }

#2.using map funtion.
library(tidyverse)

data1<-list.files(path = "D:/R/test/",
           pattern="*.csv", 
           full.names = T) %>% 
  map_df(~read_csv(.))

