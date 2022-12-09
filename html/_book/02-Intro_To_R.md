# Introduction to R



For any noted issues in this chapter (especially errors), please contact: <a href="mailto:john.f.king1.mil@mail.mil">John King</a> or <a href="jacob.s.sherman2.civ@mail.mil">Jacob Sherman</a>.

R is a programming language and free software environment widely used for statistical computing and graphics. R may be launched from Windows by selecting the Start menu, opening the R folder, and choosing R x64 3.6.0. This starts an R session and opens an R Console where you may interact with R via one-line commands. Many R users prefer a more full-featured environment to interact with R, and for this course of instruction we will use the popular R Studio Interactive Development Environment (IDE).

R Studio may be launched via Windows start menu, but there are also cloud-based options such as Amazon Web Services and MatrixDS. If you are launching R Studio for the first time, when it starts, you should see three panels. On the left is the console, and on the right are two panels with several tabs each that display charts, allow for file browsing, etc. To start a new R script, go to File >> New File >> R Script. This will open a fourth panel on the left that is essentially just a text editor where you write R code. For an R Studio IDE cheat sheet, click <a href = "https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf"> here </a>. To interact with R in R Studio, simply type a command in the text editor panel, place the cursor anywhere on the command line, and press CTRL+ENTER (no need to select the text as in SQL). 

## Introduction to R - Part I

For this course, we will use the online tutorial <a href = "https://r4ds.had.co.nz"> R for Data Science </a> to develop your R skills. The tutorial assumes that users have no knowledge of R or any other programming language. When completing these exercises, write your code in an R Markdown file. Generally, one code block per question will be appropriate. You can either start your own R markdown file from R Studio, or you can download <a href = "/Chapter1/Chapter1_ProblemSet.Rmd">Introduction to R Problem Set</a> to get started.

### Objectives

By the end of the Introduction to R - Part I, you will have:

+ A working version of R Studio.
+ Installed the `tidyverse` package.
+ An understanding of basic operations in R.
+ An understanding of the primary variable types and data structures used in R.

### Task 1 - Read Chapter 1 and Install Tidyverse

Click on the link to *R for Data Science* and read Chapter 1. Be sure to follow the instructions on installing the `tidyverse` package. After you finished reading Chapter 1, return here and continue.

### Basic Operations

R can be used as a fancy calculator, and mathematical operations are as you would expect. Run each of the commands below in your own R script. Note that you can add comments to your code with #.


```r
1 + 2          # Comments can be at the end of a line
```

```
## [1] 3
```

```r
1 - 2
```

```
## [1] -1
```

```r
# Or they can be on their own line
1 * 2
```

```
## [1] 2
```

```r
1 / 2
```

```
## [1] 0.5
```

```r
2^2            # exponent
```

```
## [1] 4
```

```r
5 %% 2         # division remainder
```

```
## [1] 1
```

```r
5 %/% 2        # division quotient
```

```
## [1] 2
```

```r
sqrt(2)
```

```
## [1] 1.414214
```

```r
exp(2)
```

```
## [1] 7.389056
```

```r
log(2)
```

```
## [1] 0.6931472
```

```r
sin(pi/6)      # Note that trig functions assume angles are in radians.
```

```
## [1] 0.5
```

```r
factorial(5)
```

```
## [1] 120
```

```r
choose(10, 2)
```

```
## [1] 45
```

```r
# order of operations is as you'd expect
1 + 2/3
```

```
## [1] 1.666667
```

```r
(1 + 2)/3
```

```
## [1] 1
```

R also has a number of useful built-in constants.


```r
pi
```

```
## [1] 3.141593
```

```r
letters
```

```
##  [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
## [20] "t" "u" "v" "w" "x" "y" "z"
```

```r
LETTERS
```

```
##  [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
## [20] "T" "U" "V" "W" "X" "Y" "Z"
```

```r
month.abb
```

```
##  [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"
```

```r
month.name
```

```
##  [1] "January"   "February"  "March"     "April"     "May"       "June"     
##  [7] "July"      "August"    "September" "October"   "November"  "December"
```

We often want to assign a value to a variable so that we have access to that variable value at any time. Common R syntax for variable assignment is as follows, where the value of 1 is assigned to the variable x. When you assign the value to the variable, notice that the Environment panel in the upper right now shows the variable and its value.


```r
# variable assignment
x <- 1
```

The `<-` syntax is a graphical reminder of which direction the assignment is going. An alternative syntax is to use the equal sign.


