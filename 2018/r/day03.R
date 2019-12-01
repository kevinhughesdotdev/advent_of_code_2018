library(tidyverse)

# cloth <- crossing(x=c(1:3), y=c(1:3)) %>% mutate(sliced = FALSE)
cloth <- tibble(x=integer(), y=integer(), cut=logical())
input <- read_delim("../input/03.txt", delim=" ", col_names=FALSE)
input = input %>%
  separate(X3, into=c("X","Y"), convert=TRUE) %>%
  separate(X4, into=c("W","H"), sep="x", convert=TRUE) %>%
  select(X,Y,W,H)

apply(
  input, 1, function(row, output) {
    for(x in row["X"]:(row["X"] + row["W"])) {
      for(y in row["Y"]:(row["Y"] + row["H"])) {
        print(paste(x, y))
        # cloth <- add_row(cloth, x=x, y=y, cut = TRUE)
      }
    }
  }
)
