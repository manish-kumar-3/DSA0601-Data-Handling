# Create a data frame with the provided data
data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Department = c("HR", "Sales", "IT", "Finance"),
  TrainingHours = c(10, 8, 12, 6)
)

# Create a histogram
hist(data$TrainingHours, 
     col = "lightblue", 
     main = "Training Hours Distribution",
col.main="red",
     xlab = "Training Hours")