```r
x = 2
```

If you want to print the value of x to the console, you can either use the print command or simply type the variable name.


```r
print(x)
```

```
## [1] 2
```

```r
x
```

```
## [1] 2
```

### Variable Types

There are different types of variables in R, and the most common types we'll encounter are numeric (integers and floats), strings, and factors. Integers are what you'd expect, floats are numeric non-integers, strings are text, and factors are categorical variables such as Likert scale responses. If you are unsure of a variable type, you can determine it using `class()`.


```r
class(x)  # numeric
```

```
## [1] "numeric"
```

```r
x = as.integer(x)
class(x)  # now specifically an integer
```

```
## [1] "integer"
```

```r
myWord = "Hello"
class(myWord) # character (aka string)
```

```
## [1] "character"
```

```r
myFactors = c("agree", "neutral", "disagree")
class(myFactors) # these variables are considered strings at this point
```

```
## [1] "character"
```

```r
# use as.factor to convert from character to factor
myFactors = as.factor(c("agree", "neutral", "disagree")) 
class(myFactors) # now a factor with 3 levels
```

```
## [1] "factor"
```

### Data Structures

When dealing with multiple variables, we'll often want to combine them into a data structure so that we can perform operations on the entire group. The data structures we'll use most are vectors, lists, and data frames.

#### Vectors

Vectors are one of the most common objects in R. They are a collection of values of the same type (e.g., the numbers 1 through 5, or a collection of unit names). To construct a vector from scratch, use the format `c(value1, value2, etc.)`. 


```r
x = c(1, 2, 3, 4, 5)
x
```

```
## [1] 1 2 3 4 5
```

If we use `class()` on a vector, R will return the class of the data in the vector. Another useful function is `length()`, which will return the number of values in a vector.


```r
class(x)   # class is referring to the class of the data in the vector
```

```
## [1] "numeric"
```

```r
length(x)  # the number of elements in the vector
```

```
## [1] 5
```

Recall that vector elements must be the same type. If they are not, R will coerce the elements to be consistent. For example, R will coerce a mix of characters and numbers into characters.


```r
x = c(1, "foo")
# note that the number 1 was coerced into a character as 
# indicated by the quotes around the number: "1"
x
```

```
## [1] "1"   "foo"
```

```r
class(x)
```

```
## [1] "character"
```

```r
is.numeric(x)    # this tests whether the vector contains numbers or not
```

```
## [1] FALSE
```

A benefit of having like elements in a vector is that you can then perform operations on the entire vector at once, rather than one element at a time. For example, say we have a vector containing the numbers 1 through 5. If we want to add 1 to each element, we do the following:


```r
x = c(1, 2, 3, 4, 5)
x + 1     # 1 is added to each vector element
```

```
## [1] 2 3 4 5 6
```

```r
x = x + 1 # if we want to update the value of x, we need to asign the result back to it
```

##### Vector Math

Having values in a vector allows us to quickly perform mathematical operations on the entire vector.


```r
sum(x)                 # sum up the values in x
```

```
## [1] 20
```

```r
mean(x)                # the mean of the values
```

```
## [1] 4
```

```r
median(x)              # the median value
```

```
## [1] 4
```

```r
sd(x)                  # standard deviation
```

```
## [1] 1.581139
```

```r
mean(x) + 2 * sd(x)    # upper bound of a 95% confidence interval
```

```
## [1] 7.162278
```

```r
max(x)                 # the maximum value in x
```

```
## [1] 6
```

```r
min(x)                 # the minimum value in x
```

```
## [1] 2
```

```r
summary(x)             # a statistical summary of the values in x
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##       2       3       4       4       5       6
```

If needed, vectors can also be sorted in either ascending or descending order. Sorting a vector of characters will put them in alphabetical order.


```r
x = c(2, 1, 4, 3, 5)
sort(x)                     # default behavior is ascending order
```

```
## [1] 1 2 3 4 5
```

```r
sort(x, decreasing = TRUE)  # to specify descending order
```

```
## [1] 5 4 3 2 1
```

```r
x                           # note that the original vector didn't change
```

```
## [1] 2 1 4 3 5
```

```r
x = sort(x)                 # to update the original vector, assign the results back to it
x
```

```
## [1] 1 2 3 4 5
```

##### Vector Indexing and Slicing

