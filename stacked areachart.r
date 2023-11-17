# Creating a stacked area chart
matplot(
  t(product_sales[, c("JanuarySales", "FebruarySales", "MarchSales")]),
  type = "n",
  col = rainbow(nrow(product_sales)),
  main = "Overall Sales Trend for All Products",
  xlab = "Month",
  ylab = "Sales (in $)"
)
legend("topright", legend = product_sales$ProductName, fill = rainbow(nrow(product_sales)))

for (i in 1:nrow(product_sales)) {
  polygon(
    c(1, 2, 3),
    product_sales[i, c("JanuarySales", "FebruarySales", "MarchSales")],
    col = rainbow(1, start = i/nrow(product_sales), end = (i + 1)/nrow(product_sales)),
    border = NA
  )
}
