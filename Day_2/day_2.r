a <- readLines("C:/Users/vrike/Documents/input.txt")
# b <- strsplit(a, regexpr("...", a)[[1]])

#PROBLEM 1
solution <- 0
for(i in 1:length(a)) {
    if(a[[i]] == 'B X') {
        solution <- solution + 1
    } else
    if(a[[i]] == 'C X') {
        solution <- solution + 7
    } else
    if(a[[i]] == 'A X') {
        solution <- solution + 4
    } else
    if(a[[i]] == 'A Y') {
        solution <- solution + 8
    } else
    if(a[[i]] == 'B Y') {
        solution <- solution + 5
    } else
    if(a[[i]] == 'C Y') {
        solution <- solution + 2
    } else
    if(a[[i]] == 'C Z') {
        solution <- solution + 6
    } else
    if(a[[i]] == 'A Z') {
        solution <- solution + 3
    } else    
    if(a[[i]] == 'B Z') {
        solution <- solution + 9
    } 
}
print(solution)

#PROBLEM 2
solution <- 0
for(i in 1:length(a)) {
    if(a[[i]] == 'A X') {
        solution <- solution + 3
    } else
    if(a[[i]] == 'A Y') {
        solution <- solution + 4
    } else
    if(a[[i]] == 'A Z') {
        solution <- solution + 8
    } else  
    if(a[[i]] == 'B X') {
        solution <- solution + 1
    } else
    if(a[[i]] == 'B Y') {
        solution <- solution + 5
    } else
    if(a[[i]] == 'B Z') {
        solution <- solution + 9
    } else
    if(a[[i]] == 'C X') {
        solution <- solution + 2
    } else
    if(a[[i]] == 'C Y') {
        solution <- solution + 6
    } else
    if(a[[i]] == 'C Z') {
        solution <- solution + 7
    }    
}

print(solution)
