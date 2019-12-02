library(tidyverse)
prog <- read_csv("../input/02.txt", col_names = FALSE) %>% unlist

day02 <- function(noun, verb){
  prog[2:3] = c(noun, verb)
  for(x in seq(1, 109, 4)) {
      if(prog[x] == 99) {
        break
      } else if(prog[x] == 1){
        prog[prog[x + 3] + 1] <- prog[prog[x + 1] + 1] + prog[prog[x + 2] + 1]
      } else if(prog[x] == 2){
        prog[prog[x + 3] + 1] <- prog[prog[x + 1] + 1] * prog[prog[x + 2] + 1]
      }
  }
  prog[1]
}

paste("Part One:", day02(12, 2))

for(noun in seq(0:99)){
  for(verb in seq(0:99)){
    if(day02(noun, verb)[1] == 19690720) {
      print(paste("Part Two:", (noun * 100 + verb)))
      stop
    }
  }
}
