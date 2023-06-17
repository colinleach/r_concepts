# Introduction

## Comparison operators

R has a set of operators that is the same as many other languages:

```R
1 == 2 # FALSE
1 != 2 # TRUE
1 <= 2 # TRUE
1 >= 2 # FALSE
# etc...
```

## Branching

The basic form of an if-then-else is 

```R
if (x > 10) {
    y = "big"
} else if (x > 2) {
    y = "medium"
} else {
    y = "tiny"
}
```

In this case, both parentheses `()` around the boolean and braces `{}` around the statement are required. 
A simple `if` statement can be shortened:

```R
if (x == 0) return("success")
```

An alternative if-else form may be useful, providing two criteria are met:
- only a TRUE/FALSE outcome
- both branches result in the same type (`mode`) of data: numeric, character, boolean, etc.

```R
y = ifelse( (x > 8), "big", "small")

# Don't do this:
z = ifelse( (x > 100), 100, "small") # ERROR
```

`ifelse()` takes exactly three parameters: boolean clause, value if `TRUE`, value if `FALSE`.
