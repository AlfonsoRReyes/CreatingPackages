context("totalRT")

test_that("totalRT sum all", {
  # compare sum ot total retweets
  load("../../data/ismb2012.RData")
  rtCount12 <- retweetCount(ismb12)
  rtTot12 <- totalRT(rtCount12, "countRT")
  result <- sum(rtTot12$sumRT)
  cat(result)
  expect_equal(result, 814)
})
