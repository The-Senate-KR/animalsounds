## code to prepare `farm_animals` dataset goes here

animals <- c("cow", "sheep", "dog", "cat")
sounds <- c("moo", "baa", "woof", "meow")

farm_animals <- cbind(animals, sounds)

usethis::use_data(farm_animals, overwrite = TRUE)
