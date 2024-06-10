
library(tidyverse)

my_copy_function <- function(x) {
  from_path <- paste0('1 R Hacks/weather/', x, "/",x,".csv")
  to_path <- '1 R Hacks/weather'
  file.copy(from = from_path, to = to_path)
  
}


#loop through
walk(.x = 2017:2020, .f = safely(my_copy_function ))
