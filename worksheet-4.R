## Tidy data concept

response <- data.frame(
  trial = 1:3,
  treatment = c(0.22, 0.58, 0.31),
  control = c(0.42, 0.19, 0.40)
)

## Reshaping multiple columns in category/value pairs

library(tidyr)

df <- gather(response, key = "factor",
              value = "response",-trial)


## Exercise 1

...

## Read comma-separated-value (CSV) files

animals <- ...

animals <- read.csv('data/animals.csv', )

library(dplyr)
library(...)

con <- ...(..., host = 'localhost', dbname = 'portal')
animals_db <- ...
animals <- ...
dbDisconnect(...)

## Subsetting and sorting

library(dplyr)
animals_1990_winter <- filter(animals,
                              year==1990,
                              month%in% 1:3)


animals_1990_winter <- select(animals_1990_winter, ...)

sorted <- ...(animals_1990_winter,
              ...)

## Exercise 2

...

## Chainning with pipes

sorted_pipe <- animals %>%
    ... # filter to the first 3 months of 1990
    ... # select all columns but year
    ... # sort with descening species_id and weight

## Grouping and aggregation

counts_1990_winter <- animals_1990_winter %>%
    group_by(...) %>%
    ...

weight_1990_winter <- animals_1990_winter %>%
    ...
    summarize(avg_weight = mean(...))

## Exercise 3

...

## Transformation of variables

prop_1990_winter <- counts_1990_winter %>%
    mutate(...)

## Exercise 4

...

## Database Connection

library(...)

con <- ...(PostgreSQL(), host = 'localhost', dbname = 'portal')
animals_db <- ...

species_month_prop <- ...
    group_by(species_id, month) %>%
    summarize(count = n()) %>%
    mutate(prop = count / sum(count)) %>%
    select(-count)

pivot <- ...
  spread(month, prop, fill = 0)
  

dbDisconnect(con)
animals <- read.csv("data/animals.csv")
library(dplyr)
animals_1990_winter <- filter(animals,
                              year == 1990,
                              month %in% 1:3)


