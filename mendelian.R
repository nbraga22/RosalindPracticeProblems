ka = 2 ## number of dominant alleles
ma = 1
na = 0

mendelian <- function(k, m, n){
    matrix(ka, k, ma, m, na, n, nRow = 2, nCol= 3)
    pseconda = c()
    psecondb = c()
    overall <- c(k,m,n)
    pfirst <- c((k/sum(k,m,n)), (m/sum(k,m,n)), (n/sum(k,m,n)))
    for(i in 1:3){
        pseconda <- append(pseconda, (overall[i] - 1) / sum(k,m,n,-1))
        psecondb <- append(psecondb, overall[i] / sum(k,m,n,-1))
    }
    pseconda[1]*psecondb[1]
    return(pseconda*psecondb*#the chances of dominant allele showing in mate 
}
print(mendelian(1,1,1))