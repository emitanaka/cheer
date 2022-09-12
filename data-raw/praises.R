## code to prepare `praises` dataset goes here
praises <- data.frame(words = c(
  "exceptional",
  "remarkable",
  "extraordinary",
  "delightful",
  "wonderful",
  "fantastic",
  "phenomenal",
  "brilliant",
  "astonishing",
  "splendid"
))

usethis::use_data(praises, overwrite = TRUE)
