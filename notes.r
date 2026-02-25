

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

#if statement and corresponding else and corresponding if esle 

# Two kinds of loops. 1) "FOR" loops - do something for each value in the sequence
# 2) while loops - do something while the a condition is true, typicaly used with a counter (i=1) that is increased at the end of the loop if a condition is true. (i=i+1)


#For loops
presidents <- c("Washington", "Jefferson", "Adams")

for (i in 1:length(presidents)) {
    print(presidents[i])
}


#While Loops (control c will stop the forever loop)
i <- 1
while(i < 6){
    print(i)
    i <- i+1
}


#function

if (BostonWomenVoters$Occupation[4] == "Housewife") {
  print("This woman is a housewife")
} else if (BostonWomenVoters$Occupation[4] == "Stenographer") {
  print("this woman is a stenographer")
} else {
  print("this woman is neither")
}

#checking for the fourth row
if (BostonWomenVoters$Occupation[4] == "Housewife") {
  print("This woman is a housewife")
} else if (BostonWomenVoters$Occupation[4] == "Stenographer") {
  print("this woman is a stenographer")
} else {
  print("this woman is neither")
}



#checking for the name as well
for (i in 1:length(BostonWomenVoters$Occupation)){
    if (BostonWomenVoters$Occupation[i] == "Housewife") {
  print(paste(BostonWomenVoters$Name[i], "is woman is a housewife"))
} else if (paste(BostonWomenVoters$Occupation[i] == "Stenographer")) {
  print(paste(BostonWomenVoters$Name[i], "is woman is a stenographer"))
} else {
  print(paste(BostonWomenVoters$Name[i], "is neither"))
}
}


#function 
h8500 <- function(){
print("Hello 8500")
}

h8500()

#function with argument
h8500 <- function(numstudents){
print(paste("Hello 8500, there are", numstudents, "students in this class"))
}
h8500(50)



#don't forget to make a COUNT! (as seen in my issue with problem at line 218)!!!!!!!

#in relation to Emma's post on Slack 
bwv.occupation <- function (Occupation) {
  data(BostonWomenVoters)

  for (i in 1:nrow(BostonWomenVoters)) {
    if (BostonWomenVoters$Occupation[i] == Occupation) {
      print(BostonWomenVoters[i,])
    } else {
      next
    }
  }
}


# some notes from class February 11
journals <- data.frame(
  title = c("AHR", 
            "JAH",
            "WMQ",
            "AHR",
            "JSH"),
  month = c("January", "March", "April", "July", "October"),
  year = c(1920, 1920, 1920, 1921, 1921)
)


dir.create("journals")
dir.create("journals/txt")
writeLines("A profound insight", "insights.txt")

writeLines(BostonWomenVoters$Occupation[1:50], "journals/bwv-jobs.txt")

#AHR-January-1920.txt "A profound historical source"


for (i in 1:nrow(journals)){

writeLines("A profound historical source.", paste(journals$title[i], "-", journals$month[i], "-", journals$year[i], ".txt", sep = "") ) # nolint
paste(journals$title[i], "-", journals$month[i], "-", journals$year[i], ".txt", sep = "") # nolint: line_length_linter.
}


nyc_count <- 0
for(i in 1:length(gayguides$city)){
  if (gayguides$city[i] != "New York City")
    next
  
  print(gayguides$title[i])
  nyc_count <- nyc_count + 1
  if(nyc_count >= 5)
    break 
}

i <- 1
while (i < 6) {
  print(i)
  i <- i+1
}




library(DigitalMethodsData)
data(gayguides)

#select
s.gayguides <- gayguides %>% select(title, Year)
s.gayguides <- gayguides %>% select(-city, -state)
s.gayguides <- gayguides %>% select(ID:state)

#filter
s.gayguides <- gayguides %>% filter(state == "SC") 
s.gayguides <- gayguides %>% filter(Year >= 1970 & Year <= 1980)

#mutate
s.gayguides <- gayguides %>% mutate(location = paste(city, state, sep = ", "))

#to get by decade
s.gayguides <- gayguides %>% mutate(decade = floor(Year/10)*10)

#arrange
s.gayguides <- gayguides %>% arrange(Year)
s.gayguides <- gayguides %>% arrange(state, Year)

#groupby + summarize()
s.gayguides <- gayguides %>% group_by(state, Year) %>% summarize(count =n()) %>% arrange(state)

#in class practice
rec_data <- read.csv("https://raw.githubusercontent.com/regan008/DigitalMethodsData/main/raw/Recreation-Expenditures.csv")

sc_rec <- rec_data %>% filter(state == "SC")
per_capit_sc <- rec_data %>% mutate(spending_per_capita = total_expenditures/population)
cities_rec_population <- rec_data %>% filter(population > 50000 & total_expenditures > 25000)


#function with argument
h8500 <- function(numstudents){
print(paste("Hello 8500, there are", numstudents, "students in this class"))
}
h8500(50)


# Prompt: Function that takes as it argument a city. Then filters the gayguides dataset to show only those cities.
func_city <- function(city_search){
  gayguides %>% filter(city == city_search) %>% summarize(poop=n())
}
func_city("Greenville")
