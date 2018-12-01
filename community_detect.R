library(bipartite);
for (year in 2010:2016){
  t <- read.table(paste("./programming/networks/311/", year, ".txt", sep=""));
  b <- bipartite::DIRT_LPA_wb_plus(do.call(rbind, t), mini=4, reps=25);
  write(b$Row_labels, paste("./programming/networks/311/r_processing/", year, "_cts.txt", sep=""), ncolumns=500)
  write(b$Col_labels, paste("./programming/networks/311/r_processing/", year, "_reasons.txt", sep=""), ncolumns=500)
}
