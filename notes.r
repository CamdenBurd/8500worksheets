

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

#Everything between 1970 and 1979
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

#Find all women whose occupation was housewife. 
#How many were there? And what was the age range?

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
objects(gayguides)
view(DigitalMethodsData)
library(DigitalMethodsData)
data(statepopulations)

statepopulations[67,5:28]

midwest <- statepopulations$STATE[c("Michigan", "Minneosta")]
midwest <- statepopulations[c(22, 25, 27, 29, 37, 39, 43, 47, 57, 59, 68, 79),]
midwest[, 16:28]


library(magrittr)
library(tidyverse)

gayguides[gayguides$state == "SC", "title"]

gayguides$title %>% head(20)
#Using the `gayguides` data, find all locations in California,
#during the 1970s (1970-1979).


california_spots <- gayguides[gayguides$state == "CA",]
california1970s <- california_spots[california_spots$Year  >= 1970 & california_spots$Year <=1979, ]

#(@) The `amenityfeatures` column contains codes about each location. 
#Can you find all entries that mention "(G)" for girls/women anywhere in 
#their amenity features during 1975? How many locations specifically catered to 
#women that year?


girlspots <- gayguides %>% filter(str_detect(amenityfeatures, "G"))
girlspots1975 <- girlspots[girlspots$Year == 1975, ]

#the one above and below this do the same thing

data(gayguides)
gs1975 <- gayguides[gayguides$Year == 1975, ] %>% filter(str_detect(amenityfeatures, "G"))



library(DigitalMethodsData)
library(tidyverse)
library(magrittr)
data(gayguides)
data(BostonWomenVoters)
help(grepl)

order(BostonWomenVoters$Age)
BostonWomenVoters[sort(BostonWomenVoters$Age),]


age_voter <- BostonWomenVoters[order(BostonWomenVoters$Age),]
age_voter_filtered <- age_voter[!is.na(age_voter$Age), ]
voter_filtered_tail <- tail(age_voter_filtered, n=5)
print(voter_filtered_tail$Occupation)


age_voter2 <- BostonWomenVoters[order(BostonWomenVoters$Age),]
voter_filtered_tail2 <- tail(age_voter2, n=5)
print(voter_filtered_tail2$Occupation)


