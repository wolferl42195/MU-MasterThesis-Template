library(ggplot2)


library(scales)

getwd();
setwd("Z:/Users/wolferl42195/Dropbox/MBA-MU/masterthesis/thesis/MU-MasterThesis-Template/scripts")
getwd()

barchartdata<- read.csv("bar-chart-data.csv")

#ggplot(data=barchartdata, aes(x=Changes, y=Percentage, fill=factor(Percentage)))
ggplot(data=barchartdata, aes(x=Changes,y=Percentage,fill=factor(Percentage))) +
  geom_bar(position="dodge",stat="identity") + 
  coord_flip() +
  ggtitle("Changes to the environment observed by the respondents")