Often, we need to access one or more individual elements in a vector. Each element in a vector can be accessed using its index number. The first element in a vector has an index of 1, the second has an index of 2, etc. 


```r
x = c(2, 1, 4, 3, 5)
x[1]             # access the first element
```

```
## [1] 2
```

```r
x[2]             # access the second element
```

```
## [1] 1
```

```r
x[2:4]           # access the second through fourth elements
```

```
## [1] 1 4 3
```

```r
x[c(1, 3, 5)]    # the first, third, and fifth element
```

```
## [1] 2 4 5
```

```r
x[-1]            # remove the first element
```

```
## [1] 1 4 3 5
```

```r
x[-2]            # remove the second element
```

```
## [1] 2 4 3 5
```

```r
x[-length(x)]    # remove the last element
```

```
## [1] 2 1 4 3
```

```r
which.max(x)     # the index of the maximum value
```

```
## [1] 5
```

```r
x[which.max(x)]  # same as max(x)
```

```
## [1] 5
```

Indexing strings is slightly different than indexing a vector. Recall our variable `myWord`, which consists of the string "Hello". If we want to access the second letter in the string, we don't use `myWord[2]` because a string is not a vector of characters. Instead, use `substr()`, which returns a sub-string based on a starting and stopping position.


```r
myWord[2]                     # fail!
```

```
## [1] NA
```

```r
substr(myWord, 1, 1)          # the first letter
```

```
## [1] "H"
```

```r
substr(myWord, 1, 2)          # the first two letters
```

```
## [1] "He"
```

```r
substr(myWord, 2, 5)
```

```
## [1] "ello"
```

If we need to split a string based on a repeated character, we can use the `strsplit()` function and specify the character to split on. Note that we can also split on the space caracter, which allows us to split a sentence into individual words. `strsplit()` returns a list, which is a data type we'll discuss in more detail later.


```r
# Example 1
fiple = "platform:weapon:mount:munition:target"
strsplit(fiple, ":") 
```

```
## [[1]]
## [1] "platform" "weapon"   "mount"    "munition" "target"
```

```r
# Example 2
sentence = "this is an example sentence"
strsplit(sentence, " ")
```

```
## [[1]]
## [1] "this"     "is"       "an"       "example"  "sentence"
```

The reverse of parsing strings is pasting them back together with either `paste()` or `paste0()`. These methods can be combined with `print()` for console display.


```r
fiple = c('platform', 'weapon', 'mount', 'muntion', 'target')
fiple
```

```
## [1] "platform" "weapon"   "mount"    "muntion"  "target"
```

```r
paste(fiple, collapse=":")                 # use collapse to specify how to delimit the vector elements
```

```
## [1] "platform:weapon:mount:muntion:target"
```

```r
# combining print and paste
print(myWord)
```

```
## [1] "Hello"
```

```r
print(paste(myWord, "World!", sep = " "))  # use sep to specify how to separate the elements
```

```
## [1] "Hello World!"
```

##### Vector Construction Methods

R provides some useful methods for quickly creating long vectors.

+ `seq.int()` creates a sequence of integers 
+ `seq()` creates a sequence of floats
+ `rep()` replicates a pattern


```r
x = seq.int(from = 4, to = 12) # note: from and to are optional
x
```

```
## [1]  4  5  6  7  8  9 10 11 12
```

```r
# a shortcut to create a sequence of integers
x = 1:10
x
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

```r
# if you need breaks in the sequence
x = c(1:3, 7:10, 15)
x
```

```
## [1]  1  2  3  7  8  9 10 15
```

```r
# a sequence of floats
x = seq(from = 0.1, to = 1.0, by = 0.1)
x
```

```
##  [1] 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
```

```r
# replication
rep(1, 10)          # replicate 1, 10 times
```

```
##  [1] 1 1 1 1 1 1 1 1 1 1
```

```r
rep(1:4, 2)         # replicate 1:4, two times
```

```
## [1] 1 2 3 4 1 2 3 4
```

```r
rep(1:4, each = 2)  # replicate 1 twice, 2 twice, etc.
```

```
## [1] 1 1 2 2 3 3 4 4
```

##### Applying Regular Expressions To Character Vectors

A common task with character vectors is to detect, locate, extract, or replace strings based on a pattern. Using the base R `grep` methods, the syntax is `grep(pattern, string)`. Methods from other R packages (such as the `str_detect` method from the stringr package that we'll cover later) reverse the syntax: `str_detect(string, pattern)`. The *Basic Regular Expressions in R Cheatsheet* is a useful reference for a more complete list of methods and pattern matching options.


```r
# using base R
string = fiple  
pattern = "p"

