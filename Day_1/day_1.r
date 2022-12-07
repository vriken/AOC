a <- as.numeric(readLines("C:/Users/vrike/Documents/input.txt"))
b <- rep(0, sum(is.na(a)) + 1)

c <- 1

for(i in seq_along(a)) {
    if(is.na(a[i])) {
        c <- c + 1
    }
    else {
        b[c] <- b[c] + a[i]
    }
}
max(b)

sum(sort(b, decreasing = TRUE)[1:3])
