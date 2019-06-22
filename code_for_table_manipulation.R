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
#If there is a file that you want to exclude then
list.files(path = "location_of/data/folder_you_want/",
           pattern="*.csv", 
           full.names = T) %>% 
  .[ !grepl("data/folder/name_of_file_to_remove.csv",  .) ] %>%
  map_df(~read_csv(.))

#using apply
setwd("D:/R/t/")
filenames <- list.files(full.names=TRUE)
All <- lapply(filenames,function(i){
  read.csv(i, header=T)
})
df <- do.call(rbind.data.frame, All)

#3.







