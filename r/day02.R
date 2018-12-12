library(tidyverse)

counts <- map(read_lines("../input/02.txt"), function(s){
  letter_counts <- unlist(map(letters, function(l){str_count(s, l)}))
  c(2 %in% letter_counts, 3 %in% letter_counts)
})

twos <- unlist(map(counts, function(x){x[1]})) %>% sum
threes <- unlist(map(counts, function(x){x[2]})) %>% sum
paste("Part One: ", twos * threes)

input <- read_lines("../input/02.txt")
ids = crossing(input = input, input2 = input) %>%
  transmute(input = str_split(input, ""), input2 = str_split(input2, "")) %>%
  mutate(diff = map2(input, input2, function(.x, .y){
    sum(.x != .y)
  })) %>%
  mutate(diff = map_chr(diff, toString)) %>%
  filter(diff == 1) %>%
  nth(1)

paste(unlist(c("Part Two: ", ids[unlist(map2(ids[1], ids[2], function(.x, .y){.x == .y}))][1])), collapse="")
