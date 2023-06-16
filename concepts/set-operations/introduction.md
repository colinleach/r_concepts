# Introduction

R has no separate Set datatype, instead using a variety of functions to perform similar operations on vectors.

We have already seen `%in%` to test for set membership:

```R
2 %in% 1:10 # TRUE
12 %in% 1:10 # FALSE
```

Relevant functions include `union()`, `intersect()`, `setdiff()`, `choose()`.
The last of those gets k-from-n subsets, the others are fairly obvious. Details are available online.
