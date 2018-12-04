library(bipartite);
for (year in 2010:2016){
  t <- read.table(paste("./", year, ".txt", sep=""));
  b <- bipartite::DIRT_LPA_wb_plus(do.call(rbind, t));
  write(b$Row_labels, paste("./r_processing/", year, "_cts.txt", sep=""), ncolumns=500)
  write(b$Col_labels, paste("./r_processing/", year, "_reasons.txt", sep=""), ncolumns=500)
  print(year)
}

