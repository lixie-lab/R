library(R.utils)
library(tidyverse)

myzipfile <- list.files(path = 'Zip files/', pattern = 'gz', full.names = T)

walk(.x = myzipfile, .f = safely(gunzip), remove = F)
