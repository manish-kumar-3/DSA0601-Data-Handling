# Create a data frame
data <- data.frame(
  id = c(1, 2, 3, 4, 5, 6, 7, 8),
  name = c("Shubham", "Arpita", "Vaishali", "Nishka", "Gunjan", "Sumit", "Anisha", "Akash"),
  salary = c(613.3, 525.2, 63, 749, 863.25, 588, 932.8, 712.5),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27", "2013-05-21", "2013-07-30", "2014-06-17")),
  dept = c("IT", "Operations", "IT", "HR", "Finance", "IT", "Operations", "Finance")
)

# Print the data frame
print(data)

# Visualize the data
# You can use various libraries and functions for visualization, like ggplot2, lattice, or base R graphics. 
# Here's an example using ggplot2:

library(ggplot2)

# Create a scatterplot of salary by start date, colored by department
ggplot(data, aes(x = start_date, y = salary, color = dept)) +
  geom_point() +
  labs(title = "Employee Data Visualization") +
  theme_minimal()
