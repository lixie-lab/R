#exercise 1
install.packages('lubridate', dependencies=TRUE)
install.packages('tidyverse')
library(lubridate)
library(tidyverse)
lubridate::date()
lubridate::today()
lubridate::month(lubridate::today())


today()
month(x=today(), label=T, abbr=T)

d <- '2024-01-01'
d2 <- ymd(d)
class(d)
class(d2)
Sys.Date()
Sys.sleep(10)
