rm(list = ls())
options(stringsAsFactors = FALSE)
set.seed(614)
library(data.table)

# Locating the files we want 
raw_icews_files <- list.files(
  "~/data/icews_project/icews_data", full.names = TRUE)
years_of_interest <- paste0(seq(1995, 2010, 1), collapse = "|")
files_to_load <- raw_icews_files[grep(years_of_interest, raw_icews_files)]

# now, write a function to load them
load_icews_data <- function(i){
  icews_file <- fread(unzip(files_to_load[i]), sep = "\t")
}
