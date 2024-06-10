unlink(x = '1 R Hacks/weather' , recursive = T)
dir.create(path = '1 R Hacks/weather')

path_function <- function(x){
  create_path <- paste0('1 R Hacks/weather/', x)
  dir.create(path = create_path)
}

2013:2016 %>% walk(.x = ., .f = path_function)

read_write_lx <- function(x){
  read_csv(file =  paste0('Zip files/Excersise Data/',x,'.csv'),
           col_names = F, n_max = 100000) %>%
    write_csv(x = ., path = paste0('1 R Hacks/weather/',x,'/',x,'.csv'))
}

2013:2016 %>% walk(.x = ., .f = read_write_lx)
