# R-Programming-Assignment2
#  two functions are used to create object that stores a matrix and caches its inverse.
#The first function, makeVector creates a special "vector", which is really a list containing a function to
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse
# The second function calculates the inverse of the matrix created with the first function. However, it first checks 
# to see if the mean has already been calculated. If so, it gets the mean from the cache and  skips the computation. 
# Otherwise, it calculates the mean of the data and sets the value of the mean in the cache via the setmean function.
# here I list some results for one example
my_matrix <- makeCacheMatrix();
summary(my_matrix);
#>              Length Class  Mode    
#> setMatrix    1      -none- function
#> getMatrix    1      -none- function
#> cacheInverse 1      -none- function
#> getInverse   1      -none- function

# create a  matrix
my_matrix <- makeCacheMatrix(matrix(c(4,6,10,8),nrow = 2, ncol = 2));
my_matrix$get();


cacheSolve(my_matrix)
#           [,1]       [,2]
#[1,] -0.2857143  0.3571429
#[2,]  0.2142857 -0.1428571

 cacheSolve(my_matrix)
#getting cached data
           [,1]       [,2]
#[1,] -0.2857143  0.3571429
#[2,]  0.2142857 -0.1428571


# the 2nd time we run the function, we get the cached value
# my_matrix$getInv()

#           [,1]       [,2]
#[1,] -0.2857143  0.3571429
#[2,]  0.2142857 -0.1428571
