# BSD_2_clause

data <- readr::read_tsv("data-raw/EndSp_county_occurrences.tsv")
dim(data)
names(data)
head(data)
head(data.frame(data))

names(data)[1] <- "Scientific"
names(data)[4] <- "County_name"
names(data)[5] <- "State_abbrev"
names(data)[6] <- "State_name"
names(data)[9] <- "Common"

data <- data[, c(1, 13:15, 9:12, 2:8)]

esacounties <- data
devtools::use_data(esacounties, overwrite = TRUE)
