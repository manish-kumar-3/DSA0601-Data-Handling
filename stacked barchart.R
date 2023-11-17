product_data <- data.frame(
  productID= c(1,2,3,4,5),
  product_name = c("product A","product B","product C","product D","product E"),
  quantity_availabe = c(250, 175,300,200,220)
)
# Create a stacked bar chart
ggplot(product_data, aes(x =product_name, y =quantity_availabe , fill =productID )) +
  geom_bar(stat = "identity") +
  labs(title = "product Inventory Management") +
  theme(legend.position = "top")
