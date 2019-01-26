#starting gapminder exercise
gapminder <-read.csv("data/gapminder_data.csv")
str(gapminder)
typeof(gapminder$year)

dim(gapminder)
ncol(gapminder)
nrow(gapminder)
head(gapminder)

sample(gapminder,10, FALSE, )
