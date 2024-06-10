install.packages("R.utils")
library(R.utils)

list.files(path = 'Zip files/')
list.files(path = 'Zip files/', pattern = 'gz')

myzipfile <- list.files(path = 'Zip files/', pattern = 'gz', full.name =T)
myzipfile[1]

#R.utils::gunzip(myzipfile[1])

R.utils::gunzip(myzipfile[1], remove=False)

myzipfile

for (i in myzipfile) {
  print(i)
  gunzip(i, remove=F)
}
