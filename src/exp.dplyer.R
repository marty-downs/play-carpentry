#exploring the dplyer package
library(dplyr)
gapminder <- read.csv('data/gapminder_data.csv')
str(gapminder)

#subsetting columns
gap_select <- gapminder %>% select(year, country, gdpPercap)
str(gap_select)

#using filter
gap_europe<-gapminder%>% filter(continent=="Europe")
str(gap_europe)
head(gap_europe)


#combining them
gap_select_europe <- gapminder %>% filter(continent=="Europe") %>% select(year, country, gdpPercap)
head(gap_select_europe)

#Challenge 1
gap_select_africa <- gapminder %>% filter(continent=="Africa") %>% select(year, country, lifeExp)
str(gap_select_africa)

head(gap_select_africa)

#summarising data by groups
gdp_by_continent <-gapminder %>%group_by(continent) %>% summarise(meanGDP = mean(gdpPercap))
gdp_by_continent


#challenge 2 -- not working
gdp_by_country <-gapminder %>%group_by(country) %>% summarise(meanLifeExp = mean(lifeExp))
gdp_by_country[gdp_by_country$meanLifeExp==max(gdp_by_country$meanLifeExp)]
gdp_by_country[gdp_by_country$meanLifeExp==min(gdp_by_country$meanLifeExp)]

#mutate also doesn't work
library(ggplot2)

gdp_byContinent_log<-gapminder %>%
  mutate(gdp_log=log(gdpPercap)) %>%
  summarize(meanLogGDP=mean(gdp_log)) %>%
  ggplot(aes(x=year, y=meanLogGDP, color=continent)) +geom_point()

