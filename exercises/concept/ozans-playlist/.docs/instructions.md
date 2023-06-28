# Instructions

Ozan is putting together a playlist for an upcoming roadtrip. He doesn"t want to hear the same track more than once, but the playlist has gotten so long that he"s having trouble remembering which tracks have already been added.

<!-- The API for Ozan"s music player only knows how to work with arrays, so he attempts to write some code that uses `Array.indexOf()` to check for the presence of a track before adding it to the playlist. Unfortunately, his program takes much too long to execute. He needs your help!

Coming to Ozan"s aid, you are astonished to find that his playlist contains _half a million_ tracks. Perhaps you know of a different data structure that will allow you to manipulate the playlist more efficiently? -->

## 1. Remove duplicate tracks

Implement the `remove_duplicates` function, which takes a playlist as a _parameter_ and _returns_ a new playlist where all the tracks are unique.

```R
> playlist <- c(
  "Court and Spark - Joni Mitchell",
  "Big Yellow Taxi - Joni Mitchell",
  "Court and Spark - Joni Mitchell"
)

> remove_duplicates(playlist)
[1] "Court and Spark - Joni Mitchell" "Big Yellow Taxi - Joni Mitchell"
```

## 2. Check whether a track has already been added

Implement the `has_track` function, which takes a playlist and a track as _parameters_ and _returns_ a boolean that indicates whether the playlist contains the track.

```R
> playlist <- c(
  "The Fashion Show - Grace Jones",
  "Dr. Funkenstein - Parliament"
)

> has_track(playlist, "Dr. Funkenstein - Parliament")
[1] TRUE

> has_track(playlist, "Walking in the Rain - Grace Jones")
[1] FALSE
```

## 3. Add tracks

Implement the `add_tracks` function, which takes a playlist and a vector of one or more tracks as _parameters_ and _returns_ a new playlist that includes the tracks.

```R
> playlist <- c("Selma - Bijelo Dugme")

> playlist <- add_tracks(playlist, "Atomic Dog - George Clinton")
> playlist
[1] "Selma - Bijelo Dugme"   "Atomic Dog - George Clinton"

> add_tracks(playlist, "Selma - Bijelo Dugme")
[1] "Selma - Bijelo Dugme"   "Atomic Dog - George Clinton"

> add_tracks(playlist, c("The Chain - Fleetwood Mac", "Selma - Bijelo Dugme"))
[1] "Selma - Bijelo Dugme"   "Atomic Dog - George Clinton" "The Chain - Fleetwood Mac"  

```

## 4. Delete tracks

Implement the `delete_tracks` function, which takes a playlist and one or more tracks as _parameters_ and _returns_ a new playlist that does not include the tracks.

```R
> playlist <- c(
  "The Treasure - Fra Lippo Lippi",
  "After the Fall - Klaus Nomi"
)

> playlist <- delete_tracks(playlist, "The Treasure - Fra Lippo Lippi")
> playlist
[1] "After the Fall - Klaus Nomi"

> delete_tracks(playlist, "I Feel the Magic - Belinda Carlisle")
[1] "After the Fall - Klaus Nomi"
```
