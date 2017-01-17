context("test tweetRank")

test_that("tweetRank sum and length 2012", {
  # test sum and length for 2012
  load("../../data/ismb2012.RData")
  counts2012 <- tweetCounts(ismb12)
  counts2012$rank <- tweetRank(counts2012$total)
  expect_equal(sum(counts2012$rank), 77421)
  expect_equal(length(counts2012$rank), 393)
})

test_that("tweetRank sum and length 2014", {
  # test sum and length for 2014
  load("../../data/ismb2014.RData")
  counts2014 <- tweetCounts(ismb14)
  counts2014$rank <- tweetRank(counts2014$total)
  expect_equal(sum(counts2014$rank), 240471)
  expect_equal(length(counts2014$rank), 693)
})
