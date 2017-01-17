context("test retweetCount")

test_that("tetweetCount sum 2012", {
  # compare sum of retweets 2012
  load("../../data/ismb2012.RData")
  rtCount12 <- retweetCount(ismb12)
  result <- sum(rtCount12$countRT)
  result
  expect_equal(result, 814)
})


test_that("tetweetCount sum 2014", {
  # compare sum of retweets 2014
  load("../../data/ismb2014.RData")
  rtCount14 <- retweetCount(ismb14)
  result <- sum(rtCount14$countRT)
  cat(result)
  expect_equal(result, 1944)
})
