# About

## Iterating over a vector

This is often unnecessary in R. 
As discussed in other concepts, many functions will operate on entire vectors.

However, explicit loops are sometimes unavoidable.
This is especially true when the loop body has side effects such as printing or file I/O.

```R
> words <- c("This", "is", "a", "loop")
> for (w in words) { print(w) } # the braces are optional here
[1] "This"
[1] "is"
[1] "a"
[1] "loop"
```

## `while` and `repeat`

These work much as you might guess, based on many C-family languages.
If necessary, use `break` to exit a loop completely and `continue` to exit the current iteration.

These three variants are equivalent and all end with `x = 0.4444...`

```R
x <- 12
while (x > 1) {
  x <- x / 3
}

x <- 12
while (TRUE) {
  x <- x/3
  if (x <= 1) break
}

x <- 12
repeat {  # no boolean clause 
  x <- x/3
  if (x <= 1) break
}
```
