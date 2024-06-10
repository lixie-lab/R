#file.remove('1 R Hacks/weather')
unlink(x = '1 R Hacks/weather' , recursive = T)


dir.create(path = '1 R Hacks/weather')


x <- 2017
paste0('1 R Hacks/weather/',x)
rm(x)


path_func <- function(x) {
  create_path <- paste0('1 R Hacks/weather/',x)
  dir.create(path = create_path)
}

#using pipeline
2017:2020 %>% walk(.x =., .f=path_func)


#read write function
read_n_write <- function(x) {
  read_csv(file = paste0('Zip files/',x,'.csv'), col_names =  F, n_max =  200000) %>%
    write_csv(x = ., path = paste0('1 R Hacks/weather/',x,'/',x,'.csv'))
  
}

2017:2020 %>% walk(.x=., .f=read_n_write)