# detect patterns
grep(pattern, string)                 # returns the index of words that contain the letter p
```

```
## [1] 1 2
```

```r
grep(pattern, string, value = TRUE)   # returns the matching words
```

```
## [1] "platform" "weapon"
```

```r
grepl(pattern, string)                # returns a logical vector of matches
```

```
## [1]  TRUE  TRUE FALSE FALSE FALSE
```

```r
stringr::str_detect(string, pattern)  # the stringr equivalent
```

```
## [1]  TRUE  TRUE FALSE FALSE FALSE
```

```r
# replace patterns
gsub(pattern, "XX", string)           # replace 'p' with 'XX'
```

```
## [1] "XXlatform" "weaXXon"   "mount"     "muntion"   "target"
```

#### Lists

As opposed to vectors which must contain elements of the same data type, lists can contain more than one data type. Indexing a list is slightly different than a vector: use double brackets instead. 


```r
myList = list(1, "foo")   # can contain different data types
myList                    # note the double brackets
```

```
## [[1]]
## [1] 1
## 
## [[2]]
## [1] "foo"
```

```r
myList[[1]]               # indexing a list
```

```
## [1] 1
```

```r
myList[[1]] + 2
```

```
## [1] 3
```

```r
myList = list(units = c("ADA", "EN", "FA", "MI"), x)   # can contain elements with different lengths
myList
```

```
## $units
## [1] "ADA" "EN"  "FA"  "MI" 
## 
## [[2]]
##  [1] 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
```

```r
myList[[1]]               # the units vector back
```

```
## [1] "ADA" "EN"  "FA"  "MI"
```

```r
myList[[1]][2]            # the second element in the first vector
```

```
## [1] "EN"
```

Lists are commonly used to pass paramters to a function (details in a later section). For example, I was recently exploring the `ReinforcementLearning` package. With this package, tuning parameters are passed to one of the functions with a list that contains names and values for the parameters. Values in the list can be accessed either by index numer or using its name preceeded by `$`.


```r
control = list(alpha = 0.2, gamma = 0.4, epsilon = 0.1)
control
```

```
## $alpha
## [1] 0.2
## 
## $gamma
## [1] 0.4
## 
## $epsilon
## [1] 0.1
```

```r
control[[1]]  
```

```
## [1] 0.2
```

```r
control$alpha  # equivalent to control[[1]]
```

```
## [1] 0.2
```

#### Matrices

Matrices are not commonly encountered in the WAD workflow, but they are worth mentioning for situational awareness. Matrix construction is column-wise by default, but that can be overwritten by specifying `byrow=TRUE` as shown below.


```r
M = matrix(c(1,2,3,4,5,6), ncol = 2)
M 
```

```
##      [,1] [,2]
## [1,]    1    4
## [2,]    2    5
## [3,]    3    6
```

```r
M = matrix(c(1,2,3,4,5,6), ncol = 2, byrow=TRUE)
M
```

```
##      [,1] [,2]
## [1,]    1    2
## [2,]    3    4
## [3,]    5    6
```

```r
dim(M) # dimensions in rows, columns
```

```
## [1] 3 2
```

R provides the ability to perform linear algebra. For example, to solve the system of equations:

$2x_{1} + x_{2} + 3x_{3} = 19$

$x_{1} + 2x_{2} + x_{3} = 12$

$3x_{1} + x_{2} + 2x_{3} = 17$

Solve $Ax = b$


```r
A = matrix(c(2, 1, 3,
             1, 2, 1, 
             3, 1, 2), ncol=3, byrow= TRUE)
b = c(19, 12, 17)
x = solve(A) %*% b
x                   # x[1] is x1, x[2] is x2, x[3] is x3
```

```
##      [,1]
## [1,]    2
## [2,]    3
## [3,]    4
```

#### Dataframes

Dataframes are one of the most common data structures you will encounter when working with AWARS data. Think of a dataframe as an Excel spreadsheet or an AWARS postprocessor table. Dataframes have one or more columns, typically with column names, and the length of the columns must be equal. The values in a dataframe column must be of the same type, but columns can be of different types. For example, column 1 can be a unit name (string) and column 2 can be strength (numeric). In this course of instruction, we will use a specific type of dataframe called a tibble, which is available in the tidyverse package.

To create a tibble from scratch, think of the columns as vectors and wrap them into the tibble function.


```r
library(tidyverse)
```

```
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──
```

```
## ✓ ggplot2 3.3.3     ✓ purrr   0.3.4
## ✓ tibble  3.0.6     ✓ dplyr   1.0.4
## ✓ tidyr   1.1.2     ✓ stringr 1.4.0
## ✓ readr   1.3.1     ✓ forcats 0.5.1
```

```
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
tb = tibble(
  x = 1:10,
  y = 5:14, 
  z = rep(month.name[1:5], 2))     # create a tibble with three columns
