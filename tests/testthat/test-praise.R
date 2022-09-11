test_that("praise works", {
  library(stringr)
  expect_true(str_detect(praise_me(), "^You are [a-z]+!$"))
  expect_true(str_detect(praise_someone(), "^[A-Z][a-z]+!$"))
  expect_true(str_detect(
    praise_someone(who = "Emi"),
    "^Emi is [a-z]+!$"
  ))
})
