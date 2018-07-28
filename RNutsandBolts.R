x <- 5
x

print(x)

x <-1:20      ##1 to 20 
x <-c(0.5,0.6)  ##numerical
x <-c(TRUE,FALSE) ##logical
x <-c(T,F)        ##logical again
x <- 9:29         ##integer
x <-c(1+0i,2+4i)  ##complex

x <-vector("numeric",length = 10)

x <- 0:6  ##mixed
class(x)

as.numeric(x)
as.logical(x)
as.character(x)

x <- c("a","b", "c")

as.numeric(x)
as.logical(x)
as.complex(x)

x <- list(1,"a",TRUE,1+4i) ##list
x

m <- matrix(nrow=2, ncol=3)
m
dim(m)  #dimension of matrix m
attributes(m) #attrib. of matrix m

m <- matrix(1:6, nrow=2, ncol=3)  ##values onto matrix
m

m<- 1:10    ##creating matrix 2
m

dim(m) <- c(2,5)
m

x <- 1:3    ##column and row binding
y <- 10:12

cbind(x,y)

rbind(x,y)


x <- factor(c("yes","yes","no","yes","no"))
x

table(x)
x

unclass(x)

x <- factor(c("yes","yes","no","yes","no"), ##order of levels
      levels = c("yes","no"))
x

x <- c(1,2,NA,10,3)   #NA and NaN

is.na(x)
is.nan(x)

x <- c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

x <- data.frame(foo = 1:4, bar = c(T,T,F,F)) ##Data Frames (Ayaw gumana ng inf. symbol)
x

x <- 1:3        ##Names
names(x)

names(x) <- c("foo","bar","norf")
x

x <- list (a=1, b=2, c=3)
x

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m

data <- read.table("foo.txt") #read table

initial <- read.table("datatable.txt", nrows = 100)
classes <- sapply(initial,class)
tabAll <- read.table("datable.txt", onClasses=classes)

y <- data.frame(a = 1, b="a") #dputting
dput(y)

structure(list(a=1,b=structure(1L, .Label = "a", class = "factor")), .Names = c("a", "b"), row.names = c(NA, -1L), class = "data.frame")

dput (y, file = "y.R")
new.y <- dget ("y.R")
new.y

x <- "foo"      ##dumping 
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")
y


str(file)   ##File Connections

con <-file('foo.txt', "r")    ##Connections
data <- read.csv(con)
close(con)

data <-read.csv("foo.txt")

con <- gzfile("words.gz")
x <- readLines(con,10)
x


con <- url("https://www.tip.edu.ph","r")  ##reading lines from web
x<- readLines(con)
head(x)

x <- c("a","b","c","c","d","a")   ##SUBSETTING
x[1]
x[2]
x[1:4]
x[x>"a"]

u <- x >"a"
u
x[u]

x <- list(foo = 1:4, bar = 0.60)    ##SUBSETTING LISTS
x[1]


x[[1]]  

x$bar

x[["bar"]]

x["bar"]

x <- list(foo = 1:4, bar = 0.60, baz = "hello")
x[c(1,3)]

x <- list(foo = 1:4, bar = 0.60, baz = "hello")
name <-"foo"

x[[name]] ##computed index

x$name  ##elem name doesnt exist

x$foo  ##elem foo doesnt exist

x <- list(a= list(10,12,14), b= c(3.14,2.81)) ##SUBSETTING NESTED ELEMENTS OF A LIST
x [[c(1,3)]]

x[[1]][[3]]

x[[c(2,1)]]


x <- matrix(1:6,2,3)  ##SUBSETTING A MATRIX
x[1,2]

x[2,1]

x[1, ]
x[,2]

x<- matrix(1:6,2,3)
x[1,2]

x[1,2,drop = FALSE]

x <- list(aardvark = 1:5) ##PARTIAL MATCHING
x$a

x[["a"]]

x[["a", exact = FALSE]]

x <- c(1,2,NA,4,NA,5)   ##REMOVING NA VALUES
bad <- is.na(x)
x[!bad]

x <- c(1,2,NA,4,NA,5)
y <- c("a","b",NA,"d",NA,"f")

good <- complete.cases (x,y)
good

x[good]

y[good]

x <- 1:4; y<- 6:9   ##VECTORIZED OPERATIONS
x+y

x>2

x>=2

y ==8

x * y

x / y

x <- matrix(1:4,2,2); y<- matrix(rep(10,4),2,2)
x * y    ##element wise multiplication


x / y

x %*% y ##true matrix multiplication










