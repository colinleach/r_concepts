remove_duplicates <- function(playlist) {
  unique(playlist)
}

has_track <- function(playlist, track) {
  track %in% playlist
}

add_tracks <- function(playlist, tracks) {
  union(playlist, tracks)
}

delete_tracks <- function(playlist, tracks) {
  setdiff(playlist, intersect(playlist, tracks))
}
