# Creating data for the graph.
x <- c(90, 65, 55, 50)
labels <- c("India", "America", "Sri Lanka", "Nepal")
piepercent<- round(100 * x / sum(x), 1)
pie(x, labels, main="country pie chart", col = rainbow(length(x)))
# Plotting the chart.
pie(x, labels = piepercent,
	main = "City pie chart", col = rainbow(length(x)))
legend("topright", c("India", "America", "Sri Lanka", "Nepal"),
					cex = 0.5, fill = rainbow(length(x)))
