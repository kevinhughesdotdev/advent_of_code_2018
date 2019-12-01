library(tidyverse)
input <- read_lines("../input/01.txt") %>% parse_integer

paste("Part One: ", sum(input))

freq <- c(0, rep(input, times = 1000)) %>% cumsum
paste("Part Two: ", freq[duplicated(freq)][1])
