data <- read.table("C:\\Users\\nicop\\Downloads\\rosalind_subs.txt", header = FALSE, stringsAsFactors = FALSE, sep = "")
t <- strsplit(unlist(data[[1]][[2]]), split = "")
s <- strsplit(unlist(data[[1]][[1]]), split = "")


location <- c()
score <- 0
for(i in 1:length(s[[1]])){
  if(length(s[[1]]) < (i + length(t[[1]]))){
      break
  }
  
    for(u in 1:length(t[[1]])){
        if(t[[1]][[u]] == s[[1]][[i + u - 1]]){
          score <- score + 1
          
      } else {
        break
      }
      
    

  }
  if(score == length(t[[1]])){
    location <- append(location, i)
    score <- 0
  }
  score <- 0
}
print(location)