tb
```

```
## # A tibble: 10 x 3
##        x     y z       
##    <int> <int> <chr>   
##  1     1     5 January 
##  2     2     6 February
##  3     3     7 March   
##  4     4     8 April   
##  5     5     9 May     
##  6     6    10 January 
##  7     7    11 February
##  8     8    12 March   
##  9     9    13 April   
## 10    10    14 May
```

We'll cover dataframe operations in depth when we get to Chapter 5 of *R for Data Science*.

### Relational and Logical Operators

R uses relational and logical operators in addition to the arithmethic operators presented earlier (+, -, *, /, etc.). The following summarizes the primary relational and logical operators. When relational and logical operations are performed on vectors, the result is a logical vector of TRUE or FALSE. R treats a TRUE as a 1 and FALSE as a 0, which is useful for counting the number of matches. 


```{=html}
<div id="htmlwidget-e351d86d3271a8d60d0f" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-e351d86d3271a8d60d0f">{"x":{"filter":"none","data":[["1","2","3","4","5","6"],["&lt;","&lt;=","&gt;","&gt;=","==","!="],["Less than","Less than or equal to","Greater than","Greater than or equal to","Equal to","Not equal to"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Operator<\/th>\n      <th>Description<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"order":[],"autoWidth":false,"orderClasses":false,"columnDefs":[{"orderable":false,"targets":0}]}},"evals":[],"jsHooks":[]}</script>
```

Examples of relational operations.


```r
x = 1:10
x < 5
```

```
##  [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
```

```r
x <= 5
```

```
##  [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
```

```r
x == 5
```

```
##  [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
```

```r
x != 5
```

```
##  [1]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
```

```r
sum(x == 5)
```

```
## [1] 1
```

Logical operations with examples.


```{=html}
<div id="htmlwidget-aa36598041467bae2ae6" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-aa36598041467bae2ae6">{"x":{"filter":"none","data":[["1","2","3","4","5","6"],["&amp;","|","!","&amp;&amp;","||","%in%"],["Element-wise AND","Element-wise OR","Element-wise NOT","Operand-wise AND","Operand-wise OR","Is an element in a vector"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Operator<\/th>\n      <th>Description<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"order":[],"autoWidth":false,"orderClasses":false,"columnDefs":[{"orderable":false,"targets":0}]}},"evals":[],"jsHooks":[]}</script>
```

Logical operations are often useful when comparing two vectors.


```r
x = 1:10
y = rep(5, 10)
x == y 
```

```
##  [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
```

```r
x != y 
```

```
##  [1]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
```

```r
which(x == y)     # the index where they are equal
```

```
## [1] 5
```

```r
x[which(x == y)]  # the value of x where they are equal
```

```
## [1] 5
```

```r
sum(x == y) 
```

```
## [1] 1
```

```r
# %in% operator
units = c("ADA", "EN", "FA", "MI")
myUnit = "EN"
myUnit %in% units
```

```
## [1] TRUE
```

```r
myUnit = "AR"
myUnit %in% units
```

```
## [1] FALSE
```

## Introduction to R - Part II

### Reading Tasks

Read *R for Data Science* Chapters 3 and 5. Each section of the reading has associated exercises. Follow the link to the problem set below for which exercises you should complete. After completing the exercises, briefly skim through *R for Data Science* Chapters 11, 13-15, and 18-21 to get an idea of what they contain. We'll revisit and apply these concepts later in the course. 

### Problem Set 

The problem set for this section is located <a href = '/_Chapter2_ProblemSets/Chapter2_Questions.html'>here</a>.

For your convenience, the R markdown version is <a href = '/_Chapter2_ProblemSets/Chapter2_Questions.Rmd'>here</a>.

The solutions are located <a href = '/_Chapter2_ProblemSets/Chapter2_Solutions.html'>here</a>.
