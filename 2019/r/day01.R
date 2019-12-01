library(tidyverse)
input <- read_lines("../input/01.txt") %>% parse_integer

paste("Part One: ", sum(floor(input / 3) - 2))

fuel <- function(mass, sum) {
  extra = sum(floor(mass / 3) - 2)
  if(extra <= 0) {
    return(sum)
  } else {
    return(fuel(extra, extra + sum))
  }
}

paste("Part Two: ", fuel(input, 0))
