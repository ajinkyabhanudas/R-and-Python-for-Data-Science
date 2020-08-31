## separately execute each block of code in RStudio
# use source
my_function <- function(){
  x <- rnorm(100)
  mean(x)
}

my_sec_function <- function(x){
  print(x)
  print(rnorm(2))
  print(x + rnorm(2))
  
}

vec1 <- c(1:10) #check
print(vec1)
vector("numeric", 10)
dim(vec1)

matrix(1:10, nrow = 5, ncol = 5)
dim(matrix(5,6))
attributes(matrix(1:10, nrow = 5, ncol = 5))
mat1 <- matrix(1:10, nrow = 5, ncol = 5)
mat1[1,1]
dim(vec1)<-c(2,6)
vec1
cbind(1:5,6:10)

factor(c('y','n','n','n')) #performs categorical encoding in lexicographic order unless specified
table(factor(c('y','n','n','n'))) #displays the count under each category 
unclass(factor(c('y','n','n','n'))) #displays the equivalent numerical conversion
attributes(factor(c('y','n','n','n')))

#is.na(_:_) catches both NA and NaN, is.nan(_:_) catches on NaNs.NA has classes (i.e. numerical, integer, etc)
#NaN is of a numerical type so comes under NA, but the inverse case is not true.
