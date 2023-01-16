Old = 1
Old2 = 1
rabbitrecurrence <- function(n, k){
    for(i in 1:(n-2)){ # Subtraction ensures base that first two months are 1 pair of rabbits
      New <- Old*k + Old2 # All rabbits from 2 months ago will be mature (Old*k) + new immature rabbits (Old2)
      Old = Old2 # Generation moves up (Now all mature rabbits
      Old2 = New # Generation moves up (Now the number of rabbits from previous gen.) Helps to include both transition from immature ==> mature rabbits and already existing rabbits
    }
  return(New)
}

format(print(rabbitrecurrence(36,3)), scientific = FALSE)
