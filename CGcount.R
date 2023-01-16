read <- read.table("C:\\Users\\nicop\\Downloads\\rosalind_gc.txt", stringsAsFactors = FALSE, header = FALSE, sep = "\t")
CGcount <- 0
highperc <- 0
lengthcount <- 0
lines <- 0
linesvector <- c()
runThrough <- 0
runThroughCounter <- 1
titles <- c()
highTitle <- ""

for(p in 1:length(read[[1]])){
if(grepl(">", read[[c(1,p)]]) != TRUE){
  lines <- lines + 1
} else if((grepl(">", read[[c(1,p)]]) == TRUE)) {
    linesvector <- append(linesvector, lines)
    titles <- append(titles, read[[1]][[p]])
    lines <- 0
}
if(p == length(read[[1]])){
  linesvector <- append(linesvector,lines)
}
}
paste(linesvector, sep = " ")

#"FASTA" File Cleanup + CG code
for(i in 1:(length(read[[1]]))){
    #Ignoring FASTA string titles
    split <- strsplit(unlist(read[[c(1,i)]]), split = "")
    if(split[[c(1,1)]] == ">"){
      CGcount <- 0
      lengthcount <- 0
      runThrough <- 0
      runThroughCounter <- runThroughCounter + 1
    } else {
      runThrough <- runThrough + 1 #Counts # of lines that have been read
    for(u in 1:length(split[[1]])){
      if(split[[c(1,u)]] == "C" || split[[c(1,u)]] == "G"){
        CGcount <- CGcount + 1
      }
      
    } #Want to know length count before each run
    lengthcount <- lengthcount + length(split[[1]])
    #Replacing highest probability CG each run
    #print(runThroughCounter)
    if(runThrough == linesvector[[runThroughCounter]]){
      if(highperc < (CGcount/lengthcount*100)){ #Length needs to be fixed to include all
        highperc <- (CGcount*100)/lengthcount
        highTitle <- titles[[runThroughCounter - 1]]
      }
    }
  
    } 
    
}
writeLines(c(gsub(">", "", highTitle), highperc))


