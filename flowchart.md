# Concept tree for R learning mode

## Some that are already in progress or planned

This is a very fluid plan and will doubtless continue to change frequently!

Boxes in red will almost certainly need a new concept exercise created. 
Others marked `??` can probably fork something suitable from other tracks (TODO).

```mermaid
graph TD
    
start(("Start")) --basics--> basics["lasagna"]
basics --booleans--> booleans["annalyns-infiltration"]
booleans --conditionals--> conditionals["vehicle-purchase<br/>cars-assemble"]
conditionals --vectors--> vectors["elyses-enchantments"]
conditionals -.loops.-> loops["??"]
vectors --set-operations--> set-operations["ozans-playlist"]
strings --randomness--> randomness["captains-log"]
vectors --lists--> lists["need-for-speed"]
vectors --vector-filtering--> vector-filtering["elyses-analytic-enchantments<br/>bird-watcher"]
strings --regular-expressions--> regular-expressions["regular-chatbot"]
vector-filtering --vector-functions--> vector-functions["??"]
vector-filtering --nothingness--> nothingness["name-badges"]
vectors --strings--> strings["log-levels"]
nothingness --functions--> functions["??"]
style functions fill:#b00
nothingness -.errors.-> errors["??"]
functions -.apply-functions.-> apply-functions["??"]
vector-functions -.apply-functions.-> apply-functions["??"]
style apply-functions fill:#b00
vector-functions --matrices-arrays--> matrices-arrays["??"]
style matrices-arrays fill:#b00
lists --dataframes--> dataframes["??"]
style dataframes fill:#b00
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
todo --> macros
todo --> raw-type
todo --> environments
```