#enter a comment
#they make more understandable code
#create new array vaiable called cats
cats <- data.frame (coat = c("calico","black","tabby"),
                    weight = c(2.1, 5.0, 3.2),
                    likes_string = c(1,0,1))
#write cats to new file called feline.data.csv
write.csv (cats, file="data/feline-data.csv",row.names=FALSE)
cats$weight
#oops. the scale weights two kg light
cats$weight +2
paste("my cat is", cats$coat)
weight_corrected <- weight+2

typeof(cats$weight)

#initialize a vector
my_vector <-vector(length = 3)
my_vector
#create new vectr with characters
type.convert(my_vector, character( ))

age <- c(2,3,5)
cbind(cats,age)
#this gave me an error
#age <- c(2,3,5,12)

nrow(cats)
length (age)
cats
nrow(cats)
newRow <- list("tortoiseshell", 3.3, 1.3, TRUE)
cats[4,1]<- newRow[1,1]
cats <- rbind(cats, newRow)
 cats[-4,]
cats[-5,] 
cats[-4:6,]


df <- data.frame(first.name ="Marty",
                 last.name = "Downs",
                 lucky.number =13)
df
#starting gapminder exercise
gapminder <-read.csv("data/gapminder_data.csv")
str(gapminder)
