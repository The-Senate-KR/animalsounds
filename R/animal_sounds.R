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
animal_sounds <- function(animal = NULL, sound = NULL){
  check_arg(animal)
  check_arg(sound)
  if(!is.null(animal) & !is.null(sound)){
    paste0("The ", animal, " says ", sound, "!")
  }
  else if(!is.null(animal)){
    paste0("The ", animal, " makes no sound.")
  }
  else if(!is.null(sound)){
    paste0("Nothing goes ", sound, ".")
  }
  else{
    paste0("Nothing makes no sound.")
  }
}

check_arg <- function(arg, n = 1){
  if(!rlang::is_character(arg, n = n) & !is.null(arg)){
    cli::cli_abort(
      c("{.var {rlang::caller_arg(arg)}} must be a single string!", # {rlang::caller_arg(arg)} - fetches the name of the actual variable that takes arg's place
        "i" = "It was {.type {arg}} of length {length(arg)} instead.",
        "i" = "You typed {arg}"),
      class = "error_not_single_string",
      call = rlang::caller_env() # takes the function that called check_arg
    )
  }
}
