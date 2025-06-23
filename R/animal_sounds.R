#' Check Animal Sounds
#'
#' A function which allows you to vibe out whether various animals make a sound of your choice. This relies upon you having a vague awareness of what each animal sounds like.
#'
#' @param animal The animal that you're trying to work the sound out for.
#' @param sound The sound you want to check against the animal.
#'
#' @returns Returns a sentence to the effect of "The cow says moo!"
#' @export
#'
#' @examples animal_sounds("cow", "moo")
animal_sounds <- function(animal, sound){
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " says ", sound, "!")
}
