#starting gapminder exercise
gapminder <-read.csv("data/gapminder_data.csv")
str(gapminder)
typeof(gapminder$year)

dim(gapminder)
ncol(gapminder)
nrow(gapminder)
head(gapminder)

#starting ggplot work 1/26/2019

plot(gapminder$lifeExp, gapminder$gdpPercap)
library("ggplot2")
ggplot(data=gapminder, aes_(x=gdpPercap, y=lifeExp))+geom

#good plot, by country
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line()

#good plot, including points
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country)) +
  geom_line(aes(color=continent))+ geom_point(aes(color=continent))

#reverse x and y
ggplot(data=gapminder, aes(y=year, x=lifeExp, by=country)) +
  geom_line(aes(color=continent))+ geom_point(aes(color=continent))

#transparent points and a change of scale
ggplot(data=gapminder,aes(x=gdpPercap, y=lifeExp,color=continent)) +
  geom_point(alpha=0.5, size=0.5) +
  scale_x_log10() + 
  geom_smooth(method="lm")

#adding line smoothing
ggplot(data=gapminder,aes(x=gdpPercap, y=lifeExp,color=continent)) +
  geom_point(alpha=0.5, size=0.5, shape=5) +
  scale_x_log10() + 
  geom_smooth(method="lm")

#facet panels
starts.with <-substr(gapminder$country, start=1, stop=1)
az.countries<-gapminder[starts.with %in% c("A", "Z"),]

ggplot(data=az.countries, aes(x=year, y=lifeExp, color=continent)) +
  geom_line() +
  facet_wrap(~country)
       