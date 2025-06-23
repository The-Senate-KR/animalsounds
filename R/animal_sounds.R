#' Check Animal Sounds
#'
#' A function which allows you to vibe out whether various animals make a sound of your choice. This relies upon you having a vague awareness of what each animal sounds like. Makes use of the [base::paste0()] function to put _everything_ together (it's **basically** a wrapper).
#'
#' @param animal The animal that you're trying to work the sound out for.
#' @param sound The sound you want to check against the animal.
#'
#' @returns Returns a sentence to the effect of "The cow says moo!"
#' @export
#'
#' @examples animal_sounds("cow", "moo")
animal_sounds <- function(animal, sound){
  if(!rlang::is_character(animal, n = 1)){
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.")
    )
  }
  if(!rlang::is_character(sound, n = 1)){
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.")
    )
  }
  paste0("The ", animal, " says ", sound, "!")
}
