my_data <- read.csv("./ExampleData/numeric_header.csv", header = TRUE) ## colnames will have Xs
colnames(my_data)


my_data <- read.csv("./ExampleData/numeric_header.csv", header = TRUE, check.names = FALSE) ## Xs will not be present
colnames(my_data)
