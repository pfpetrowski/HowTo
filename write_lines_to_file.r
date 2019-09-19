# Write one or more lines to a file
con <- file("./ExampleData/write_lines_to_file.txt")
writeLines(text = c("Hello", "future", "Paul"), con = con, sep = "\n") #text is a vector of lines to be written. Sep defaults to "\n"
close(con)