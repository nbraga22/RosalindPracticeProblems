data <- read.table("C:\\Users\\nicop\\Downloads\\rosalind_rna.txt", header = FALSE, stringsAsFactors = FALSE, sep = "")
puredata <- strsplit(unlist(data), split = "") # Opposite of paste(), strsplit
for(i in 1:length(puredata[[1]])){
      if(puredata[[1]][[i]] == "T"){
        puredata[[1]][[i]] = "U"
      }
      if(i>1){
        clean <- paste(clean[[1]][[1]], puredata[[1]][[i]], sep = "")
      
      }
      }
puredata
clean
