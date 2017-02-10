library(tidyverse)

#####Task 3######

#* 2.2.2.3: What does this code do?
#Reversing the levels reverses the order in which they are mapped in R, so they would plot in 
#the "reverse" order but the data still remains in the a-z order
#Reversing the data changes the order in which it occurs in the vector, but does not change the 
#order in which the data would plot

#2.3.1.1: What does `dim` return when applied to a vector, **and why**?
#Tells the dimensions of an item
dim(data.frame(x=c(1,2,3),
               y=c("a","b","c"))) #3 by 2
#2.4.5.1: What attributes does a data frame possess?
str(data.frame(x=c(1,2,3),
                y=c("a","b","c"))) # The attr of this data shown by str give the dimensions, names, etc of the
#data specifying some aspect of the data, that does not inherantly change the data itself, although dimensions
#could be changing that
x <- c("a","b","c")
attr(x,"names") <- c(seq(1,3,1))
# 2.4.5.2: What does `as.matrix()` do when applied to a data frame with columns of different types?
x <- data.frame(x=c(1,2,3),
                y=c("a","b","c"))
as.matrix(x)
#changes the data to a matrix class object, and differing column types will convert all to characters if there
#are any characters 
# 2.4.5.3: Can you have a data frame with 0 rows? What about 0 columns?
data.frame(x=c(),
           y=c())
#Yes

#########Subsetting##########
a <- read.csv("./data/2016_10_11_plate_reader.csv",stringsAsFactors = F,skip = 33,header = T)
#created a data.frame
str(a) #3 differnt class objects, charactersm, numeric (with decimals), integers
b <- read_csv("./data/2016_10_11_plate_reader.csv",skip = 33) #creates list
str(b)

data("mtcars")
#ncol vs length are the same, 
ncol(mtcars)
length(mtcars)
#ncol is diff, number of columns
ncol (mtcars)

a <- mtcars %>%
  filter(wt >4 & mtcars$wt >4)
b <- mtcars[,c("mpg","wt")]
mmean <- median(mtcars$mpg)
which(mtcars$mpg == mmean, arr.ind = TRUE)
filter(mtcars, mpg==median(mtcars$mpg))

#fix stuff
mtcars[mtcars$cyl ==4,]
mtcars[-c(1:4),]
mtcars[mtcars$cyl >=5,]
mtcars[mtcars$cyl ==4|mtcars$cyl==6,]



