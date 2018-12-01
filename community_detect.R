library(bipartite);
year <- "2010"
t <- read.table(paste("./programming/networks/311/", year, ".txt", sep=""));
b <- bipartite::DIRT_LPA_wb_plus(do.call(rbind, t));
write(b$Row_labels, paste("./programming/networks/311/r_processing/", year, "_rows.txt", sep=""))
write(b$Col_labels, paste("./programming/networks/311/r_processing/", year, "_cols.txt", sep=""))
