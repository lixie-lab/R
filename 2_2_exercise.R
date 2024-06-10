library(tidyverse)
library(R.utils)

myzipfile2 <- list.files(path = 'Zip files/Excersise Data/', pattern = 'gz', full.names = T)

#unzip files using for loop
for (i in myzipfile2) {
  print(i)
  gunzip(i, remove = F)
}

#remove the unzipped csv files

rm_files <- list.files(path = 'Zip files/Excersise Data/', pattern = 'csv$', full.names = T)
walk(.x=rm_files, .f=file.remove)

#using walk function to unzip
walk(.x = myzipfile2, .f = safely(gunzip), remove = F)
