# ggplot2 library
library(ggplot2)
 
# DATA
set.seed(345)
Region <- rep(c("Africa","Asia","Europe"),times=5)
Year <- as.numeric(rep(c("2005","2006","2007","2008","2009"),each=3))
Value <- runif(15, 10, 60)
data <- data.frame(Region ,Year,Value)
ggplot(data, aes(x=Year, y=Value, fill=Region ))+
 geom_area()