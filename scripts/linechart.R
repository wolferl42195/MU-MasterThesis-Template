linechatdata <- read.csv(file="line-chart-data.csv")
#ggplot() + geom_line(aes(y = Value, x = Answer), data = linechatdata)

p <- ggplot(aes(x = Answer, y = Value), data = linechatdata) + geom_point(size = 4) + geom_line()
p + opts(axis.title.x=theme_text(hjust=0.5)) + xlab("X-axis at hjust=0.5")

library(ggExtra)
align.plots(p1)