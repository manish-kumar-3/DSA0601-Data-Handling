# Product Sales Data
product_sales <- data.frame(
  ID = c(1, 2, 3),
  ProductName = c("Product A", "Product B", "Product C"),
  JanuarySales = c(2000, 1500, 1200),
  FebruarySales = c(2200, 1800, 1400),
  MarchSales = c(2400, 1600, 1100)
)

# Creating a grouped bar chart
barplot(
  t(product_sales[, c("JanuarySales", "FebruarySales", "MarchSales")]),
  beside = TRUE,
  col = rainbow(nrow(product_sales)),
  names.arg = product_sales$ProductName,
  main = "Product Sales in the First Quarter",
  xlab = "Month",
  ylab = "Sales (in $)"
)
legend("topright", legend = product_sales$ProductName, fill = rainbow(nrow(product_sales)))
