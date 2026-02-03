

##to check documentation
help(setNames)



nrow(BostonWomenVoters)
rownumber < nrow(BostonWomenVoters)
rownumber < 100
library(tidyverse)
library(DigitalMethodsData)
help(package="DigitalMethodsData")
data(gayguides)
93.50 * 2
head(gayguides$city)
gayguides$Year[floor()]
floor(gayguides$Year)
min(gayguides$Year)
max(gayguides$Year)
data(BostonWomenVoters)
x[c(3,3)]
library(DigitalMethodsData)
data(gayguides)
head(gayguides)
mean(gayguides$Year)
data(gayguides)



#subsetting is giving directions within R. There are roughly three subsetting patterns.
## by position 
## by logic (using true and false values)

Everything between 1970 and 1979
year_1970s <- gayguides$Year <= 1970 & gayguides$Year <= 1979
head(year_1970s)
gayguides[year_1970s,]

gayguides$city
gayguides$city[-2]

## using that money sign to call to specific variables

## piping....... %>%

help(sort)
library(magrittr)

#Using piping in class
gayguides$state %>%
unique() %>%
sort() %>%
head(10)

library(DigitalMethodsData)
data(DigitalMethodsData)
data(BostonWomenVoters)

Find all women whose occupation was housewife. 
How many were there? And what was the age range?

housewife <- BostonWomenVoters$Occupation == "housewife"
housewife
count(housewife)

housewife <- BostonWomenVoters$Occupation == "Housewife"
BostonWomenVoters(housewife)
BostonWomenVoters[housewife, ]
BostonWomenVoters[housewife,]
BostonWomenVoters[housewife,]
count(BostonWomenVoters[housewife,])
houswives <- BostonWomenVoters[housewife,]
#3167
range(houswives$Age)
length(houswives)
length(houswives$Occupation)


BostonWomenVoters[, "Occupation"] 
#brings back all the rows with this variable in the column

BostonWomenVoters["Occupation",] 
#brings back all the columns with this variable in the row

library(tidyverse)
library(DigitalMethodsData)
help(DigitalMethodsData)
library(DigitalMethodsData)

install.packages(DigitalMethodsData)
devtools::install_github("regan008/DigitalMethodsData")
library(DigitalMethodsData)
data(gayguides)
head(gayguides)
