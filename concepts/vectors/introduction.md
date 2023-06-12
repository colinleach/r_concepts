# Introduction

A `vector` in R is a collection of values of the same `mode`: numeric, character, etc. If given mixed inputs, R will quietly coerce them all to a common type, usually character, which can lead to unexpected results.

## Creating vectors

If you already have all the values, use `c()` (short for "concatenate"):

```R
v <- c(4, 7, 10)
```

If the vector starts small and grows during runtime -- for example, adding values in a loop -- it can be significantly faster to pre-allocate a long vector:

```R
v <- vector(length = 100) 
```

## Ranges and sequences

For a range of consecutive values (increasing or decreasing) you can use `:` notation

```R
v <- 1:5 # same as c(1, 2, 3, 4, 5)
w <- 10:7 # c(10, 9, 8, 7)
```

The `seq()` function offers finer control:

```R
# specify step size
seq(2, 11, by = 3) # c(2, 5, 8, 11)

# specify number of values, evenly-spaced
seq(2.5, 4, length.out = 5) # c(2.500, 2.875, 3.250, 3.625, 4.000) 
```

Some ranges are pre-defined:

```R
> letters
 [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
```

## Accessing vector elements

As in many languages, we can use the index in brackets:

```R
> v <- 4:7
> v[2]
[1] 5
> v[2:4]
[1] 5 6 7
```

But beware: ***R uses 1-based indexing by default***. 
This is common for scientific languages (Fortran, Matlab, Julia) but differs from the zero-based indexing of C and its many successors.

Ranges can be used, as in the example above but also in the highly flexible `c()` function:

```R
v <- c(4, 7, 10)
w <- c(2, v[2:3], 11) # c(2, 7, 10, 11)
```
