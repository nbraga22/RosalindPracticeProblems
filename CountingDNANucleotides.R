dat <- read.table("C:\\Users\\nicop\\Downloads\\rosalind_dna.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)[[1]]
pure <- strsplit(unlist(dat), split = "") ## Pure is one column
# pure
# "%+=%" <- function(left, right) {left = left + right }
Acount <- 0
Ccount <- 0
Gcount <- 0
Tcount <- 0
for (i in 1:length(pure[[1]])) {
    if (pure[[1]][[i]] == "A")
      Acount <- Acount + 1
    if (pure[[1]][[i]] == "C")
      Ccount <- Ccount + 1
    if (pure[[1]][[i]] == "G")
      Gcount <- Gcount + 1
    if (pure[[1]][[i]] == "T"){
      Tcount <- Tcount + 1
    }
      }
print(paste(Acount, Ccount, Gcount, Tcount, sep = " "))

