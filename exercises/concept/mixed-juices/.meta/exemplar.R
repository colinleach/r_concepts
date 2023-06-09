time_to_mix_juice <- function(juice) {
  switch(juice,
    "Pure Strawberry Joy" = 0.5,
    "Energizer" = ,
    "Green Garden" = 1.5,
    "Tropical Island" = 3,
    "All or Nothing" = 5,
    2.5
  )
}

wedges_from_lime <- function(size) {
  switch(size,
    "small" = 6,
    "medium" = 8,
    "large" = 10
  )
}

limes_to_cut <- function(needed, limes) {
  limes_cut <- 0
  while (needed > 0 && length(limes) > 0) {
    needed <- needed - wedges_from_lime(limes[1])
    limes <- limes[-1]
    limes_cut <- limes_cut + 1
  }
  limes_cut
}

# Doing this without loops is possible, but edge cases are a complication
# limes_to_cut <- function(needed, limes) {
#   if (needed == 0 || length(limes) == 0) {
#     return(0)
#   }
#   wedges <- cumsum(unlist(lapply(limes, wedges_from_lime)))
#   ifelse(tail(wedges, n = 1) >= needed,
#     length(wedges[wedges < needed]) + 1,
#     length(limes)
#   )
# }

remaining_orders <- function(time_left, orders) {
  while (time_left > 0 && length(orders) > 0) {
    time_left <- time_left - time_to_mix_juice(orders[1])
    orders <- orders[-1]
  }
  orders
}
