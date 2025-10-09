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

#List of all the years available
dat %>% distinct(year) %>%  arrange(year) 
  
#Compared state-level and national-level disease trends using geom_tile()function
# tile plot of disease rate by state and year
dat |> ggplot(aes(year, state, fill=rate)) +
  geom_tile(color = "grey50") +
  scale_x_continuous(expand = c(0,0)) +
  scale_fill_gradientn(colors = RColorBrewer::brewer.pal(9, "Reds"), trans = "sqrt") +
  geom_vline(xintercept = 1963, col = "green",size = 1.2) +
  theme_minimal() + theme(panel.grid = element_blank()) +
  labs(
    title = "📉 Impact of Measles Vaccination in the U.S",
    subtitle = "Data from Project Tycho (1928–2002) — sharp decline after vaccine enforcement in 1963",
    x = "Year",
    y = "States in U.S",
    caption = "Source: University of Pittsburgh, Project Tycho"
  )

