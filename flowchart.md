# Concept tree for R learning mode

## Some that are already in progress or planned

This is a very fluid plan and will doubtless continue to change frequently!

Boxes in solid red will almost certainly need a new concept exercise created. 
Others marked `??` with red borders can probably fork something suitable from other tracks (TODO).

```mermaid
graph TD
    
start(("Start")) --basics--> basics["lasagna"]
basics --booleans--> booleans["annalyns-infiltration"]
booleans --conditionals--> conditionals["vehicle-purchase<br/>cars-assemble"]
conditionals --vectors--> vectors["elyses-enchantments"]

conditionals -.loops.-> loops["??"]
style loops stroke:#f00

conditionals -.switch.-> switch["??"]
style switch stroke:#f00

vectors --set-operations--> set-operations["ozans-playlist"]
strings --randomness--> randomness["captains-log"]
vectors --lists--> lists["need-for-speed"]
vectors --vector-filtering--> vector-filtering["elyses-analytic-enchantments<br/>bird-watcher"]
strings --regular-expressions--> regular-expressions["regular-chatbot"]

vector-filtering --vector-functions--> vector-functions["??"]
style vector-functions stroke:#f00

vector-filtering --nothingness--> nothingness["name-badges"]
vectors --strings--> strings["log-levels"]

nothingness --functions--> functions["??"]
style functions fill:#f00,color:#fff

nothingness --errors--> errors["factory-sensors "]
functions -.apply-functions.-> apply-functions["??"]
vector-functions --matrices-arrays--> matrices-arrays["??"]
style matrices-arrays fill:#f00,color:#fff

vector-functions -.apply-functions.-> apply-functions["??"]
style apply-functions fill:#f00,color:#fff

lists --name-attribute--> name-attribute["??"]
style name-attribute fill:#f00,color:#fff

lists --dataframes--> dataframes["??"]
style dataframes fill:#f00,color:#fff

matrices-arrays -.dataframes.-> dataframes
dataframes -.factors.-> factors["??"]
style factors fill:#f00,color:#fff
```

This isn't quite as tangled as it may appear.

## Some future concepts to be slotted in

```mermaid
graph TD
    
todo(("TODO")) --> classes
todo --> pipes
todo --> macros
todo --> raw-type
todo --> environments
```