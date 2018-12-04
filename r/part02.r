library(tidyverse)

counts <- map(read_lines("../input/02.txt"), function(s){
  letter_counts <- unlist(map(letters, function(l){str_count(s, l)}))
  c(2 %in% letter_counts, 3 %in% letter_counts)
})

twos <- unlist(map(counts, function(x){x[1]})) %>% sum
threes <- unlist(map(counts, function(x){x[2]})) %>% sum
paste("Part One: ", twos * threes)
