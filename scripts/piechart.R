# Get the library.
library(plotrix)

# Create data for the graph.
x <-  c(40, 45,15)
lbl <-  c("Type A","Type B","Type C")

# Give the chart file a name.
png(file = "3d_pie_chart.png")

# Plot the chart.
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart Example")

# Save the file.
piepercent<- round(100*x/sum(x),1)

pie3D(x, labels =paste(prop.table(piepercent)*100, "%", sep = "") , main = "Pie Chart Example",col = rainbow(length(x)))
legend("topright", c("Type A","Type B","Type C"), cex = 0.8, fill = rainbow(length(x)))
dev.off()

