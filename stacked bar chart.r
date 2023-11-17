# Product Sales Data
product_sales <- data.frame(
  ID = c(1, 2, 3),
  ProductName = c("Product A", "Product B", "Product C"),
  JanuarySales = c(2000, 1500, 1200),
  FebruarySales = c(2200, 1800, 1400),
  MarchSales = c(2400, 1600, 1100)
)

# Reshape data for ggplot2
library(tidyr)
library(ggplot2)

product_sales_long <- pivot_longer(product_sales, cols = c(JanuarySales, FebruarySales, MarchSales), names_to = "Month", values_to = "Sales")

# Stacked Bar Chart for Overall Sales Trend
ggplot(product_sales_long, aes(x = ProductName, y = Sales, fill = Month)) +
  geom_bar(stat = "identity") +
  labs(title = "Overall Sales Trend for All Products",
       x = "Product",
       y = "Sales (in $)",
       fill = "Month") +
  theme_minimal()
