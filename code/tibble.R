Sys.setenv("~/R/library1")

library("tibble")
animal <- rep(c("sheep", "pig"), c(3, 3))
year <- rep(2019:2021, 2)
healthy <- c(rep(TRUE, 5), FALSE)
my_tibble <- tibble(animal, year, healthy)
my_tibble
