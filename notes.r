

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
h8500 <- function(numstudents) {
  print(paste("Hello 8500, there are", numstudents, "students in this class"))
}
h8500(50)



#don't forget to make a COUNT! (as seen in my issue with problem at line 218)!!!!!!! # nolint

#in relation to Emma's post on Slack
bwv.occupation <- function (Occupation) { # nolint # nolint
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

#four types of joins (left_join, right_join, inner_join, full_join).... left_join is the one you will likely use the most.  # nolint

#forcats - using factors (categorical data, not just text-- they have levels and orders, rename messy categories for clarity,  # nolint
  # Fct_lump() - keeps N categories, combines the rest as other.  # nolint
  # Fct_reorder() - allows you to reorder by frequency (not alphabetically which is default) # nolint
  # Fct_collapse() - which compbines related categories into groups
  # Fct_record() - rename categories

BostonWomenVoters %>% group_by(Occupation) %>% summarise(num_occ = unique(Occupation)) # nolint

test <- BostonWomenVoters %>% mutate(occupation_lumped = fct_lump(Occupation, n=5)) %>% # nolint
  group_by(occupation_lumped) %>%
  summarise(count = n())

domesticwork <- BostonWomenVoters %>%  # nolint
mutate(occupation_group = fct_collapse(Occupation, "Domestic Work" = c("Housewife", "At home", "Housekeeper"))) # nolint


farm.tenure.data <- read.csv("https://raw.githubusercontent.com/regan008/demo-data/refs/heads/main/farm-tenure-data.csv")
farm.tenure.regions <- read.csv("https://raw.githubusercontent.com/regan008/demo-data/refs/heads/main/farm-tenure-regions.csv")


farm_data2 <- farm.tenure.data %>% mutate(state_name = farm.tenure.data$STATE)

farm_data_full <- left_join(farm_data2, farm.tenure.regions, by = "state_name")

farm_regions <- farm_data_full %>% filter(YEAR == "1935") %>% group_by(region) %>% summarise(count = n()) # nolint
farm_regions_fake <- farm_data_full %>% group_by(region) %>% summarise(count = n()) # nolint # nolint


total_on_farm <- farm_data_full %>% mutate(total_farm = tenants/(full_owners + part_owners + managers + tenants)*100) # nolint

south_1925 <- total_on_farm %>% filter(region == "South") %>% filter(YEAR == "1925") # nolint
south_1940 <- total_on_farm %>% filter(region == "South") %>% filter(YEAR == "1940") # nolint

mean_1925 <- mean(south_1925$total_farm)
mean_1940 <- mean(south_1940$total_farm, na.rm = TRUE)

data(judges)


### Class session, March 9, 2026. 
library(tidyverse)
library(lubridate)
library(DigitalMethodsData)


### Class on March 30, 2026
## components of a graph: Themes, coordinates, themes, facets, geometics, aesthetics, data 

## ggplot(data = , <DATA>, mapping = aes (<MAPPINGS>)) + <GEOM_FUNCTION>())

library(tidyverse)
library(DigitalMethodsData)
library(ggplot2)
data(gayguides)

ggplot(data = gayguides, mapping = aes(x = Year)) + geom_histogram(bins = 10, fill="steelblue", color="white")

gg_yearly <- gayguides %>% group_by(Year) %>% summarise(count = n())
ggplot(data = gg_yearly, map = aes(x = Year, y = count)) + geom_point()
ggplot(data = gg_yearly, map = aes(x = Year, y = count)) + geom_line()
ggplot(data = gg_yearly, map = aes(x = Year, y = count)) + geom_line() + geom_point()

top_states <- gayguides %>% count(state, sort = TRUE) %>% head(3) %>% pull(state)
gg_states <- gayguides %>% filter(state %in% top_states) %>% group_by(Year, state) %>% summarise(count=n())

ggplot(data = gg_states, mapping = aes(x = Year, y = count, color = state)) + geom_line()

ggplot(data = gg_states, mapping = aes(x = Year, y = count, color = state)) + geom_line() + geom_point()

ggplot(data = gg_states, mapping = aes(x = Year, y = count)) + geom_line() + facet_wrap(~state)

ggplot(data = gg_states, mapping = aes(x = Year, y = count)) + geom_line() + facet_grid(state ~ .)

gg_1980 <- gayguides %>% filter(Year == 1980) %>% separate_rows(type, sep = ", ") %>% count(type, sort = TRUE) %>% head(10)
ggplot(data = gg_1980, mapping = aes(x = type, y = n)) + geom_col()
ggplot(data = gg_1980, mapping = aes(x = type, y = n)) + geom_col() + coord_flip()
ggplot(data = gg_1980, mapping = aes(x = reorder(type, n), y = n)) + geom_col() + coord_flip()

gg_compare <- gayguides %>% filter(state %in% c("CA", "NY", Year >= 1970)) %>% separate_rows(type, sep = ", ") %>% group_by(state, type) %>% summarise(count=n(), .groups = "drop") %>% group_by(state) %>% slice_max(count, n = 5) %>% ungroup()

ggplot(data = gg_compare, mapping = aes(x = type, y = count, fill=state)) + geom_col()
ggplot(data = gg_compare, mapping = aes(x = type, y = count, fill=state)) + geom_col(position = "dodge")
ggplot(data = gg_compare, mapping = aes(x = type, y = count, fill=state)) + geom_col(position = "fill")

ggplot(data = gg_compare, mapping = aes(x = type, y = count, fill=state)) + geom_col(position = "dodge") + labs(title="Top 5 Types of Locations in CA and NY", x = "Number of Locations", y = "Type of Location", caption = "Source: Mapping the Gay Guides")
ggplot(data = gg_compare, mapping = aes(x = type, y = count, fill=state)) + geom_col(position = "dodge") + labs(title="Top 5 Types of Locations in CA and NY", x = "Number of Locations", y = "Type of Location", caption = "Source: Mapping the Gay Guides") + theme(plot.title = element_text(size = 16, face = "bold"))

library(DigitalMethodsData)
data(BostonWomenVoters)
data(gayguides)
library(ggplot2)
library(tidyverse)
library(dplyr)

## class on April 6, 2026
#Basic concepts
  ##algorithsm cannot work directly with raw text
  ## For text analysis the text must be converted into numbers--specifically vectors of numbers. 
  ## The vectors are derived from textual data in order to reflect various linguistic properties. 

  ## tokenization - the process of breaking down text into smaller units called tokens which can be words, phrases, or individual characters
  ## bag of word model - representation of text that describes the occurence of words within a document, takes a text and extracts each work and count instances of that word, only concerned with frequency of words. 

  ## document-term matrix - is a mathematical matrix that represents the freuquency of terms in a collection of documents. rows correspond to documents in the collection. collumns correspond to terms. each cell refers to frequency 

  ## TF-IDF -- term frequency, inverse document frequency. TF is how odten a word appears in a document. IDF is how rare or common a word is across entire corpus or collection od documents. TF-IDF helps, identify relevant and distinct terms in a document by giving more weight to words that are importnat to a specifc document not common across all documents. 


library(tidyverse)
library(tidytext)

tiny_corpus <- data.frame(
  doc_id = c("FDR_1933", "Lincoln_1863"),
  text = c(
    "We have nothing to fear but fear itself",
    "We have government of the people by the people for the people"
  )
)

tiny_corpus
tiny_corpus %>%
  unnest_tokens(word, text)


tiny_corpus %>%
    unnest_tokens(word, text) %>%
    count(doc_id, word, sort = TRUE)


tiny_corpus %>%
  unnest_tokens(word, text) %>%
  count(doc_id, word) %>%
  pivot_wider(names_from = word, values_from = n, values_fill = 0)

## stop words - words that are filler, less historically interesting

tiny_corpus %>%
    unnest_tokens(word, text) %>%
    count(doc_id, word, sort = TRUE)

    tiny_corpus %>%
    unnest_tokens(word, text) %>%
    anti_join(stop_words) %>%
    count(doc_id, word, sort = TRUE)

### caluclate TF-IDF
  
  tiny_corpus %>%
    unnest_tokens(word, text) %>%
    anti_join(stop_words) %>%
    count(doc_id, word, sort = TRUE) %>%
    bind_tf_idf(word, doc_id, n) %>%
    arrange(desc(tf_idf))

library(tidyverse)
library(tidytext)
library(readtext)

# Download and load the data
download.file("https://github.com/regan008/8510-TextAnalysisData/raw/refs/heads/main/InfoBulletin.zip", "InfoBulletin.zip")
unzip("InfoBulletin.zip")

metadata <- read.csv("https://raw.githubusercontent.com/regan008/8510-TextAnalysisData/refs/heads/main/ib-metadata.csv")
bulletins <- readtext(paste(getwd(), "/InfoBulletin/*.txt", sep=""))

# Join them together
ib <- bulletins %>%
  left_join(metadata, by = c("doc_id" = "filename"))

# STEP 1: Tokenize and remove stopwords
ib_words <- ib %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words)

  # STEP 2: Create a list of food-related terms and filter for them
food_terms <- c("food", "agriculture", "crops", "wheat", "grain", "rations", 
                "hunger", "harvest", "livestock", "feed", "shortage", "famine")

food_words <- ib_words %>%
  filter(word %in% food_terms)

  # STEP 3: Visualize food vocabulary over time
food_words %>%
  count(year, word) %>%
  ggplot(aes(x = year, y = n, fill = word)) +
  geom_col() +
  labs(title = "Food Terms in Information Bulletins, 1949-1952")


# STEP 4: Find what words appear near food terms (bigrams)
ib %>%
  unnest_tokens(bigram, text, token = "ngrams", n = 2) %>%
  separate(bigram, into = c("word1", "word2"), sep = " ") %>%
  filter(word1 %in% food_terms | word2 %in% food_terms) %>%
  count(word1, word2, sort = TRUE) %>%
  head(15)

  ### relative frequency is basically what n-gram does. How many frequency per words. 

