# Introduction

We already saw functions that take in a vector and return a single, scalar-like value:

```R
> v <- 1:5
> sum(v)
[1] 15
> length(v)
[1] 5
```

In fact, many functions in R will operate on entire vectors, often giving vector output:

```R
> sq <- c(4, 9, 16, 25)
> sqrt(sq) # square root
[1] 2 3 4 5
```

This is not just concise and convenient, avoiding the need for loops, list comprehensions or recursion.
In R, vector functions often run much faster than these more familiar techniques.

