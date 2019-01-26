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
