# About

## Vector-in, scalar-out

We already saw functions that take in a vector and return a single, scalar-like value:

```R
> v <- 1:5
> sum(v)
[1] 15
> length(v)
[1] 5
```

## Vector-in, vector-out

In fact, many functions in R will operate on entire vectors, often giving vector output:

```R
> sq <- c(4, 9, 16, 25)
> sqrt(sq) # square root
[1] 2 3 4 5
```

This is not just concise and convenient, avoiding the need for loops, list comprehensions or recursion.
In R, vector functions often run much faster than these more familiar techniques.

You already used vectorized functions more than you probably realized. Compare these:

```R
> v <- c(2, 7, 9)
> w <- c(3, 1, 5)
> v + w
[1]  5  8 14
> "+"(v, w)
[1]  5  8 14
```

The familiar infix operators are just syntactic sugar for the underlying vectorized function! In this case `"+"()`.

## Multiple-vectors-in, vector-out

An extension of this concept can also be used to compare vectors.
For example, consider the pairwise-max function `pmax()`:

```R
> v
[1] 2 7 9
> w
[1] 3 1 5
> pmax(v, w)
[1] 3 7 9 # max of each pairwise comparison
```

This function and others like it also accept an arbitrary number of input vectors, not just two.
