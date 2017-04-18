context("test tweetCounts")

test_that("tweetCounts dim 2012", {
  load("../../data/ismb2012.RData")
  counts2012 <- tweetCounts(ismb12)
  dims <- dim(counts2012)
  expected.rows <- 393
  expected.columns <- 4
  expect_equal(dims[1], expected.rows)
  expect_equal(dims[2], expected.columns)
  })

test_that("tweetCounts dim 2014", {
  load("../../data/ismb2014.RData")
  counts2014 <- tweetCounts(ismb14)
  dims <- dim(counts2014)
  expected.rows <- 693
  expected.columns <- 4
  expect_equal(dims[1], expected.rows)
  expect_equal(dims[2], expected.columns)
})

test_that("tweetCounts class", {
  load("../../data/ismb2012.RData")
  load("../../data/ismb2014.RData")
  counts2012 <- tweetCounts(ismb12)
  counts2014 <- tweetCounts(ismb14)
  expect_equal(class(counts2012), 'data.frame')
  expect_equal(class(counts2014), 'data.frame')
})

