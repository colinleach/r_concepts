# Concept tree for R learning mode

## Some that are already in progress or planned

This is a very fluid plan and will doubtless continue to change frequently!

```mermaid
graph TD
    
start(("Start")) --basics--> basics["lasagna"]
basics --booleans--> booleans["annalyns-infiltration"]
booleans --conditionals--> conditionals["vehicle-purchase<br/>cars-assemble"]
conditionals --vectors--> vectors["elyses-enchantments"]
conditionals -.loops.-> loops["??"]
vectors --set-operations--> set-operations["??"]
strings -.exceptions.-> exceptions["??"]
vectors --lists--> lists["need-for-speed"]
vectors --vector-filtering--> vector-filtering["elyses-analytic-enchantments<br/>bird-watcher"]
strings --regular-expressions--> regular-expressions["??"]
vector-filtering --vector-functions--> vector-functions["??"]
vector-filtering --nothingness--> nothingness["name-badges"]
vectors --strings--> strings["log-levels"]
vectors --randomness--> randomness["??"]
nothingness --functions--> functions["??"]
functions -.apply-functions.-> apply-functions["??"]
vector-functions -.apply-functions.-> apply-functions["??"]
vector-functions --matrices-arrays--> matrices-arrays["??"]
lists --dataframes--> dataframes["??"]
matrices-arrays -.dataframes.-> dataframes
```

This isn't quite as tangled as it may appear. I guess Mermaid doesn't have great algorithms for preventing arrows crossing, and I don't know it well enough to take manual control.

## Some future concepts to be slotted in

```mermaid
graph TD
    
todo(("TODO")) --> name-attribute
todo --> classes
todo --> factors 
todo --> switch
todo --> pipes
```