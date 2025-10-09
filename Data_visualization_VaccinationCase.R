#importing libraries here dslabs has us_contagious_disease dataset
library(dslabs)
library(tidyverse)
#importing ggplot2 library to plot graphs
library(ggplot2)
#importing RColor Brewer for designing sequential palette
library(RColorBrewer)


#importing us_contagious_disease dataset
data(us_contagious_disease)
#To display the structure of the dataset
str(us_contagious_diseases)

#the_disease is the variable we will use in our code,this can be changed as per our convenience
the_disease = "Measles"

#Cleaning data using filter to filter disease and eliminating the states that became states in late 50s
#Aggregating data using mutate
#Assigning dat to the per 10,000 rate of measles
dat <- us_contagious_diseases |> filter(disease == the_disease & !state %in% c("Hawaii","Alaska")) |>
  mutate(rate = count / population * 10000) |> mutate(state = reorder(state, rate))

#Using geom_line() to see changes in California
dat |> filter(state == "California") |> ggplot(aes(year,rate)) +
  geom_line()+ geom_vline(xintercept=1963, col = "red",size = 1.2)+
  labs(
    title = "📉 Impact of Measles Vaccination in California",
    subtitle = "Data from Project Tycho (1928–2002) — sharp decline after vaccine enforcement in 1963",
    x = "Year",
    y = "Total Reported Measles Cases",
    caption = "Source: University of Pittsburgh, Project Tycho"
  )

