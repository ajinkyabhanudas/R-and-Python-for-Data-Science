## separately execute each block of code in RStudio
# use source("file name") to have independently accessible methods/functions in the R console
#e.g.
mean_random_num <- function(){
  x <- rnorm(100) #rnorm produces a vector of 2 random numbers between -1 and 1
  mean(x)
}

add_noise_to_vect <- function(x){
  print(x)
  print(rnorm(x)) 
  print(x + rnorm(x))
  
}
## approaches to declare vectors
vec0 <- 5:10 #not that the lower and upper bound both are included i.e. vector has a total of 6 elements
print(vec0)
vec1 <- c(1:10) #c is for concatenation c is like a tuple creation
## be aware of vector coercion if you use different class objects even if they are not compatible.
print(vec1)
vector("numeric", 10) # this method takes in type of data, and the length of the vector
dim(vec1) # works when there are matrix dimensions, will return NULL otherwise

class(vec1) # integer
as.character(vec1) # coerces vec to character string

list0 <- list('1',2) # allows having elements with different data types
print(list0)



# matrices are special vectors i.e. n*m dim vectors or vectors with the dimension attribut to them
#1.
matrix(1:10, nrow = 5, ncol = 5) # takes in the data, #rows, #cols, the matrix is populated by the column not row
dim(matrix(5,6))#this would return the dimension of the matrix 
attributes(matrix(1:10, nrow = 5, ncol = 5))#this will repeat the elements if the datansize doesn't match the matrix size
mat1 <- matrix(1:10, nrow = 5, ncol = 5)
mat1[1,1] #this is how you can access elements in row, col format
#2.
cbind(1:5,6:10) #binds/concatenates columns
rbind(1:5,6:10) #binds/concatenates rows
#3.
dim(vec1)<-c(2,5) #size inconsistency will not be accounted for and an error will be thrown if matrix size != total length of elements
vec1


#factor datatype is similar to get_dummies() in python but does numerical and not 1-hot encoding
factor(c('y','n','n','n')) #performs categorical encoding in lexicographic order unless specified
table(factor(c('y','n','n','n'))) #displays the count under each category 
unclass(factor(c('y','n','n','n'))) #displays the equivalent numerical conversion
attributes(factor(c('y','n','n','n'))) 



#is.na(_:_) catches both NA and NaN, is.nan(_:_) catches on NaNs.NA has classes (i.e. numerical, integer, etc)
#NaN is of a numerical type so comes under NA, but the inverse case is not true.
#E.g.
nan_vec <- c(1,2, NaN, NA)
is.na(nan_vec)
is.nan(nan_vec)

## dataframe or tabular data
df <- data.frame(col1 = 1:2, col2 = c('1','2'))
df
c(nrow(df),ncol(df)) # view the number of rows and columns
data.matrix(df) #convert the dataframe to a matrix
attributes(df)
 c(names(df), row.names(df))
